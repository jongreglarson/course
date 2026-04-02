
    
    

with all_values as (

    select
        dim_hosts_cleansed as value_field,
        count(*) as n_records

    from AIRBNB.DEV.dim_listings_cleansed
    group by dim_hosts_cleansed

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6','7','8','9','10'
)


