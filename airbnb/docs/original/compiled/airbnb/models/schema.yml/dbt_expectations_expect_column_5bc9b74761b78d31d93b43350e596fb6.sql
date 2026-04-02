






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and review_date >= '2008-01-01'::date and review_date <= current_date
)
 as expression


    from AIRBNB.DEV.fct_reviews
    

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







