{#
    Full Moon Sentiment Analysis
    ============================
    Tests the hypothesis that guest mood — and therefore review sentiment —
    is influenced by lunar cycles. Specifically: are reviews written the day
    after a full moon more negative (or more positive) than reviews written
    on other days?

    Output: a 6-row matrix with one row per combination of is_full_moon
    ('full moon' / 'not full moon') and review_sentiment ('positive' /
    'neutral' / 'negative'), showing the count of reviews in each bucket.

    How to interpret:
      - Compare the sentiment distribution within each is_full_moon group.
      - If the hypothesis holds, the proportion of 'negative' reviews should
        be measurably higher (or lower) in the 'full moon' group.
      - Small absolute counts in the 'full moon' group are expected — full
        moons occur ~12 times per year, so full moon reviews are a minority.

    Depends on: mart_fullmoon_reviews
    Run with:   dbt compile --select full_moon_no_sleep (then execute in Snowflake)
#}

WITH fullmoon_reviews AS (
    SELECT * FROM {{ ref('mart_fullmoon_reviews') }}
)
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) as reviews
FROM
    fullmoon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment