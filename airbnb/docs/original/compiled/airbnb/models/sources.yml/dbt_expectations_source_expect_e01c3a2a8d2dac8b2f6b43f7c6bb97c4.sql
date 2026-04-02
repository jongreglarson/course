


    with grouped_expression as (
    select
        
        
    
  
count(distinct sentiment) = 3
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


