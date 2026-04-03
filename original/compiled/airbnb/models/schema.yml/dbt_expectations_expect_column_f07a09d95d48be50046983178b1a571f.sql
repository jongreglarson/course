




    with  __dbt__cte__src_listings as (
WITH raw_listings AS (
    SELECT
        *
    FROM
        AIRBNB.raw.raw_listings
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings
), grouped_expression as (
    select
        
        
    
  


    
regexp_instr(listing_url, '^https://www\.airbnb\.com/', 1, 1, 0, '')


 > 0
 as expression


    from __dbt__cte__src_listings
    

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




