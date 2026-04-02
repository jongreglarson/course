






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and minimum_nights >= 0 and minimum_nights <= 365
)
 as expression


    from AIRBNB.raw.raw_listings
    

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







