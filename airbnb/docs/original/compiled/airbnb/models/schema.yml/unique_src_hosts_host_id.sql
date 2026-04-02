
    
    

with __dbt__cte__src_hosts as (
WITH raw_hosts AS (
    SELECT
        *
    FROM
       AIRBNB.raw.raw_hosts
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
) select
    host_id as unique_field,
    count(*) as n_records

from __dbt__cte__src_hosts
where host_id is not null
group by host_id
having count(*) > 1


