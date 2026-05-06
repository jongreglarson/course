#!/usr/bin/env python3
"""
generate_lineage.py

Generates a self-contained static HTML file at docs/column_lineage.html
that renders an interactive column-level lineage graph for the Airbnb dbt project.
Uses vis.js (loaded from CDN) with a hierarchical left-to-right layout.
"""

import json
import os

# ---------------------------------------------------------------------------
# 1. Lineage data
# ---------------------------------------------------------------------------

# Layer color coding
LAYER_COLORS = {
    "raw":      {"background": "#94a3b8", "border": "#64748b", "highlight_bg": "#cbd5e1", "highlight_border": "#94a3b8"},
    "staging":  {"background": "#60a5fa", "border": "#3b82f6", "highlight_bg": "#93c5fd", "highlight_border": "#60a5fa"},
    "dim":      {"background": "#34d399", "border": "#10b981", "highlight_bg": "#6ee7b7", "highlight_border": "#34d399"},
    "fct":      {"background": "#fb923c", "border": "#f97316", "highlight_bg": "#fdba74", "highlight_border": "#fb923c"},
    "mart":     {"background": "#c084fc", "border": "#a855f7", "highlight_bg": "#d8b4fe", "highlight_border": "#c084fc"},
}

def get_layer(model_name):
    if model_name.startswith("raw_"):
        return "raw"
    elif model_name.startswith("src_"):
        return "staging"
    elif model_name.startswith("dim_"):
        return "dim"
    elif model_name.startswith("fct_"):
        return "fct"
    elif model_name.startswith("mart_"):
        return "mart"
    return "raw"

# All columns per model (defines nodes)
MODEL_COLUMNS = {
    "raw_hosts":              ["id", "name", "is_superhost", "created_at", "updated_at"],
    "raw_listings":           ["id", "name", "listing_url", "room_type", "minimum_nights", "host_id", "price", "created_at", "updated_at"],
    "raw_reviews":            ["listing_id", "date", "reviewer_name", "comments", "sentiment"],
    "src_hosts":              ["host_id", "host_name", "is_superhost", "created_at", "updated_at"],
    "src_listings":           ["listing_id", "listing_name", "listing_url", "room_type", "minimum_nights", "host_id", "price_str", "created_at", "updated_at"],
    "src_reviews":            ["listing_id", "review_date", "reviewer_name", "review_text", "review_sentiment", "is_lycanthrope"],
    "dim_hosts_cleansed":     ["host_id", "host_name", "is_superhost", "created_at", "updated_at"],
    "dim_listings_cleansed":  ["listing_id", "listing_name", "room_type", "minimum_nights", "host_id", "price", "created_at", "updated_at"],
    "dim_listings_w_hosts":   ["listing_id", "listing_name", "room_type", "minimum_nights", "price", "host_id", "host_name", "host_is_superhost", "created_at", "updated_at"],
    "fct_reviews":            ["review_id", "listing_id", "review_date", "reviewer_name", "review_text", "review_sentiment", "is_lycanthrope"],
    "mart_fullmoon_reviews":  ["review_id", "listing_id", "review_date", "reviewer_name", "review_text", "review_sentiment", "is_lycanthrope", "is_full_moon"],
}

