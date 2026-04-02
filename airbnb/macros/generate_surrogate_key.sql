{#
    generate_surrogate_key(column_names, alias)

    Project wrapper around dbt_utils.generate_surrogate_key that adds two
    things the raw utility doesn't provide:

      1. Compile-time validation — raises a clear error if you pass an empty
         column list, rather than silently producing a hash of nothing.
      2. Self-documenting SQL — emits a comment in the compiled output listing
         the columns that make up the key, so the lineage is visible without
         opening the model source.

    Delegates all hashing and null-handling to dbt_utils.generate_surrogate_key,
    which coalesces each column to an empty string before concatenating and
    hashing with MD5. This means a key generated from all-null inputs is still
    deterministic, though you should test primary key uniqueness to catch cases
    where that matters.

    Arguments:
        column_names  (required) — list of column name strings that together
                                    uniquely identify a row. Order matters:
                                    ['a','b'] and ['b','a'] produce different
                                    hashes.
        alias         (optional) — name for the output column.
                                    Default: 'surrogate_key'

    Returns:
        A SQL expression: <hash> AS <alias>

    Example — single natural key:

        SELECT
            {{ generate_surrogate_key(['listing_id']) }} AS listing_key,
            listing_name,
            price
        FROM {{ ref('dim_listings_cleansed') }}

    Example — composite key (current usage in fct_reviews):

        SELECT
            {{ generate_surrogate_key(
                ['listing_id', 'review_date', 'reviewer_name', 'review_text'],
                alias = 'review_id'
            ) }},
            listing_id,
            review_date,
            reviewer_name,
            review_text,
            review_sentiment
        FROM src_reviews

    Example — compile error on empty list:

        {{ generate_surrogate_key([]) }}
        -- raises: "generate_surrogate_key requires at least one column name."
#}

{% macro generate_surrogate_key(column_names, alias='surrogate_key') %}

    {%- if column_names | length == 0 -%}
        {{ exceptions.raise_compiler_error(
            "generate_surrogate_key requires at least one column name. "
            ~ "Received an empty list."
        ) }}
    {%- endif -%}

    -- surrogate key composed of: {{ column_names | join(', ') }}
    {{ dbt_utils.generate_surrogate_key(column_names) }} AS {{ alias }}

{% endmacro %}
