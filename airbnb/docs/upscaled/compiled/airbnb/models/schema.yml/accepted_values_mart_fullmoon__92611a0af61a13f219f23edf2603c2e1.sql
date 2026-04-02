
    
    

with all_values as (

    select
        is_full_moon as value_field,
        count(*) as n_records

    from AIRBNB.DEV.mart_fullmoon_reviews
    group by is_full_moon

)

select *
from all_values
where value_field not in (
    'full moon','not full moon'
)


