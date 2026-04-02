






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
), grouped_expression as (
    select
        
        
    
  
( 1=1 and review_date >= '2008-01-01'::date and review_date <= current_date
)
 as expression


    from __dbt__cte__src_reviews
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