# Edges: list of (upstream_model.column, downstream_model.column)
EDGES = [
    # raw_hosts → src_hosts
    ("raw_hosts.id",           "src_hosts.host_id"),
    ("raw_hosts.name",         "src_hosts.host_name"),
    ("raw_hosts.is_superhost", "src_hosts.is_superhost"),
    ("raw_hosts.created_at",   "src_hosts.created_at"),
    ("raw_hosts.updated_at",   "src_hosts.updated_at"),

    # raw_listings → src_listings
    ("raw_listings.id",             "src_listings.listing_id"),
    ("raw_listings.name",           "src_listings.listing_name"),
    ("raw_listings.listing_url",    "src_listings.listing_url"),
    ("raw_listings.room_type",      "src_listings.room_type"),
    ("raw_listings.minimum_nights", "src_listings.minimum_nights"),
    ("raw_listings.host_id",        "src_listings.host_id"),
    ("raw_listings.price",          "src_listings.price_str"),
    ("raw_listings.created_at",     "src_listings.created_at"),
    ("raw_listings.updated_at",     "src_listings.updated_at"),

    # raw_reviews → src_reviews
    ("raw_reviews.listing_id",   "src_reviews.listing_id"),
    ("raw_reviews.date",         "src_reviews.review_date"),
    ("raw_reviews.reviewer_name","src_reviews.reviewer_name"),
    ("raw_reviews.comments",     "src_reviews.review_text"),
    ("raw_reviews.sentiment",    "src_reviews.review_sentiment"),
    # is_lycanthrope is computed — no upstream edge

    # src_hosts → dim_hosts_cleansed
    ("src_hosts.host_id",      "dim_hosts_cleansed.host_id"),
    ("src_hosts.host_name",    "dim_hosts_cleansed.host_name"),
    ("src_hosts.is_superhost", "dim_hosts_cleansed.is_superhost"),
    ("src_hosts.created_at",   "dim_hosts_cleansed.created_at"),
    ("src_hosts.updated_at",   "dim_hosts_cleansed.updated_at"),

    # src_listings → dim_listings_cleansed
    ("src_listings.listing_id",      "dim_listings_cleansed.listing_id"),
    ("src_listings.listing_name",    "dim_listings_cleansed.listing_name"),
    ("src_listings.room_type",       "dim_listings_cleansed.room_type"),
    ("src_listings.minimum_nights",  "dim_listings_cleansed.minimum_nights"),
    ("src_listings.host_id",         "dim_listings_cleansed.host_id"),
    ("src_listings.price_str",       "dim_listings_cleansed.price"),
    ("src_listings.created_at",      "dim_listings_cleansed.created_at"),
    ("src_listings.updated_at",      "dim_listings_cleansed.updated_at"),

    # dim_listings_cleansed + dim_hosts_cleansed → dim_listings_w_hosts
    ("dim_listings_cleansed.listing_id",    "dim_listings_w_hosts.listing_id"),
    ("dim_listings_cleansed.listing_name",  "dim_listings_w_hosts.listing_name"),
    ("dim_listings_cleansed.room_type",     "dim_listings_w_hosts.room_type"),
    ("dim_listings_cleansed.minimum_nights","dim_listings_w_hosts.minimum_nights"),
    ("dim_listings_cleansed.price",         "dim_listings_w_hosts.price"),
    ("dim_listings_cleansed.host_id",       "dim_listings_w_hosts.host_id"),
    ("dim_hosts_cleansed.host_name",        "dim_listings_w_hosts.host_name"),
    ("dim_hosts_cleansed.is_superhost",     "dim_listings_w_hosts.host_is_superhost"),
    ("dim_listings_cleansed.created_at",    "dim_listings_w_hosts.created_at"),
    ("dim_listings_cleansed.updated_at",    "dim_listings_w_hosts.updated_at"),
    ("dim_hosts_cleansed.updated_at",       "dim_listings_w_hosts.updated_at"),

    # src_reviews → fct_reviews
    ("src_reviews.listing_id",      "fct_reviews.listing_id"),
    ("src_reviews.review_date",     "fct_reviews.review_date"),
    ("src_reviews.reviewer_name",   "fct_reviews.reviewer_name"),
    ("src_reviews.review_text",     "fct_reviews.review_text"),
    ("src_reviews.review_sentiment","fct_reviews.review_sentiment"),
    ("src_reviews.is_lycanthrope",  "fct_reviews.is_lycanthrope"),
    # review_id is surrogate key — no upstream edge

    # fct_reviews → mart_fullmoon_reviews
    ("fct_reviews.review_id",        "mart_fullmoon_reviews.review_id"),
    ("fct_reviews.listing_id",       "mart_fullmoon_reviews.listing_id"),
    ("fct_reviews.review_date",      "mart_fullmoon_reviews.review_date"),
    ("fct_reviews.reviewer_name",    "mart_fullmoon_reviews.reviewer_name"),
    ("fct_reviews.review_text",      "mart_fullmoon_reviews.review_text"),
    ("fct_reviews.review_sentiment", "mart_fullmoon_reviews.review_sentiment"),
    ("fct_reviews.is_lycanthrope",   "mart_fullmoon_reviews.is_lycanthrope"),
    # is_full_moon is computed from seed join — no upstream column edge
]

# ---------------------------------------------------------------------------
# 2. Build vis.js node/edge data structures
# ---------------------------------------------------------------------------

def build_vis_data():
    nodes = []
    node_id_map = {}  # "model.column" -> integer id
    current_id = 1

    for model, columns in MODEL_COLUMNS.items():
        layer = get_layer(model)
        colors = LAYER_COLORS[layer]
        for col in columns:
            key = f"{model}.{col}"
            node_id_map[key] = current_id
            nodes.append({
                "id": current_id,
                "label": f"{model}\n.{col}",
                "title": f"<b>{model}</b><br/><code>{col}</code><br/><i>Layer: {layer}</i>",
                "color": {
                    "background": colors["background"],
                    "border": colors["border"],
                    "highlight": {
                        "background": colors["highlight_bg"],
                        "border": colors["highlight_border"],
                    },
                    "hover": {
                        "background": colors["highlight_bg"],
                        "border": colors["highlight_border"],
                    },
                },
                "font": {"color": "#1e293b", "size": 11, "face": "monospace"},
                "shape": "box",
                "margin": 6,
                "layer": layer,
                "model": model,
                "column": col,
            })
            current_id += 1

    edges = []
    edge_id = 1
    for upstream, downstream in EDGES:
        from_id = node_id_map.get(upstream)
        to_id = node_id_map.get(downstream)
        if from_id is None:
            print(f"WARNING: upstream node not found: {upstream}")
            continue
        if to_id is None:
            print(f"WARNING: downstream node not found: {downstream}")
            continue
        edges.append({
            "id": edge_id,
            "from": from_id,
            "to": to_id,
            "arrows": "to",
            "color": {"color": "#475569", "highlight": "#f8fafc", "hover": "#94a3b8"},
            "width": 1.5,
            "smooth": {"type": "cubicBezier", "forceDirection": "horizontal", "roundness": 0.4},
        })
        edge_id += 1

    return nodes, edges, node_id_map

# ---------------------------------------------------------------------------
# 3. HTML template
# ---------------------------------------------------------------------------

