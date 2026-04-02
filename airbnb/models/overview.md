{% docs __overview__ %}

# Airbnb Analytics Pipeline

## What this project does

This pipeline turns raw Airbnb operational data into a reliable, tested, analytics-ready layer that answers the questions a short-term rental business actually cares about: Which listings drive the most bookings? How do hosts with Superhost status perform compared to standard hosts? Is guest sentiment trending up or down? Are guests happier or grumpier when they review after a full moon?

The pipeline ingests three raw datasets — listings, hosts, and reviews — cleanses and validates them, joins them into a denormalized analytical layer, and publishes a mart purpose-built for lunar sentiment analysis.

---

## The data

Airbnb operates a two-sided marketplace. On one side are **hosts** who list properties and set their own prices, availability, and minimum stay requirements. On the other are **guests** who browse, book, and leave reviews. Three raw tables capture this:

| Source table | What it contains |
|---|---|
| `raw_listings` | Every property listed on the platform — name, URL, room type, price, minimum nights, and which host owns it |
| `raw_hosts` | Host profiles — name and whether Airbnb has granted them Superhost status |
| `raw_reviews` | Every written guest review — the listing reviewed, the date, the reviewer's name, the review text, and a pre-computed sentiment score |

Raw data lands in the `RAW` schema in Snowflake unchanged. No business logic is applied at ingestion. The dbt pipeline takes it from there.

---

## How the pipeline is structured

The pipeline is organized into four layers, each with a clear and distinct responsibility.

### Staging layer — `src_*`

The staging models are ephemeral — they produce no physical tables. Their only job is to rename raw source fields to consistent, project-wide naming conventions (`id` → `listing_id`, `comments` → `review_text`, etc.) and to isolate the rest of the pipeline from source-side field name changes. If Airbnb renames a column in the raw feed, the fix happens here and nowhere else.

### Dimension layer — `dim_*`

Dimensions are the descriptive attributes of the business — what a listing looks like, who the host is. Two cleansed dimension tables are produced:

- **`dim_listings_cleansed`** applies two data quality rules: it strips the `$` currency symbol from the raw price string and casts it to a numeric, and it corrects any minimum nights values of `0` to `1` so that every listing has a valid booking constraint. This is the authoritative table for listing attributes.

- **`dim_hosts_cleansed`** replaces null host names with `'Anonymous'` so that every host always has a usable display name in reports. This is the authoritative table for host attributes.

- **`dim_listings_w_hosts`** joins listings and hosts into a single denormalized table. Most analyses need both listing and host context together, and this model eliminates the need to join every time. The `updated_at` timestamp is computed as the later of the listing's or host's last update, so the record always reflects the most recent relevant change.

### Fact layer — `fct_*`

Facts capture what happened — transactions, events, and interactions over time.

- **`fct_reviews`** is the core fact table. Each row is one guest review. A surrogate key is generated from the combination of listing, date, reviewer, and text to uniquely identify each review. Reviews with no written content are excluded. The table loads **incrementally** — on each run, only reviews newer than the current maximum review date are appended, keeping run times fast as the dataset grows.

### Mart layer — `mart_*`

Marts are built for specific analytical questions, shaped exactly as needed by the consumer.

- **`mart_fullmoon_reviews`** enriches every review with a flag indicating whether it was written the day after a full moon. This model exists to test the hypothesis that lunar cycles influence guest mood and therefore review sentiment. It joins `fct_reviews` to the `seed_full_moon_dates` seed table on a one-day offset — a review written on the day after a full moon is labeled `'full moon'`, all others `'not full moon'`. If the hypothesis holds, you'd expect to see a measurable shift in sentiment distribution on full moon days.

---

## Historical tracking with snapshots

In addition to the standard model layers, the pipeline maintains **Slowly Changing Dimension (SCD Type 2)** snapshots of both the hosts and listings raw tables:

- `scd_raw_hosts` — tracks every change to a host's profile over time, including when Superhost status was granted or revoked
- `scd_raw_listings` — tracks every change to a listing's price, room type, or minimum nights over time

These snapshots make it possible to answer historical questions: "What was this listing's price in Q3 last year?" or "When did this host become a Superhost?"

---

## Data quality and trust

The pipeline has 78 tests across all models covering:

- **Primary keys** — every model's primary key is tested for uniqueness and nullability
- **Foreign keys** — every relationship between models is validated at run time
- **Accepted values** — categorical fields like `room_type`, `is_superhost`, `review_sentiment`, and `is_full_moon` are constrained to their known valid values
- **Not null** — every field that must have a value is explicitly tested
- **Positive values** — price and minimum_nights are validated to be greater than zero
- **Statistical bounds** — the 99th percentile price is expected to fall between \$50 and \$500; values above \$5,000 trigger a warning
- **Row counts** — `dim_listings_w_hosts` is validated to contain exactly the same number of rows as the source listings table
- **Source freshness** — the reviews source raises a warning if data is more than 1 hour old, and an error if more than 24 hours old
- **Cross-model consistency** — a custom test verifies that no review was written before the listing it reviews was created

All test failures are stored in the `test_results` schema for audit and investigation. Every model run is logged to an `audit_log` table.

---

## Who can use the data

Two Snowflake roles are granted access by the pipeline:

| Role | Access | Intended for |
|---|---|---|
| `TRANSFORM` | Read + write | dbt pipeline, data engineers |
| `reporter` | Read-only select | BI tools, analysts, dashboards |

The `reporter` role is designed for tools like Looker, Tableau, or Mode. Point them at the `dim_*`, `fct_*`, and `mart_*` models.

---

## Input data schema

![input schema](assets/input_schema.png)

{% enddocs %}
