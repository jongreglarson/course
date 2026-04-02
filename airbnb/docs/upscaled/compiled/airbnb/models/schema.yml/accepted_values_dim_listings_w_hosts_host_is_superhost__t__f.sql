
    
    

with all_values as (

    select
        host_is_superhost as value_field,
        count(*) as n_records

    from AIRBNB.DEV.dim_listings_w_hosts
    group by host_is_superhost

)

select *
from all_values
where value_field not in (
    't','f'
)


