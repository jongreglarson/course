WITH raw_reviews AS (
    SELECT
        *
    FROM
        {{source('airbnb','reviews')}}
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment,
    MOD(ABS(HASH(reviewer_name, listing_id)), 50) = 0 AS is_lycanthrope
FROM
    raw_reviews