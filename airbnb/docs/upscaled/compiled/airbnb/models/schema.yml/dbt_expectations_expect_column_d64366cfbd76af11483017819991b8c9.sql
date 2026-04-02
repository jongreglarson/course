





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and length(
        review_text
    ) >= 10
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






