
    
    

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
), all_values as (

    select
        room_type as value_field,
        count(*) as n_records

    from __dbt__cte__src_listings
    group by room_type

)

select *
from all_values
where value_field not in (
    'Entire home/apt','Private room','Shared room','Hotel room'
)


