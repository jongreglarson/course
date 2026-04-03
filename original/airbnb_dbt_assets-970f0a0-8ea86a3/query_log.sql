-- created_at: 2026-04-01T16:15:01.808205100+00:00
-- finished_at: 2026-04-01T16:15:02.360380300+00:00
-- elapsed: 552ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321a2
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-04-01T16:15:03.125791900+00:00
-- finished_at: 2026-04-01T16:15:03.429033300+00:00
-- elapsed: 303ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003316e
-- desc: Get table schema
describe table "AIRBNB"."DEV"."FCT_REVIEWS";
-- created_at: 2026-04-01T16:15:03.475675300+00:00
-- finished_at: 2026-04-01T16:15:03.670794800+00:00
-- elapsed: 195ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e000301ea
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS";
-- created_at: 2026-04-01T16:15:03.672627500+00:00
-- finished_at: 2026-04-01T16:15:03.816244100+00:00
-- elapsed: 143ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321a6
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS";
-- created_at: 2026-04-01T16:15:03.817078200+00:00
-- finished_at: 2026-04-01T16:15:04.047306+00:00
-- elapsed: 230ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-e081-0007-7a2e00033172
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_HOSTS";
-- created_at: 2026-04-01T16:15:03.844475300+00:00
-- finished_at: 2026-04-01T16:15:04.059243700+00:00
-- elapsed: 214ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321aa
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_LISTINGS";
-- created_at: 2026-04-01T16:15:04.052385600+00:00
-- finished_at: 2026-04-01T16:15:04.193541900+00:00
-- elapsed: 141ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e000301ee
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_REVIEWS";
-- created_at: 2026-04-01T16:15:04.060526500+00:00
-- finished_at: 2026-04-01T16:15:04.285650800+00:00
-- elapsed: 225ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-e081-0007-7a2e00033176
-- desc: Get table schema
describe table "AIRBNB"."DEV"."DIM_LISTINGS_W_HOSTS";
-- created_at: 2026-04-01T16:15:06.028706800+00:00
-- finished_at: 2026-04-01T16:15:06.579406900+00:00
-- elapsed: 550ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e000301f2
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:06.587483+00:00
-- finished_at: 2026-04-01T16:15:06.807597200+00:00
-- elapsed: 220ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003317a
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:07.786081300+00:00
-- finished_at: 2026-04-01T16:15:07.921610100+00:00
-- elapsed: 135ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e097-0007-7a2e0003419a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:07.673202300+00:00
-- finished_at: 2026-04-01T16:15:07.938091900+00:00
-- elapsed: 264ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321b2
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:07.785856700+00:00
-- finished_at: 2026-04-01T16:15:08.066741100+00:00
-- elapsed: 280ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e000301fe
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:07.660097400+00:00
-- finished_at: 2026-04-01T16:15:08.230683500+00:00
-- elapsed: 570ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e000301f6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:15:07.670197500+00:00
-- finished_at: 2026-04-01T16:15:08.251507400+00:00
-- elapsed: 581ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321ae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:15:07.938630700+00:00
-- finished_at: 2026-04-01T16:15:08.552263600+00:00
-- elapsed: 613ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003317e
-- desc: execute adapter call

    
    truncate table "AIRBNB"."DEV"."SEED_FULL_MOON_DATES"
  
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.037149+00:00
-- finished_at: 2026-04-01T16:15:08.792162400+00:00
-- elapsed: 755ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e081-0007-7a2e00033182
-- desc: execute adapter call
create or replace  temporary view AIRBNB.DEV.fct_reviews__dbt_tmp
  
  
  
  
  as (
    with __dbt__cte__src_reviews as (
WITH raw_reviews AS (
    SELECT
        *
    FROM
        AIRBNB.raw.raw_reviews
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews
)
--EPHEMERAL-SELECT-WRAPPER-START
select * from (

WITH src_reviews AS (
  SELECT * FROM __dbt__cte__src_reviews
)
SELECT
  md5(cast(coalesce(cast(listing_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_date as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(reviewer_name as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(review_text as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT))
    AS review_id,
  *
  FROM src_reviews
WHERE review_text is not null

  AND review_date > (select max(review_date) from AIRBNB.DEV.fct_reviews)

--EPHEMERAL-SELECT-WRAPPER-END
)
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.256176100+00:00
-- finished_at: 2026-04-01T16:15:08.868873800+00:00
-- elapsed: 612ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bcf-3203-e097-0007-7a2e0003419e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_D9770018E28873E7BE74335902D9E4E5" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.800574800+00:00
-- finished_at: 2026-04-01T16:15:08.917655400+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321c2
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:07.706496200+00:00
-- finished_at: 2026-04-01T16:15:08.975067300+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e000301fa
-- desc: execute adapter call
create or replace   view AIRBNB.DEV.dim_hosts_cleansed
  
  
  
  
  as (
    with __dbt__cte__src_hosts as (
WITH raw_hosts AS (
    SELECT
        *
    FROM
       AIRBNB.raw.raw_hosts
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
)
--EPHEMERAL-SELECT-WRAPPER-START
select * from (

WITH src_hosts AS (
    SELECT
        *
    FROM
        __dbt__cte__src_hosts
)
SELECT
    host_id,
    NVL(
        host_name,
        'Anonymous'
    ) AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts
--EPHEMERAL-SELECT-WRAPPER-END
)
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.244367700+00:00
-- finished_at: 2026-04-01T16:15:08.999558700+00:00
-- elapsed: 755ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321ba
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_A60B59A84FBC4577A11DF360C50013BB" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.919849500+00:00
-- finished_at: 2026-04-01T16:15:09.038624300+00:00
-- elapsed: 118ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003020a
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:09.054292500+00:00
-- finished_at: 2026-04-01T16:15:09.355419900+00:00
-- elapsed: 301ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003318a
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.992866200+00:00
-- finished_at: 2026-04-01T16:15:09.368206500+00:00
-- elapsed: 375ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bcf-3203-e081-0007-7a2e00033186
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_hosts_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:09.359072500+00:00
-- finished_at: 2026-04-01T16:15:09.471009+00:00
-- elapsed: 111ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030212
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."FCT_REVIEWS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.552995100+00:00
-- finished_at: 2026-04-01T16:15:09.504919700+00:00
-- elapsed: 951ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321be
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:09.510703100+00:00
-- finished_at: 2026-04-01T16:15:09.713995200+00:00
-- elapsed: 203ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321c6
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-04-01T16:15:09.500910900+00:00
-- finished_at: 2026-04-01T16:15:09.798243600+00:00
-- elapsed: 297ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341a6
-- desc: execute adapter call
-- back compat for old kwarg name
  
  begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:09.368468300+00:00
-- finished_at: 2026-04-01T16:15:10.063842500+00:00
-- elapsed: 695ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341a2
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_hosts_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.876804100+00:00
-- finished_at: 2026-04-01T16:15:10.090238400+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030206
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5
    
    
    
    as (
    
  


    with grouped_expression as (
    select
        
        
    
  
count(distinct room_type) = 4
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



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:07.960988700+00:00
-- finished_at: 2026-04-01T16:15:10.201102500+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321b6
-- desc: execute adapter call
create or replace temporary table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
as (
    
    
    with snapshot_query as (

        select * from AIRBNB.raw.raw_hosts

    ),

    snapshotted_data as (

        select *, 
    
        id as dbt_unique_key
    

        from "AIRBNB"."DEV"."SCD_RAW_HOSTS"
        where
            
                dbt_valid_to is null
            

    ),

    insertions_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            
  
  coalesce(nullif(updated_at, updated_at), null)
  as dbt_valid_to
,
            md5(coalesce(cast(id as varchar ), '')
         || '|' || coalesce(cast(updated_at as varchar ), '')
        ) as dbt_scd_id

        from snapshot_query
    ),

    updates_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            updated_at as dbt_valid_to

        from snapshot_query
    ),

    deletes_source_data as (

        select *, 
    
        id as dbt_unique_key
    

        from snapshot_query
    ),
    

    insertions as (

        select
            'insert' as dbt_change_type,
            source_data.*

        from insertions_source_data as source_data
        left outer join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        snapshotted_data.dbt_unique_key is null
    

            or (
    
        snapshotted_data.dbt_unique_key is not null
    
 and (
               (snapshotted_data.dbt_valid_from < source_data.updated_at)
            )

        )

    ),

    updates as (

        select
            'update' as dbt_change_type,
            source_data.*,
            snapshotted_data.dbt_scd_id

        from updates_source_data as source_data
        join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

        where (
            (snapshotted_data.dbt_valid_from < source_data.updated_at)
        )
    )
    ,
    deletes as (

        select
            'delete' as dbt_change_type,
            source_data.*,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_to,
            snapshotted_data.dbt_scd_id
        from snapshotted_data
        left join deletes_source_data as source_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        source_data.dbt_unique_key is null
    

    )

    select * from insertions
    union all
    select * from updates
    union all
    select * from deletes

    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:09.004576400+00:00
-- finished_at: 2026-04-01T16:15:10.208659400+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003020e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb
    
    
    
    as (
    
  




    with grouped_expression as (
    select
        
        
    
  


    
regexp_instr(price, '^\\$[0-9][0-9\\.]+$', 1, 1, 0, '')


 > 0
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





  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:08.090325200+00:00
-- finished_at: 2026-04-01T16:15:10.286259500+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030202
-- desc: execute adapter call
create or replace temporary table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
as (
    
    
    with snapshot_query as (

        select * from AIRBNB.raw.raw_listings

    ),

    snapshotted_data as (

        select *, 
    
        id as dbt_unique_key
    

        from "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
        where
            
                dbt_valid_to is null
            

    ),

    insertions_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            
  
  coalesce(nullif(updated_at, updated_at), null)
  as dbt_valid_to
,
            md5(coalesce(cast(id as varchar ), '')
         || '|' || coalesce(cast(updated_at as varchar ), '')
        ) as dbt_scd_id

        from snapshot_query
    ),

    updates_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            updated_at as dbt_valid_to

        from snapshot_query
    ),

    deletes_source_data as (

        select *, 
    
        id as dbt_unique_key
    

        from snapshot_query
    ),
    

    insertions as (

        select
            'insert' as dbt_change_type,
            source_data.*

        from insertions_source_data as source_data
        left outer join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        snapshotted_data.dbt_unique_key is null
    

            or (
    
        snapshotted_data.dbt_unique_key is not null
    
 and (
               (snapshotted_data.dbt_valid_from < source_data.updated_at)
            )

        )

    ),

    updates as (

        select
            'update' as dbt_change_type,
            source_data.*,
            snapshotted_data.dbt_scd_id

        from updates_source_data as source_data
        join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

        where (
            (snapshotted_data.dbt_valid_from < source_data.updated_at)
        )
    )
    ,
    deletes as (

        select
            'delete' as dbt_change_type,
            source_data.*,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_to,
            snapshotted_data.dbt_scd_id
        from snapshotted_data
        left join deletes_source_data as source_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        source_data.dbt_unique_key is null
    

    )

    select * from insertions
    union all
    select * from updates
    union all
    select * from deletes

    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:09.724320900+00:00
-- finished_at: 2026-04-01T16:15:10.306336900+00:00
-- elapsed: 582ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003318e
-- desc: add_query adapter call
insert into AIRBNB.DEV.seed_full_moon_dates (FULL_MOON_DATE) values
            ('2009-01-11'),('2009-02-09'),('2009-03-11'),('2009-04-09'),('2009-05-09'),('2009-06-07'),('2009-07-07'),('2009-08-06'),('2009-09-04'),('2009-10-04'),('2009-11-02'),('2009-12-02'),('2009-12-31'),('2010-01-30'),('2010-02-28'),('2010-03-30'),('2010-04-28'),('2010-05-28'),('2010-06-26'),('2010-07-26'),('2010-08-24'),('2010-09-23'),('2010-10-23'),('2010-11-21'),('2010-12-21'),('2011-01-19'),('2011-02-18'),('2011-03-19'),('2011-04-18'),('2011-05-17'),('2011-06-15'),('2011-07-15'),('2011-08-13'),('2011-09-12'),('2011-10-12'),('2011-11-10'),('2011-12-10'),('2012-01-09'),('2012-02-07'),('2012-03-08'),('2012-04-06'),('2012-05-06'),('2012-06-04'),('2012-07-03'),('2012-08-02'),('2012-08-31'),('2012-09-30'),('2012-10-29'),('2012-11-28'),('2012-12-28'),('2013-01-27'),('2013-02-25'),('2013-03-27'),('2013-04-25'),('2013-05-25'),('2013-06-23'),('2013-07-22'),('2013-08-21'),('2013-09-19'),('2013-10-19'),('2013-11-17'),('2013-12-17'),('2014-01-16'),('2014-02-15'),('2014-03-16'),('2014-04-15'),('2014-05-14'),('2014-06-13'),('2014-07-12'),('2014-08-10'),('2014-09-09'),('2014-10-08'),('2014-11-06'),('2014-12-06'),('2015-01-05'),('2015-02-04'),('2015-03-05'),('2015-04-04'),('2015-05-04'),('2015-06-02'),('2015-07-02'),('2015-07-31'),('2015-08-29'),('2015-09-28'),('2015-10-27'),('2015-11-25'),('2015-12-25'),('2016-01-24'),('2016-02-22'),('2016-03-23'),('2016-04-22'),('2016-05-21'),('2016-06-20'),('2016-07-20'),('2016-08-18'),('2016-09-16'),('2016-10-16'),('2016-11-14'),('2016-12-14'),('2017-01-12'),('2017-02-11'),('2017-03-12'),('2017-04-11'),('2017-05-10'),('2017-06-09'),('2017-07-09'),('2017-08-07'),('2017-09-06'),('2017-10-05'),('2017-11-04'),('2017-12-03'),('2018-01-02'),('2018-01-31'),('2018-03-02'),('2018-03-31'),('2018-04-30'),('2018-05-29'),('2018-06-28'),('2018-07-27'),('2018-08-26'),('2018-09-25'),('2018-10-24'),('2018-11-23'),('2018-12-22'),('2019-01-21'),('2019-02-19'),('2019-03-21'),('2019-04-19'),('2019-05-18'),('2019-06-17'),('2019-07-16'),('2019-08-15'),('2019-09-14'),('2019-10-13'),('2019-11-12'),('2019-12-12'),('2020-01-10'),('2020-02-09'),('2020-03-09'),('2020-04-08'),('2020-05-07'),('2020-06-05'),('2020-07-05'),('2020-08-03'),('2020-09-02'),('2020-10-01'),('2020-10-31'),('2020-11-30'),('2020-12-30'),('2021-01-28'),('2021-02-27'),('2021-03-28'),('2021-04-27'),('2021-05-26'),('2021-06-24'),('2021-07-24'),('2021-08-22'),('2021-09-21'),('2021-10-20'),('2021-11-19'),('2021-12-19'),('2022-01-18'),('2022-02-16'),('2022-03-18'),('2022-04-16'),('2022-05-16'),('2022-06-14'),('2022-07-13'),('2022-08-12'),('2022-09-10'),('2022-10-09'),('2022-11-08'),('2022-12-08'),('2023-01-07'),('2023-02-05'),('2023-03-07'),('2023-04-06'),('2023-05-05'),('2023-06-04'),('2023-07-03'),('2023-08-01'),('2023-08-31'),('2023-09-29'),('2023-10-28'),('2023-11-27'),('2023-12-27'),('2024-01-25'),('2024-02-24'),('2024-03-25'),('2024-04-24'),('2024-05-23'),('2024-06-22'),('2024-07-21'),('2024-08-19'),('2024-09-18'),('2024-10-17'),('2024-11-15'),('2024-12-15'),('2025-01-13'),('2025-02-12'),('2025-03-14'),('2025-04-13'),('2025-05-12'),('2025-06-11'),('2025-07-10'),('2025-08-09'),('2025-09-07'),('2025-10-07'),('2025-11-05'),('2025-12-05'),('2026-01-03'),('2026-02-01'),('2026-03-03'),('2026-04-02'),('2026-05-01'),('2026-05-31'),('2026-06-30'),('2026-07-29'),('2026-08-28'),('2026-09-26'),('2026-10-26'),('2026-11-24'),('2026-12-24'),('2027-01-22'),('2027-02-21'),('2027-03-22'),('2027-04-21'),('2027-05-20'),('2027-06-19'),('2027-07-18'),('2027-08-17'),('2027-09-16'),('2027-10-15'),('2027-11-14'),('2027-12-13'),('2028-01-12'),('2028-02-10'),('2028-03-11'),('2028-04-09'),('2028-05-08'),('2028-06-07'),('2028-07-06'),('2028-08-05'),('2028-09-04'),('2028-10-03'),('2028-11-02'),('2028-12-02'),('2028-12-31'),('2029-01-30'),('2029-02-28'),('2029-03-30'),('2029-04-28'),('2029-05-27'),('2029-06-26'),('2029-07-25'),('2029-08-24'),('2029-09-22'),('2029-10-22'),('2029-11-21'),('2029-12-20'),('2030-01-19'),('2030-02-18'),('2030-03-19'),('2030-04-18'),('2030-05-17'),('2030-06-15'),('2030-07-15'),('2030-08-13'),('2030-09-11'),('2030-10-11'),('2030-11-10'),('2030-12-09');
-- created_at: 2026-04-01T16:15:09.798723800+00:00
-- finished_at: 2026-04-01T16:15:10.470120900+00:00
-- elapsed: 671ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030216
-- desc: execute adapter call

    

        insert into AIRBNB.DEV.fct_reviews ("REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.206239300+00:00
-- finished_at: 2026-04-01T16:15:10.587981+00:00
-- elapsed: 381ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003021e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.215662500+00:00
-- finished_at: 2026-04-01T16:15:10.665158200+00:00
-- elapsed: 449ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341aa
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.066059900+00:00
-- finished_at: 2026-04-01T16:15:10.705996600+00:00
-- elapsed: 639ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003021a
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_hosts_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.291365500+00:00
-- finished_at: 2026-04-01T16:15:10.757172400+00:00
-- elapsed: 465ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321d2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.605476600+00:00
-- finished_at: 2026-04-01T16:15:10.771186600+00:00
-- elapsed: 165ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321da
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.105589600+00:00
-- finished_at: 2026-04-01T16:15:10.876665500+00:00
-- elapsed: 771ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321ca
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.470872300+00:00
-- finished_at: 2026-04-01T16:15:10.882690400+00:00
-- elapsed: 411ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321d6
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.768020200+00:00
-- finished_at: 2026-04-01T16:15:10.954912+00:00
-- elapsed: 186ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-e081-0007-7a2e00033192
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.778808600+00:00
-- finished_at: 2026-04-01T16:15:11.008915+00:00
-- elapsed: 230ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341ae
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.307833100+00:00
-- finished_at: 2026-04-01T16:15:11.126979800+00:00
-- elapsed: 819ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321ce
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-04-01T16:15:10.889866+00:00
-- finished_at: 2026-04-01T16:15:11.138856100+00:00
-- elapsed: 248ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e081-0007-7a2e00033196
-- desc: execute adapter call
drop view if exists AIRBNB.DEV.fct_reviews__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.018666200+00:00
-- finished_at: 2026-04-01T16:15:11.149060900+00:00
-- elapsed: 130ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321de
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.166995500+00:00
-- finished_at: 2026-04-01T16:15:11.318918900+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003319a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.311845+00:00
-- finished_at: 2026-04-01T16:15:11.488911200+00:00
-- elapsed: 177ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341b2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:10.966664400+00:00
-- finished_at: 2026-04-01T16:15:11.544968700+00:00
-- elapsed: 578ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030222
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.108539600+00:00
-- finished_at: 2026-04-01T16:15:11.603245100+00:00
-- elapsed: 494ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321e2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_HOSTS_CLEANSED_IS_SUPERHOST__T__F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.554543100+00:00
-- finished_at: 2026-04-01T16:15:11.650003+00:00
-- elapsed: 95ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321f6
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.098941100+00:00
-- finished_at: 2026-04-01T16:15:11.655607100+00:00
-- elapsed: 556ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321e6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.659572100+00:00
-- finished_at: 2026-04-01T16:15:11.860630500+00:00
-- elapsed: 201ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030232
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.143065400+00:00
-- finished_at: 2026-04-01T16:15:11.902226+00:00
-- elapsed: 759ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030226
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.fct_reviews', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.407327400+00:00
-- finished_at: 2026-04-01T16:15:11.984870100+00:00
-- elapsed: 577ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003022a
-- desc: execute adapter call
create or replace   view AIRBNB.DEV.dim_listings_cleansed
  
  
  
  
  as (
    with __dbt__cte__src_listings as (
WITH raw_listings AS (
    SELECT
        *
    FROM
        AIRBNB.raw.raw_listings
)
SELECT
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings
)
--EPHEMERAL-SELECT-WRAPPER-START
select * from (


WITH src_listings AS (
  SELECT
    *
  FROM
    __dbt__cte__src_listings
)
SELECT
  listing_id,
  listing_name,
  room_type,
  CASE
    WHEN minimum_nights = 0 THEN 1
    ELSE minimum_nights
  END AS minimum_nights,
  host_id,
  REPLACE(
    price_str,
    '$'
  ) :: NUMBER(
    10,
    2
  ) AS price,
  created_at,
  updated_at
FROM
  src_listings
--EPHEMERAL-SELECT-WRAPPER-END
)
  )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.330559900+00:00
-- finished_at: 2026-04-01T16:15:12.035766300+00:00
-- elapsed: 705ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321ea
-- desc: get_column_schema_from_query adapter call
select * from (
        
    
    with snapshot_query as (

        select * from AIRBNB.raw.raw_hosts

    ),

    snapshotted_data as (

        select *, 
    
        id as dbt_unique_key
    

        from "AIRBNB"."DEV"."SCD_RAW_HOSTS"
        where
            
                dbt_valid_to is null
            

    ),

    insertions_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            
  
  coalesce(nullif(updated_at, updated_at), null)
  as dbt_valid_to
,
            md5(coalesce(cast(id as varchar ), '')
         || '|' || coalesce(cast(updated_at as varchar ), '')
        ) as dbt_scd_id

        from snapshot_query
    ),

    updates_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            updated_at as dbt_valid_to

        from snapshot_query
    ),

    deletes_source_data as (

        select *, 
    
        id as dbt_unique_key
    

        from snapshot_query
    ),
    

    insertions as (

        select
            'insert' as dbt_change_type,
            source_data.*

        from insertions_source_data as source_data
        left outer join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        snapshotted_data.dbt_unique_key is null
    

            or (
    
        snapshotted_data.dbt_unique_key is not null
    
 and (
               (snapshotted_data.dbt_valid_from < source_data.updated_at)
            )

        )

    ),

    updates as (

        select
            'update' as dbt_change_type,
            source_data.*,
            snapshotted_data.dbt_scd_id

        from updates_source_data as source_data
        join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

        where (
            (snapshotted_data.dbt_valid_from < source_data.updated_at)
        )
    )
    ,
    deletes as (

        select
            'delete' as dbt_change_type,
            source_data.*,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_to,
            snapshotted_data.dbt_scd_id
        from snapshotted_data
        left join deletes_source_data as source_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        source_data.dbt_unique_key is null
    

    )

    select * from insertions
    union all
    select * from updates
    union all
    select * from deletes

    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:12.040198800+00:00
-- finished_at: 2026-04-01T16:15:12.106904700+00:00
-- elapsed: 66ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003023e
-- desc: get_column_schema_from_query adapter call
select * from (
        select to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_snapshot_time
    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:12.113631800+00:00
-- finished_at: 2026-04-01T16:15:12.261601500+00:00
-- elapsed: 147ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331a2
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.904433100+00:00
-- finished_at: 2026-04-01T16:15:12.537863700+00:00
-- elapsed: 633ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341b6
-- desc: execute adapter call
show grants on AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.661970600+00:00
-- finished_at: 2026-04-01T16:15:12.543817200+00:00
-- elapsed: 881ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bcf-3203-e081-0007-7a2e0003319e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.530097900+00:00
-- finished_at: 2026-04-01T16:15:12.903067+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321f2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:12.557967800+00:00
-- finished_at: 2026-04-01T16:15:13.061464400+00:00
-- elapsed: 503ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321fa
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_id
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:12.263447+00:00
-- finished_at: 2026-04-01T16:15:13.486428800+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321fe
-- desc: execute adapter call

    merge into "AIRBNB"."DEV"."SCD_RAW_HOSTS" as DBT_INTERNAL_DEST
    using "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp" as DBT_INTERNAL_SOURCE
    on DBT_INTERNAL_SOURCE.dbt_scd_id = DBT_INTERNAL_DEST.dbt_scd_id

    when matched
     
       and DBT_INTERNAL_DEST.dbt_valid_to is null
     
     and DBT_INTERNAL_SOURCE.dbt_change_type in ('update', 'delete')
        then update
        set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to

    when not matched
     and DBT_INTERNAL_SOURCE.dbt_change_type = 'insert'
        then insert ("ID", "NAME", "IS_SUPERHOST", "CREATED_AT", "UPDATED_AT", "DBT_UPDATED_AT", "DBT_VALID_FROM", "DBT_VALID_TO", "DBT_SCD_ID")
        values ("ID", "NAME", "IS_SUPERHOST", "CREATED_AT", "UPDATED_AT", "DBT_UPDATED_AT", "DBT_VALID_FROM", "DBT_VALID_TO", "DBT_SCD_ID")


/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.506044700+00:00
-- finished_at: 2026-04-01T16:15:13.636146100+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bcf-3203-e07a-0007-7a2e000321ee
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.unique_dim_hosts_cleansed_host_id
    
    
    
    as (
    
  
    
    

select
    host_id as unique_field,
    count(*) as n_records

from AIRBNB.DEV.dim_hosts_cleansed
where host_id is not null
group by host_id
having count(*) > 1



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:12.922334800+00:00
-- finished_at: 2026-04-01T16:15:13.786396300+00:00
-- elapsed: 864ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331a6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.886624200+00:00
-- finished_at: 2026-04-01T16:15:15.024369+00:00
-- elapsed: 3.1s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030236
-- desc: get_column_schema_from_query adapter call
select * from (
        
    
    with snapshot_query as (

        select * from AIRBNB.raw.raw_listings

    ),

    snapshotted_data as (

        select *, 
    
        id as dbt_unique_key
    

        from "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
        where
            
                dbt_valid_to is null
            

    ),

    insertions_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            
  
  coalesce(nullif(updated_at, updated_at), null)
  as dbt_valid_to
,
            md5(coalesce(cast(id as varchar ), '')
         || '|' || coalesce(cast(updated_at as varchar ), '')
        ) as dbt_scd_id

        from snapshot_query
    ),

    updates_source_data as (

        select *, 
    
        id as dbt_unique_key
    
,
            updated_at as dbt_updated_at,
            updated_at as dbt_valid_from,
            updated_at as dbt_valid_to

        from snapshot_query
    ),

    deletes_source_data as (

        select *, 
    
        id as dbt_unique_key
    

        from snapshot_query
    ),
    

    insertions as (

        select
            'insert' as dbt_change_type,
            source_data.*

        from insertions_source_data as source_data
        left outer join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        snapshotted_data.dbt_unique_key is null
    

            or (
    
        snapshotted_data.dbt_unique_key is not null
    
 and (
               (snapshotted_data.dbt_valid_from < source_data.updated_at)
            )

        )

    ),

    updates as (

        select
            'update' as dbt_change_type,
            source_data.*,
            snapshotted_data.dbt_scd_id

        from updates_source_data as source_data
        join snapshotted_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

        where (
            (snapshotted_data.dbt_valid_from < source_data.updated_at)
        )
    )
    ,
    deletes as (

        select
            'delete' as dbt_change_type,
            source_data.*,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
            to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_to,
            snapshotted_data.dbt_scd_id
        from snapshotted_data
        left join deletes_source_data as source_data
            on 
    
        snapshotted_data.dbt_unique_key = source_data.dbt_unique_key
    

            where 
    
        source_data.dbt_unique_key is null
    

    )

    select * from insertions
    union all
    select * from updates
    union all
    select * from deletes

    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.988999800+00:00
-- finished_at: 2026-04-01T16:15:15.114346800+00:00
-- elapsed: 3.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003023a
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.035893500+00:00
-- finished_at: 2026-04-01T16:15:15.176472200+00:00
-- elapsed: 140ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003024e
-- desc: get_column_schema_from_query adapter call
select * from (
        select to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_snapshot_time
    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:13.486990600+00:00
-- finished_at: 2026-04-01T16:15:15.296894800+00:00
-- elapsed: 1.8s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341ba
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.114638900+00:00
-- finished_at: 2026-04-01T16:15:15.352648200+00:00
-- elapsed: 238ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bcf-3203-e07a-0007-7a2e00032202
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:13.238768200+00:00
-- finished_at: 2026-04-01T16:15:15.359231700+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030242
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_FCT_REVIEWS_BEB36F129A533890A78CC01AC370EF78" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.190737700+00:00
-- finished_at: 2026-04-01T16:15:15.377067100+00:00
-- elapsed: 186ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030252
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:13.804535500+00:00
-- finished_at: 2026-04-01T16:15:15.385075800+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030246
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_name
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:13.652243600+00:00
-- finished_at: 2026-04-01T16:15:15.421633200+00:00
-- elapsed: 1.8s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003024a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.unique_dim_hosts_cleansed_host_id
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.377392800+00:00
-- finished_at: 2026-04-01T16:15:15.750209700+00:00
-- elapsed: 372ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331ae
-- desc: execute adapter call

    merge into "AIRBNB"."DEV"."SCD_RAW_LISTINGS" as DBT_INTERNAL_DEST
    using "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp" as DBT_INTERNAL_SOURCE
    on DBT_INTERNAL_SOURCE.dbt_scd_id = DBT_INTERNAL_DEST.dbt_scd_id

    when matched
     
       and DBT_INTERNAL_DEST.dbt_valid_to is null
     
     and DBT_INTERNAL_SOURCE.dbt_change_type in ('update', 'delete')
        then update
        set dbt_valid_to = DBT_INTERNAL_SOURCE.dbt_valid_to

    when not matched
     and DBT_INTERNAL_SOURCE.dbt_change_type = 'insert'
        then insert ("ID", "LISTING_URL", "NAME", "ROOM_TYPE", "MINIMUM_NIGHTS", "HOST_ID", "PRICE", "CREATED_AT", "UPDATED_AT", "DBT_UPDATED_AT", "DBT_VALID_FROM", "DBT_VALID_TO", "DBT_SCD_ID")
        values ("ID", "LISTING_URL", "NAME", "ROOM_TYPE", "MINIMUM_NIGHTS", "HOST_ID", "PRICE", "CREATED_AT", "UPDATED_AT", "DBT_UPDATED_AT", "DBT_VALID_FROM", "DBT_VALID_TO", "DBT_SCD_ID")


/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:11.608479500+00:00
-- finished_at: 2026-04-01T16:15:15.760568800+00:00
-- elapsed: 4.2s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003022e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.accepted_values_dim_hosts_cleansed_is_superhost__t__f
    
    
    
    as (
    
  
    
    

with all_values as (

    select
        is_superhost as value_field,
        count(*) as n_records

    from AIRBNB.DEV.dim_hosts_cleansed
    group by is_superhost

)

select *
from all_values
where value_field not in (
    't','f'
)



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.247940700+00:00
-- finished_at: 2026-04-01T16:15:15.789292400+00:00
-- elapsed: 541ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030256
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_FCT_REVIEWS_REVIEWER_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.373780900+00:00
-- finished_at: 2026-04-01T16:15:15.854993300+00:00
-- elapsed: 481ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331aa
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78
    
    
    
    as (
    
  
    
    

with all_values as (

    select
        review_sentiment as value_field,
        count(*) as n_records

    from AIRBNB.DEV.fct_reviews
    group by review_sentiment

)

select *
from all_values
where value_field not in (
    'positive','neutral','negative'
)



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.751891800+00:00
-- finished_at: 2026-04-01T16:15:16.087722800+00:00
-- elapsed: 335ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030262
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.871520200+00:00
-- finished_at: 2026-04-01T16:15:16.153420+00:00
-- elapsed: 281ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36bcf-3203-e07a-0007-7a2e00032206
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.356506600+00:00
-- finished_at: 2026-04-01T16:15:16.247637700+00:00
-- elapsed: 891ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003025a
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.771379600+00:00
-- finished_at: 2026-04-01T16:15:16.328282800+00:00
-- elapsed: 556ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003025e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.accepted_values_dim_hosts_cleansed_is_superhost__t__f
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.299790300+00:00
-- finished_at: 2026-04-01T16:15:16.419284500+00:00
-- elapsed: 119ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331b2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_LISTINGS_C_1CA6148A08C62A5218F2A162F9D2A9A6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.306078100+00:00
-- finished_at: 2026-04-01T16:15:16.456969700+00:00
-- elapsed: 150ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331b6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_FCT_REVIEWS_2F397514D7615E5AE30D8FCE9F0EA58D" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.288994200+00:00
-- finished_at: 2026-04-01T16:15:16.894694900+00:00
-- elapsed: 605ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003026a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."CONSISTENT_CREATED_AT" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.650205100+00:00
-- finished_at: 2026-04-01T16:15:17.139102400+00:00
-- elapsed: 488ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030272
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.001459200+00:00
-- finished_at: 2026-04-01T16:15:17.160555600+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331ba
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."POSITIVE_VALUES_DIM_LISTINGS_CLEANSED_MINIMUM_NIGHTS" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.882774600+00:00
-- finished_at: 2026-04-01T16:15:17.176897200+00:00
-- elapsed: 294ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bcf-3203-e07a-0007-7a2e0003220a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:15.793043800+00:00
-- finished_at: 2026-04-01T16:15:17.236042600+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030266
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_fct_reviews_reviewer_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.fct_reviews
where reviewer_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.931658500+00:00
-- finished_at: 2026-04-01T16:15:17.244668600+00:00
-- elapsed: 313ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003027a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.931658500+00:00
-- finished_at: 2026-04-01T16:15:17.253826600+00:00
-- elapsed: 322ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030276
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_DIM_LISTINGS_CLE_05E2397B186A7B9306FC747B3CC4EF83" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.425464700+00:00
-- finished_at: 2026-04-01T16:15:17.359208600+00:00
-- elapsed: 933ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341be
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6
    
    
    
    as (
    
  
    
    

with all_values as (

    select
        room_type as value_field,
        count(*) as n_records

    from AIRBNB.DEV.dim_listings_cleansed
    group by room_type

)

select *
from all_values
where value_field not in (
    'Entire home/apt','Private room','Shared room','Hotel room'
)



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.466750800+00:00
-- finished_at: 2026-04-01T16:15:17.521428+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003026e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d
    
    
    
    as (
    
  
    
    

with child as (
    select listing_id as from_field
    from AIRBNB.DEV.fct_reviews
    where listing_id is not null
),

parent as (
    select listing_id as to_field
    from AIRBNB.DEV.dim_listings_cleansed
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.241638300+00:00
-- finished_at: 2026-04-01T16:15:17.534015500+00:00
-- elapsed: 292ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030282
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.not_null_fct_reviews_reviewer_name
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.369773800+00:00
-- finished_at: 2026-04-01T16:15:17.587394500+00:00
-- elapsed: 217ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030286
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:16.905388500+00:00
-- finished_at: 2026-04-01T16:15:17.639048600+00:00
-- elapsed: 733ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341c2
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.consistent_created_at
    
    
    
    as (
    
  SELECT * FROM AIRBNB.DEV.dim_listings_cleansed l
INNER JOIN AIRBNB.DEV.fct_reviews r
USING (listing_id)
WHERE l.created_at > r.review_date
  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.535217900+00:00
-- finished_at: 2026-04-01T16:15:17.688589200+00:00
-- elapsed: 153ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331c2
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.251121+00:00
-- finished_at: 2026-04-01T16:15:17.741331300+00:00
-- elapsed: 490ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331be
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.unique_dim_listings_cleansed_listing_id
    
    
    
    as (
    
  
    
    

select
    listing_id as unique_field,
    count(*) as n_records

from AIRBNB.DEV.dim_listings_cleansed
where listing_id is not null
group by listing_id
having count(*) > 1



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.183512100+00:00
-- finished_at: 2026-04-01T16:15:17.758283600+00:00
-- elapsed: 574ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341c6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.167981+00:00
-- finished_at: 2026-04-01T16:15:17.825329500+00:00
-- elapsed: 657ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003027e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.positive_values_dim_listings_cleansed_minimum_nights
    
    
    
    as (
    
  
SELECT * FROM AIRBNB.DEV.dim_listings_cleansed WHERE minimum_nights <= 0

  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.651953300+00:00
-- finished_at: 2026-04-01T16:15:17.842188400+00:00
-- elapsed: 190ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bcf-3203-e07a-0007-7a2e00032216
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.consistent_created_at
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.766898300+00:00
-- finished_at: 2026-04-01T16:15:17.888590700+00:00
-- elapsed: 121ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331ca
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_host_id
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.752293200+00:00
-- finished_at: 2026-04-01T16:15:17.907803600+00:00
-- elapsed: 155ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341ca
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.unique_dim_listings_cleansed_listing_id
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.143513200+00:00
-- finished_at: 2026-04-01T16:15:17.925131600+00:00
-- elapsed: 781ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bcf-3203-e07a-0007-7a2e0003220e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_listing_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where listing_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.836983+00:00
-- finished_at: 2026-04-01T16:15:17.958546300+00:00
-- elapsed: 121ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331ce
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.positive_values_dim_listings_cleansed_minimum_nights
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.259090100+00:00
-- finished_at: 2026-04-01T16:15:18.026383+00:00
-- elapsed: 767ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bcf-3203-e07a-0007-7a2e00032212
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83
    
    
    
    as (
    
  
    
    

with child as (
    select host_id as from_field
    from AIRBNB.DEV.dim_listings_cleansed
    where host_id is not null
),

parent as (
    select host_id as to_field
    from AIRBNB.DEV.dim_hosts_cleansed
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.936372600+00:00
-- finished_at: 2026-04-01T16:15:18.093520400+00:00
-- elapsed: 157ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331d2
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_listing_id
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:18.034741700+00:00
-- finished_at: 2026-04-01T16:15:18.256380600+00:00
-- elapsed: 221ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bcf-3203-e07a-0007-7a2e0003221a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:17.548749400+00:00
-- finished_at: 2026-04-01T16:15:19.720034400+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331c6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV.mart_fullmoon_reviews
    
    
    
    as (

WITH fct_reviews AS (
    SELECT * FROM AIRBNB.DEV.fct_reviews
),
full_moon_dates AS (
    SELECT * FROM AIRBNB.DEV.seed_full_moon_dates
)

SELECT
  r.*,
  CASE
    WHEN fm.full_moon_date IS NULL THEN 'not full moon'
    ELSE 'full moon'
  END AS is_full_moon
FROM
  fct_reviews
  r
  LEFT JOIN full_moon_dates
  fm
  ON (TO_DATE(r.review_date) = DATEADD(DAY, 1, fm.full_moon_date))
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:18.282428900+00:00
-- finished_at: 2026-04-01T16:15:19.736461700+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bcf-3203-e07a-0007-7a2e0003221e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV.dim_listings_w_hosts
    
    
    
    as (WITH
l AS (
    SELECT
        *
    FROM
        AIRBNB.DEV.dim_listings_cleansed
),
h AS (
    SELECT *
    FROM AIRBNB.DEV.dim_hosts_cleansed
)

SELECT
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    l.host_id,
    h.host_name,
    h.is_superhost as host_is_superhost,
    l.created_at,
    GREATEST(l.updated_at, h.updated_at) as updated_at
FROM l
LEFT JOIN h ON (h.host_id = l.host_id)
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:19.722028100+00:00
-- finished_at: 2026-04-01T16:15:20.048067700+00:00
-- elapsed: 326ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331d6
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.mart_fullmoon_reviews', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:19.738695500+00:00
-- finished_at: 2026-04-01T16:15:20.105705+00:00
-- elapsed: 367ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331da
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_w_hosts', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.109588700+00:00
-- finished_at: 2026-04-01T16:15:20.207257600+00:00
-- elapsed: 97ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331de
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_w_hosts to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.052393600+00:00
-- finished_at: 2026-04-01T16:15:20.260634900+00:00
-- elapsed: 208ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341ce
-- desc: execute adapter call
grant select on AIRBNB.DEV.mart_fullmoon_reviews to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.260942300+00:00
-- finished_at: 2026-04-01T16:15:20.361758400+00:00
-- elapsed: 100ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331e2
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.mart_fullmoon_reviews to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.207512+00:00
-- finished_at: 2026-04-01T16:15:20.484531800+00:00
-- elapsed: 277ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341d2
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_w_hosts to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.501252700+00:00
-- finished_at: 2026-04-01T16:15:20.674418200+00:00
-- elapsed: 173ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331ea
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_C59E300E0DDDB335C4211147100AC1C6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.499814600+00:00
-- finished_at: 2026-04-01T16:15:20.696893600+00:00
-- elapsed: 197ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bcf-3203-e081-0007-7a2e000331e6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_39596D790161761077FF1592B68943F6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.509898900+00:00
-- finished_at: 2026-04-01T16:15:20.862311400+00:00
-- elapsed: 352ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bcf-3203-e07a-0007-7a2e00032222
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_TABLE__FBDA7436EBE2FFE341ACF0622C76D629" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.515965+00:00
-- finished_at: 2026-04-01T16:15:21.039124100+00:00
-- elapsed: 523ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003028a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_07E7A515218EF6E3A17E164C642C7D18" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.703800700+00:00
-- finished_at: 2026-04-01T16:15:21.405181100+00:00
-- elapsed: 701ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003028e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6
    
    
    
    as (
    
  





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and percentile_cont(0.99) within group (order by price) >= 50 and percentile_cont(0.99) within group (order by price) <= 500
)
 as expression


    from AIRBNB.DEV.dim_listings_w_hosts
    

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






  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.880121100+00:00
-- finished_at: 2026-04-01T16:15:21.571421400+00:00
-- elapsed: 691ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341d6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629
    
    
    
    as (
    
  
    with a as (
        
    select
        
        count(*) as expression
    from
        AIRBNB.DEV.dim_listings_w_hosts
    

    ),
    b as (
        
    select
        
        count(*) * 1 as expression
    from
        AIRBNB.raw.raw_listings
    

    ),
    final as (

        select
            
            a.expression,
            b.expression as compare_expression,
            abs(coalesce(a.expression, 0) - coalesce(b.expression, 0)) as expression_difference,
            abs(coalesce(a.expression, 0) - coalesce(b.expression, 0))/
                nullif(a.expression * 1.0, 0) as expression_difference_percent
        from
        
            a cross join b
        
    )
    -- DEBUG:
    -- select * from final
    select
        *
    from final
    where
        
        expression_difference > 0.0
        

  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:21.051125+00:00
-- finished_at: 2026-04-01T16:15:21.603631700+00:00
-- elapsed: 552ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341da
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18
    
    
    
    as (
    
  with relation_columns as (

        
        select
            cast('LISTING_ID' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('LISTING_NAME' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('ROOM_TYPE' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('MINIMUM_NIGHTS' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('PRICE' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_ID' as TEXT) as relation_column,
            cast('NUMBER' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_NAME' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('HOST_IS_SUPERHOST' as TEXT) as relation_column,
            cast('VARCHAR' as TEXT) as relation_column_type
        union all
        
        select
            cast('CREATED_AT' as TEXT) as relation_column,
            cast('TIMESTAMP_NTZ' as TEXT) as relation_column_type
        union all
        
        select
            cast('UPDATED_AT' as TEXT) as relation_column,
            cast('TIMESTAMP_NTZ' as TEXT) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'PRICE'
            and
            relation_column_type not in ('NUMBER')

    )
    select *
    from test_data
  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:20.687977500+00:00
-- finished_at: 2026-04-01T16:15:21.627171+00:00
-- elapsed: 939ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030292
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6
    
    
    
    as (
    
  





    with grouped_expression as (
    select
        
        
    
  
( 1=1 and max(price) <= 5000
)
 as expression


    from AIRBNB.DEV.dim_listings_w_hosts
    

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






  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:21.575983500+00:00
-- finished_at: 2026-04-01T16:15:21.727001300+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e0003029a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:21.420270700+00:00
-- finished_at: 2026-04-01T16:15:21.743769300+00:00
-- elapsed: 323ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bcf-3203-dfa2-0007-7a2e00030296
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:21.635023+00:00
-- finished_at: 2026-04-01T16:15:21.915228100+00:00
-- elapsed: 280ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bcf-3203-e097-0007-7a2e000341de
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:15:21.608418900+00:00
-- finished_at: 2026-04-01T16:15:21.917537500+00:00
-- elapsed: 309ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bcf-3203-e07a-0007-7a2e00032226
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from AIRBNB.DEV_test_results.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18
    
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db", "profile_name": "airbnb", "target_name": "dev"} */;
