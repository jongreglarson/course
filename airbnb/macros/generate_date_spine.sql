{#
    generate_date_spine(start_date, end_date, datepart)

    Generates a continuous sequence of dates between two bounds. Use this
    to ensure every date in a range has a row, even when no events occurred
    on that date — critical for trend charts, occupancy analysis, and any
    report that needs to display zeroes rather than gaps.

    Arguments:
        start_date  (required) — SQL date expression for the first date in
                                  the spine, e.g. "'2020-01-01'::date"
        end_date    (required) — SQL date expression for the last date in
                                  the spine, e.g. "current_date"
        datepart    (optional) — granularity of the spine. Default: 'day'.
                                  Accepts any Snowflake DATEADD datepart:
                                  'day', 'week', 'month', 'quarter', 'year'

    Returns:
        A SELECT statement that produces one row per period between
        start_date and end_date (inclusive), in a column named
        date_<datepart> (e.g. date_day, date_month).

    Example — daily spine for review trend analysis:

        WITH spine AS (
            {{ generate_date_spine(
                start_date = "'2020-01-01'::date",
                end_date   = "current_date"
            ) }}
        ),
        reviews AS (
            SELECT review_date, COUNT(*) AS review_count
            FROM {{ ref('fct_reviews') }}
            GROUP BY review_date
        )
        SELECT
            s.date_day,
            COALESCE(r.review_count, 0) AS review_count
        FROM spine s
        LEFT JOIN reviews r ON r.review_date = s.date_day
        ORDER BY s.date_day

    Example — monthly spine:

        {{ generate_date_spine(
            start_date = "'2019-01-01'::date",
            end_date   = "current_date",
            datepart   = "month"
        ) }}

    Note: uses Snowflake's GENERATOR function with ROW_NUMBER to produce
    strictly consecutive integers. Not portable to other warehouses without
    adapting the TABLE(GENERATOR(...)) clause.
#}

{% macro generate_date_spine(start_date, end_date, datepart='day') %}

SELECT
    DATEADD(
        {{ datepart }},
        ROW_NUMBER() OVER (ORDER BY SEQ4()) - 1,
        {{ start_date }}
    ) AS date_{{ datepart }}
FROM TABLE(GENERATOR(
    ROWCOUNT => DATEDIFF({{ datepart }}, {{ start_date }}, {{ end_date }}) + 1
))

{% endmacro %}
