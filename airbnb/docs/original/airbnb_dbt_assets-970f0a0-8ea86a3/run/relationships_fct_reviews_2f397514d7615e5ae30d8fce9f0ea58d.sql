
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d
    
      
    ) dbt_internal_test