
    
    

with __dbt__cte__src_listings as (
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
) select
    listing_id as unique_field,
    count(*) as n_records

from __dbt__cte__src_listings
where listing_id is not null
group by listing_id
having count(*) > 1