HTML_TEMPLATE = """\
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Column-Level Lineage — Airbnb dbt Project</title>
  <script src="https://unpkg.com/vis-network/standalone/umd/vis-network.min.js"></script>
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      background: #0f172a;
      color: #e2e8f0;
      font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
      display: flex;
      flex-direction: column;
      height: 100vh;
      overflow: hidden;
    }

    /* ---- Header ---- */
    header {
      background: #1e293b;
      border-bottom: 1px solid #334155;
      padding: 12px 20px;
      display: flex;
      align-items: center;
      gap: 16px;
      flex-shrink: 0;
      flex-wrap: wrap;
    }
    header h1 {
      font-size: 15px;
      font-weight: 600;
      color: #f1f5f9;
      white-space: nowrap;
    }
    header .subtitle {
      font-size: 12px;
      color: #94a3b8;
      white-space: nowrap;
    }

    /* ---- Search ---- */
    .search-wrap {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-left: auto;
      flex-shrink: 0;
    }
    .search-wrap label {
      font-size: 12px;
      color: #94a3b8;
      white-space: nowrap;
    }
    #searchBox {
      background: #0f172a;
      border: 1px solid #334155;
      border-radius: 6px;
      color: #f1f5f9;
      font-size: 13px;
      padding: 5px 10px;
      width: 220px;
      outline: none;
      transition: border-color 0.15s;
    }
    #searchBox:focus { border-color: #60a5fa; }
    #clearBtn {
      background: #334155;
      border: none;
      border-radius: 6px;
      color: #94a3b8;
      cursor: pointer;
      font-size: 13px;
      padding: 5px 10px;
      transition: background 0.15s, color 0.15s;
    }
    #clearBtn:hover { background: #475569; color: #f1f5f9; }

    /* ---- Legend ---- */
    .legend {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
      flex-shrink: 0;
    }
    .legend-title {
      font-size: 11px;
      color: #64748b;
      text-transform: uppercase;
      letter-spacing: 0.05em;
    }
    .legend-item {
      display: flex;
      align-items: center;
      gap: 5px;
      font-size: 12px;
      color: #cbd5e1;
      cursor: pointer;
      padding: 3px 7px;
      border-radius: 4px;
      border: 1px solid transparent;
      transition: border-color 0.15s;
    }
    .legend-item:hover { border-color: #475569; }
    .legend-item.active { border-color: #60a5fa; }
    .legend-dot {
      display: inline-block;
      width: 14px;
      height: 14px;
      border-radius: 3px;
      flex-shrink: 0;
    }

    /* ---- Toolbar ---- */
    .toolbar {
      background: #1e293b;
      border-bottom: 1px solid #334155;
      padding: 6px 20px;
      display: flex;
      align-items: center;
      gap: 8px;
      flex-shrink: 0;
      flex-wrap: wrap;
    }
    .toolbar-btn {
      background: #334155;
      border: 1px solid #475569;
      border-radius: 5px;
      color: #cbd5e1;
      cursor: pointer;
      font-size: 12px;
      padding: 4px 12px;
      transition: background 0.15s, color 0.15s;
    }
    .toolbar-btn:hover { background: #475569; color: #f1f5f9; }
    .toolbar-sep { width: 1px; height: 18px; background: #334155; margin: 0 4px; }
    .match-count {
      font-size: 12px;
      color: #64748b;
      margin-left: 4px;
    }
    .trace-label {
      font-size: 12px;
      color: #94a3b8;
      white-space: nowrap;
    }
    #traceSelect {
      background: #0f172a;
      border: 1px solid #334155;
      border-radius: 5px;
      color: #f1f5f9;
      font-size: 12px;
      padding: 4px 8px;
      max-width: 280px;
      cursor: pointer;
      outline: none;
    }
    #traceSelect:focus { border-color: #60a5fa; }
    #traceSelect option { background: #1e293b; }

    /* ---- Graph ---- */
    #network {
      background: #0f172a;
      position: relative;
    }

    /* ---- Status bar ---- */
    #statusBar {
      background: #1e293b;
      border-top: 1px solid #334155;
      padding: 4px 20px;
      font-size: 11px;
      color: #64748b;
      flex-shrink: 0;
      display: flex;
      gap: 20px;
    }

    /* ---- Mobile ---- */
    @media (max-width: 640px) {
      header {
        flex-direction: column;
        align-items: flex-start;
        gap: 8px;
        padding: 8px 12px;
      }
      header h1 { font-size: 13px; }
      .legend {
        gap: 6px;
        width: 100%;
      }
      .legend-item {
        font-size: 11px;
        padding: 2px 5px;
      }
      .legend-dot { width: 10px; height: 10px; }
      .search-wrap {
        margin-left: 0;
        width: 100%;
      }
      #searchBox { width: 100%; flex: 1; min-width: 0; }
      .toolbar { padding: 6px 12px; gap: 6px; }
      .toolbar-btn { font-size: 11px; padding: 4px 8px; }
      .toolbar-sep { display: none; }
      .trace-label { display: none; }
      #traceSelect { max-width: 100%; width: 160px; font-size: 11px; }
    }

    /* ---- Tooltip override (vis uses title attr, we style the vis tooltip) ---- */
    .vis-tooltip {
      background: #1e293b !important;
      border: 1px solid #334155 !important;
      color: #e2e8f0 !important;
      border-radius: 6px !important;
      font-size: 12px !important;
      padding: 8px 12px !important;
      max-width: 260px;
    }
  </style>
</head>
<body>

<header>
  <div>
    <h1>Column-Level Lineage — Airbnb dbt Project</h1>
    <div class="subtitle">__NODE_COUNT__ columns &nbsp;·&nbsp; __EDGE_COUNT__ edges &nbsp;·&nbsp; click a node to highlight connections</div>
  </div>

  <div class="legend">
    <span class="legend-title">Layer</span>
    <span class="legend-item" data-layer="raw"     onclick="filterLayer(this)"><span class="legend-dot" style="background:#94a3b8"></span>Sources (raw)</span>
    <span class="legend-item" data-layer="staging" onclick="filterLayer(this)"><span class="legend-dot" style="background:#60a5fa"></span>Staging (src_*)</span>
    <span class="legend-item" data-layer="dim"     onclick="filterLayer(this)"><span class="legend-dot" style="background:#34d399"></span>Dimensions (dim_*)</span>
    <span class="legend-item" data-layer="fct"     onclick="filterLayer(this)"><span class="legend-dot" style="background:#fb923c"></span>Facts (fct_*)</span>
    <span class="legend-item" data-layer="mart"    onclick="filterLayer(this)"><span class="legend-dot" style="background:#c084fc"></span>Marts (mart_*)</span>
  </div>

  <div class="search-wrap">
    <label for="searchBox">Search</label>
    <input id="searchBox" type="text" placeholder="model or column name…" oninput="onSearch()" />
    <button id="clearBtn" onclick="clearSearch()">Clear</button>
    <span class="match-count" id="matchCount"></span>
  </div>
</header>

<div class="toolbar">
  <button class="toolbar-btn" onclick="network.fit()">Fit All</button>
  <button class="toolbar-btn" onclick="resetHighlight()">Reset</button>
  <div class="toolbar-sep"></div>
  <button class="toolbar-btn" onclick="network.moveTo({scale: network.getScale() * 1.25})">Zoom +</button>
  <button class="toolbar-btn" onclick="network.moveTo({scale: network.getScale() * 0.8})">Zoom −</button>
  <div class="toolbar-sep"></div>
  <button class="toolbar-btn" id="togglePhysicsBtn" onclick="togglePhysics()">Physics: Off</button>
  <button class="toolbar-btn" onclick="exportPNG()">Export PNG</button>
  <div class="toolbar-sep"></div>
  <span class="trace-label">Trace full lineage:</span>
  <select id="traceSelect" onchange="onTraceSelect()">
    <option value="">— pick a column —</option>
  </select>
  <button class="toolbar-btn" onclick="clearTrace()">Clear</button>
</div>

<div id="network"></div>

<div id="statusBar">
  <span id="statusMsg">Ready — click a node to highlight its lineage path</span>
  <span style="margin-left:auto" id="zoomLevel"></span>
</div>

<script>
// Size the canvas explicitly so vis.js gets a non-zero container height
function sizeCanvas() {
  const header  = document.querySelector('header').offsetHeight;
  const toolbar = document.querySelector('.toolbar').offsetHeight;
  const status  = document.getElementById('statusBar').offsetHeight;
  document.getElementById('network').style.height =
    (window.innerHeight - header - toolbar - status) + 'px';
}
sizeCanvas();
window.addEventListener('resize', () => { sizeCanvas(); if (typeof network !== 'undefined') network.fit(); });
// Re-measure after fonts/flexbox settle on mobile
setTimeout(sizeCanvas, 100);

// ---- Data ----
const nodesData = __NODES_JSON__;
const edgesData = __EDGES_JSON__;

// Build adjacency lookups
const edgeFrom = {};  // nodeId -> [nodeId, ...]  (outgoing)
const edgeTo   = {};  // nodeId -> [nodeId, ...]  (incoming)
edgesData.forEach(e => {
  if (!edgeFrom[e.from]) edgeFrom[e.from] = [];
  edgeFrom[e.from].push(e.to);
  if (!edgeTo[e.to]) edgeTo[e.to] = [];
  edgeTo[e.to].push(e.from);
});

// ---- vis.js setup ----
const container = document.getElementById('network');
const nodes = new vis.DataSet(nodesData);
const edges = new vis.DataSet(edgesData);

const options = {
  layout: {
    hierarchical: {
      enabled: true,
      direction: 'LR',
      sortMethod: 'directed',
      levelSeparation: 240,
      nodeSpacing: 38,
      treeSpacing: 80,
      blockShifting: true,
      edgeMinimization: true,
      parentCentralization: true,
    }
  },
  physics: {
    enabled: false,
    hierarchicalRepulsion: {
      nodeDistance: 120,
      springLength: 100,
    }
  },
  interaction: {
    hover: true,
    tooltipDelay: 150,
    navigationButtons: false,
    keyboard: false,
    zoomView: true,
    dragView: true,
  },
  nodes: {
    borderWidth: 1.5,
    shadow: { enabled: true, color: 'rgba(0,0,0,0.4)', size: 6, x: 2, y: 2 },
  },
  edges: {
    arrows: { to: { enabled: true, scaleFactor: 0.7 } },
    smooth: { type: 'cubicBezier', forceDirection: 'horizontal', roundness: 0.4 },
    color: { color: '#475569', highlight: '#f1f5f9', hover: '#94a3b8' },
    width: 1.5,
  },
};

const network = new vis.Network(container, { nodes, edges }, options);

// Fit after a short delay to ensure layout is complete
setTimeout(() => {
  network.fit({ animation: { duration: 600, easingFunction: 'easeInOutQuad' } });
}, 200);

// Zoom level display
network.on('zoom', () => {
  document.getElementById('zoomLevel').textContent =
    'Zoom: ' + (network.getScale() * 100).toFixed(0) + '%';
});

// ---- BFS full-lineage traversal ----
function bfsUpstream(nodeId) {
  const visited = new Set();
  const queue = [...(edgeTo[nodeId] || [])];
  while (queue.length) {
    const curr = queue.shift();
    if (!visited.has(curr)) {
      visited.add(curr);
      (edgeTo[curr] || []).forEach(p => { if (!visited.has(p)) queue.push(p); });
    }
  }
  return visited;
}

function bfsDownstream(nodeId) {
  const visited = new Set();
  const queue = [...(edgeFrom[nodeId] || [])];
  while (queue.length) {
    const curr = queue.shift();
    if (!visited.has(curr)) {
      visited.add(curr);
      (edgeFrom[curr] || []).forEach(c => { if (!visited.has(c)) queue.push(c); });
    }
  }
  return visited;
}

// ---- Highlight on click (direct neighbors only) ----
let selectedNode = null;
const DIM_OPACITY = 0.1;

// Original colors keyed by node id for restoration after highlight
const originalColors = {};
nodesData.forEach(n => { originalColors[n.id] = n.color; });

function resetHighlight() {
  selectedNode = null;
  document.getElementById('traceSelect').value = '';
  nodes.forEach(n => nodes.update({ id: n.id, opacity: 1.0, color: originalColors[n.id] }));
  edges.forEach(e => edges.update({
    id: e.id, opacity: 1.0, width: 1.5,
    color: { color: '#475569', highlight: '#f1f5f9', hover: '#94a3b8' }
  }));
  document.getElementById('statusMsg').textContent =
    'Ready — click a node to see neighbors, or use Trace to follow the full lineage';
}

network.on('click', params => {
  if (params.nodes.length === 0) { resetHighlight(); return; }
  const clickedId = params.nodes[0];
  if (selectedNode === clickedId) { resetHighlight(); return; }
  selectedNode = clickedId;

  const connectedNodes = new Set([clickedId]);
  const connectedEdges = new Set();
  edgesData.forEach(e => {
    if (e.from === clickedId || e.to === clickedId) {
      connectedNodes.add(e.from);
      connectedNodes.add(e.to);
      connectedEdges.add(e.id);
    }
  });
  nodes.forEach(n => nodes.update({ id: n.id, opacity: connectedNodes.has(n.id) ? 1.0 : DIM_OPACITY }));
  edges.forEach(e => {
    const active = connectedEdges.has(e.id);
    edges.update({
      id: e.id, opacity: active ? 1.0 : 0.05, width: active ? 2.5 : 1,
      color: active
        ? { color: '#f8fafc', highlight: '#f8fafc', hover: '#f8fafc' }
        : { color: '#1e293b', highlight: '#1e293b', hover: '#1e293b' },
    });
  });
  const nd = nodesData.find(n => n.id === clickedId);
  const upCount   = (edgeTo[clickedId]   || []).length;
  const downCount = (edgeFrom[clickedId] || []).length;
  document.getElementById('statusMsg').textContent =
    `Selected: ${nd.model}.${nd.column}  |  ${upCount} direct upstream  ·  ${downCount} direct downstream  (use Trace for full path)`;
}
);

// ---- Full lineage trace ----
function traceFullLineage(nodeId) {
  selectedNode = nodeId;
  const upstream   = bfsUpstream(nodeId);
  const downstream = bfsDownstream(nodeId);

  // Color nodes by role in the lineage
  nodes.forEach(n => {
    if (n.id === nodeId) {
      nodes.update({ id: n.id, opacity: 1.0 });
    } else if (upstream.has(n.id)) {
      nodes.update({ id: n.id, opacity: 1.0 });
    } else if (downstream.has(n.id)) {
      nodes.update({ id: n.id, opacity: 1.0 });
    } else {
      nodes.update({ id: n.id, opacity: DIM_OPACITY });
    }
  });

  // Color edges: upstream path blue, downstream path orange, rest dimmed
  edges.forEach(e => {
    const isUpEdge   = upstream.has(e.from)   && (upstream.has(e.to)   || e.to   === nodeId);
    const isDownEdge = downstream.has(e.to)   && (downstream.has(e.from) || e.from === nodeId);
    if (isUpEdge) {
      edges.update({ id: e.id, opacity: 1.0, width: 2.5, color: { color: '#60a5fa', highlight: '#93c5fd', hover: '#93c5fd' } });
    } else if (isDownEdge) {
      edges.update({ id: e.id, opacity: 1.0, width: 2.5, color: { color: '#fb923c', highlight: '#fdba74', hover: '#fdba74' } });
    } else {
      edges.update({ id: e.id, opacity: 0.04, width: 1, color: { color: '#1e293b', highlight: '#1e293b', hover: '#1e293b' } });
    }
  });

  const nd = nodesData.find(n => n.id === nodeId);
  document.getElementById('statusMsg').textContent =
    `Full lineage of ${nd.model}.${nd.column}  |  ${upstream.size} upstream nodes (blue arrows)  ·  ${downstream.size} downstream nodes (orange arrows)`;

  // Zoom to the lineage subgraph
  const visible = [nodeId, ...upstream, ...downstream];
  network.fit({ nodes: visible, animation: { duration: 500, easingFunction: 'easeInOutQuad' } });
}

function onTraceSelect() {
  const val = document.getElementById('traceSelect').value;
  if (!val) { resetHighlight(); return; }
  resetHighlight();
  traceFullLineage(parseInt(val));
}

function clearTrace() {
  document.getElementById('traceSelect').value = '';
  resetHighlight();
}

// Populate the trace dropdown after data is ready
(function populateTraceSelect() {
  const sel = document.getElementById('traceSelect');
  // Group by model
  const byModel = {};
  nodesData.forEach(n => {
    if (!byModel[n.model]) byModel[n.model] = [];
    byModel[n.model].push(n);
  });
  Object.keys(byModel).sort().forEach(model => {
    const grp = document.createElement('optgroup');
    grp.label = model;
    byModel[model].forEach(n => {
      const opt = document.createElement('option');
      opt.value = n.id;
      opt.textContent = n.column;
      grp.appendChild(opt);
    });
    sel.appendChild(grp);
  });
})();

// ---- Search / filter ----
let activeLayerFilter = null;

function onSearch() {
  const q = document.getElementById('searchBox').value.trim().toLowerCase();
  if (!q) {
    clearSearch();
    return;
  }
  let count = 0;
  const matched = new Set();
  nodesData.forEach(n => {
    const key = (n.model + '.' + n.column).toLowerCase();
    if (key.includes(q)) {
      matched.add(n.id);
      count++;
    }
  });
  nodes.forEach(n => {
    nodes.update({ id: n.id, opacity: matched.has(n.id) ? 1.0 : DIM_OPACITY });
  });
  edges.forEach(e => {
    edges.update({ id: e.id, opacity: (matched.has(e.from) || matched.has(e.to)) ? 0.7 : 0.05 });
  });
  document.getElementById('matchCount').textContent = count + ' match' + (count !== 1 ? 'es' : '');

  // Zoom to matched
  if (matched.size > 0) {
    network.fit({
      nodes: [...matched],
      animation: { duration: 400, easingFunction: 'easeInOutQuad' },
    });
  }
}

function clearSearch() {
  document.getElementById('searchBox').value = '';
  document.getElementById('matchCount').textContent = '';
  activeLayerFilter ? applyLayerFilter(activeLayerFilter) : resetHighlight();
}

// ---- Layer filter (legend click) ----
function filterLayer(el) {
  const layer = el.dataset.layer;
  if (activeLayerFilter === layer) {
    // Toggle off
    activeLayerFilter = null;
    document.querySelectorAll('.legend-item').forEach(i => i.classList.remove('active'));
    resetHighlight();
    return;
  }
  activeLayerFilter = layer;
  document.querySelectorAll('.legend-item').forEach(i => {
    i.classList.toggle('active', i.dataset.layer === layer);
  });
  applyLayerFilter(layer);
}

function applyLayerFilter(layer) {
  const inLayer = new Set();
  nodesData.forEach(n => { if (n.layer === layer) inLayer.add(n.id); });
  nodes.forEach(n => {
    nodes.update({ id: n.id, opacity: inLayer.has(n.id) ? 1.0 : DIM_OPACITY });
  });
  edges.forEach(e => {
    edges.update({ id: e.id, opacity: (inLayer.has(e.from) || inLayer.has(e.to)) ? 0.6 : 0.05 });
  });
}

// ---- Physics toggle ----
let physicsOn = false;
function togglePhysics() {
  physicsOn = !physicsOn;
  network.setOptions({ physics: { enabled: physicsOn } });
  document.getElementById('togglePhysicsBtn').textContent =
    'Physics: ' + (physicsOn ? 'On' : 'Off');
}

// ---- Export PNG ----
function exportPNG() {
  const canvas = container.querySelector('canvas');
  if (!canvas) return;
  const link = document.createElement('a');
  link.download = 'airbnb_column_lineage.png';
  link.href = canvas.toDataURL('image/png');
  link.click();
}

// Keyboard shortcut: Escape to reset
document.addEventListener('keydown', e => {
  if (e.key === 'Escape') {
    clearSearch();
    resetHighlight();
  }
});
</script>
</body>
</html>
"""

# ---------------------------------------------------------------------------
# 4. Generate the HTML
# ---------------------------------------------------------------------------

def generate_html(nodes, edges):
    node_count = len(nodes)
    edge_count = len(edges)

    html = HTML_TEMPLATE
    html = html.replace("__NODES_JSON__", json.dumps(nodes, indent=None))
    html = html.replace("__EDGES_JSON__", json.dumps(edges, indent=None))
    html = html.replace("__NODE_COUNT__", str(node_count))
    html = html.replace("__EDGE_COUNT__", str(edge_count))
    return html


def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    docs_dir = os.path.join(script_dir, "docs")
    os.makedirs(docs_dir, exist_ok=True)

    output_path = os.path.join(docs_dir, "column_lineage.html")

    nodes, edges, _ = build_vis_data()
    html = generate_html(nodes, edges)

    with open(output_path, "w", encoding="utf-8") as f:
        f.write(html)

    print(f"Generated: {output_path}")
    print(f"  Nodes : {len(nodes)}")
    print(f"  Edges : {len(edges)}")


if __name__ == "__main__":
    main()
