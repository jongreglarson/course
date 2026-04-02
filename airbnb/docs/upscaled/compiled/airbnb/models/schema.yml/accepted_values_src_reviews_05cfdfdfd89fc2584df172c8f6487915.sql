
    
    

with  __dbt__cte__src_reviews as (
WITH raw_reviews AS (
    SELECT
        *
    FROM
        AIRBNB.raw.raw_reviews
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews
), all_values as (

    select
        review_sentiment as value_field,
        count(*) as n_records

    from __dbt__cte__src_reviews
    group by review_sentiment

)

select *
from all_values
where value_field not in (
    'positive','neutral','negative'
)


