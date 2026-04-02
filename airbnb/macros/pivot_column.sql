{#
    pivot_column(source_model, group_by_col, pivot_col, agg_func, agg_col, values)

    Generates a pivot query that turns the distinct values of a categorical
    column into separate aggregate columns. Eliminates the need to hard-code
    CASE WHEN blocks when the set of values is known or can be discovered at
    compile time.

    Two modes of operation:

      Explicit values — pass a list to the `values` argument. Safe for
        production models where you want stable, predictable column names
        regardless of what's in the data at any given run.

      Auto-discover — omit `values` (or pass none=[]) and the macro will
        query the source model at compile time to find distinct non-null
        values. Useful during development or for models where the value
        set is fixed by upstream accepted_values tests.

    Arguments:
        source_model  (required) — the model to pivot, passed as a ref() or
                                    source() call, e.g. ref('fct_reviews')
        group_by_col  (required) — column to group rows by in the output,
                                    e.g. 'listing_id'
        pivot_col     (required) — categorical column whose distinct values
                                    become output columns, e.g. 'review_sentiment'
        agg_func      (optional) — SQL aggregate function. Default: 'COUNT'
        agg_col       (optional) — column to aggregate inside each CASE WHEN.
                                    Default: '1' (works naturally with COUNT)
        values        (optional) — explicit list of values to pivot on.
                                    Default: [] (auto-discover from data)

    Returns:
        A complete SELECT ... GROUP BY statement.

    Example — count reviews per sentiment per listing (auto-discover values):

        {{ pivot_column(
            source_model = ref('fct_reviews'),
            group_by_col = 'listing_id',
            pivot_col    = 'review_sentiment'
        ) }}

        Compiles to (assuming sentiments: negative, neutral, positive):

        SELECT
            listing_id,
            COUNT(CASE WHEN review_sentiment = 'negative' THEN 1 ELSE NULL END) AS negative,
            COUNT(CASE WHEN review_sentiment = 'neutral'  THEN 1 ELSE NULL END) AS neutral,
            COUNT(CASE WHEN review_sentiment = 'positive' THEN 1 ELSE NULL END) AS positive
        FROM <fct_reviews>
        GROUP BY listing_id

    Example — sum price per room type per host (explicit values):

        {{ pivot_column(
            source_model = ref('dim_listings_w_hosts'),
            group_by_col = 'host_id',
            pivot_col    = 'room_type',
            agg_func     = 'SUM',
            agg_col      = 'price',
            values       = ['Entire home/apt', 'Private room', 'Shared room', 'Hotel room']
        ) }}

    Example — full moon vs not, counting reviews per listing:

        {{ pivot_column(
            source_model = ref('mart_fullmoon_reviews'),
            group_by_col = 'listing_id',
            pivot_col    = 'is_full_moon',
            values       = ['full moon', 'not full moon']
        ) }}

    Column naming: output column names are derived from the pivot values by
    lowercasing, replacing spaces and slashes with underscores, and stripping
    special characters. For example:
        'Entire home/apt'  →  entire_home_apt
        'not full moon'    →  not_full_moon
#}

{% macro pivot_column(source_model, group_by_col, pivot_col, agg_func='COUNT', agg_col='1', values=[]) %}

    {#-- Discover distinct values from the model if none provided --#}
    {%- if values | length == 0 -%}

        {%- set discovery_query %}
            SELECT DISTINCT {{ pivot_col }}
            FROM {{ source_model }}
            WHERE {{ pivot_col }} IS NOT NULL
            ORDER BY {{ pivot_col }}
        {%- endset %}

        {%- set results = run_query(discovery_query) -%}

        {%- if execute -%}
            {%- set values = results.columns[0].values() -%}
        {%- else -%}
            {%- set values = [] -%}
        {%- endif -%}

    {%- endif -%}

    {%- if values | length == 0 -%}
        {{ exceptions.raise_compiler_error(
            "pivot_column: no values found for column '" ~ pivot_col ~ "' in " ~ source_model ~ ". "
            ~ "Pass values=[...] explicitly or ensure the source model has data."
        ) }}
    {%- endif -%}

SELECT
    {{ group_by_col }},
    {%- for val in values %}
    {%- set col_name = val | lower | replace(' ', '_') | replace('/', '_') | replace('-', '_') | replace("'", '') %}
    {{ agg_func }}(CASE WHEN {{ pivot_col }} = '{{ val }}' THEN {{ agg_col }} ELSE NULL END) AS {{ col_name }}
    {%- if not loop.last %},{% endif %}
    {%- endfor %}
FROM {{ source_model }}
GROUP BY {{ group_by_col }}

{% endmacro %}
