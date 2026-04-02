


    with grouped_expression as (
    select
        
        
    
  
count(distinct is_superhost) = 2
 as expression


    from AIRBNB.raw.raw_hosts
    

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


