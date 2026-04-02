





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and length(
        listing_name
    ) >= 4 and length(
        listing_name
    ) <= 500
)
 as expression


    from AIRBNB.DEV.dim_listings_cleansed
    

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






