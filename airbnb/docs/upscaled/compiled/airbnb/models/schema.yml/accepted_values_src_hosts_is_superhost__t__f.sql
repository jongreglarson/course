
    
    

with  __dbt__cte__src_hosts as (
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
), all_values as (

    select
        is_superhost as value_field,
        count(*) as n_records

    from __dbt__cte__src_hosts
    group by is_superhost

)

select *
from all_values
where value_field not in (
    't','f'
)


