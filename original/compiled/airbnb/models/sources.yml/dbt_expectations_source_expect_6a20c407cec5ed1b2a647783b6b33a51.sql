






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and date >= '2008-01-01'::date and date <= current_date
)
 as expression


    from AIRBNB.raw.raw_reviews
    

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







