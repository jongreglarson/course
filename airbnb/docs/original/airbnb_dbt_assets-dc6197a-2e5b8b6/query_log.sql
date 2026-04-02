-- created_at: 2026-04-01T16:08:42.810290700+00:00
-- finished_at: 2026-04-01T16:08:42.972422400+00:00
-- elapsed: 162ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300e6
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-04-01T16:08:43.599475500+00:00
-- finished_at: 2026-04-01T16:08:43.696815600+00:00
-- elapsed: 97ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340aa
-- desc: Get table schema
describe table "AIRBNB"."DEV"."FCT_REVIEWS";
-- created_at: 2026-04-01T16:08:43.645179300+00:00
-- finished_at: 2026-04-01T16:08:43.715850500+00:00
-- elapsed: 70ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-e081-0007-7a2e00033082
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS";
-- created_at: 2026-04-01T16:08:43.722873900+00:00
-- finished_at: 2026-04-01T16:08:43.795242400+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-e081-0007-7a2e00033086
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_HOSTS";
-- created_at: 2026-04-01T16:08:43.722877800+00:00
-- finished_at: 2026-04-01T16:08:43.805813400+00:00
-- elapsed: 82ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300ea
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS";
-- created_at: 2026-04-01T16:08:43.795925+00:00
-- finished_at: 2026-04-01T16:08:43.891455700+00:00
-- elapsed: 95ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300ee
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_LISTINGS";
-- created_at: 2026-04-01T16:08:43.808503100+00:00
-- finished_at: 2026-04-01T16:08:43.929363900+00:00
-- elapsed: 120ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-e07a-0007-7a2e0003208e
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_REVIEWS";
-- created_at: 2026-04-01T16:08:43.892237600+00:00
-- finished_at: 2026-04-01T16:08:44.002514500+00:00
-- elapsed: 110ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-e07a-0007-7a2e00032092
-- desc: Get table schema
describe table "AIRBNB"."DEV"."DIM_LISTINGS_W_HOSTS";
-- created_at: 2026-04-01T16:08:45.017551400+00:00
-- finished_at: 2026-04-01T16:08:45.095322800+00:00
-- elapsed: 77ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bc8-3203-e081-0007-7a2e0003308a
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:45.099309600+00:00
-- finished_at: 2026-04-01T16:08:45.187562500+00:00
-- elapsed: 88ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300f2
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:45.852186900+00:00
-- finished_at: 2026-04-01T16:08:45.949431200+00:00
-- elapsed: 97ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300f6
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:45.849022200+00:00
-- finished_at: 2026-04-01T16:08:45.976119900+00:00
-- elapsed: 127ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e07a-0007-7a2e0003209a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:45.842766600+00:00
-- finished_at: 2026-04-01T16:08:46.019139100+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bc8-3203-e07a-0007-7a2e00032096
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:45.788459100+00:00
-- finished_at: 2026-04-01T16:08:46.061087300+00:00
-- elapsed: 272ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340ae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:08:45.848542900+00:00
-- finished_at: 2026-04-01T16:08:46.067898100+00:00
-- elapsed: 219ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300fa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:08:46.076101300+00:00
-- finished_at: 2026-04-01T16:08:46.308697600+00:00
-- elapsed: 232ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340b6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_A60B59A84FBC4577A11DF360C50013BB" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.074627600+00:00
-- finished_at: 2026-04-01T16:08:46.315566100+00:00
-- elapsed: 240ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030102
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_D9770018E28873E7BE74335902D9E4E5" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.059480200+00:00
-- finished_at: 2026-04-01T16:08:46.319938300+00:00
-- elapsed: 260ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e000300fe
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
-- created_at: 2026-04-01T16:08:46.329340+00:00
-- finished_at: 2026-04-01T16:08:46.478992700+00:00
-- elapsed: 149ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340ba
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_hosts_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.019470+00:00
-- finished_at: 2026-04-01T16:08:46.501573700+00:00
-- elapsed: 482ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bc8-3203-e081-0007-7a2e0003308e
-- desc: execute adapter call

    
    truncate table "AIRBNB"."DEV"."SEED_FULL_MOON_DATES"
  
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.479503500+00:00
-- finished_at: 2026-04-01T16:08:46.576206200+00:00
-- elapsed: 96ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bc8-3203-e081-0007-7a2e00033092
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_hosts_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.461965600+00:00
-- finished_at: 2026-04-01T16:08:46.638168600+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003010a
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
-- created_at: 2026-04-01T16:08:46.502284600+00:00
-- finished_at: 2026-04-01T16:08:46.714597400+00:00
-- elapsed: 212ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003010e
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.645246300+00:00
-- finished_at: 2026-04-01T16:08:46.763049300+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340be
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.727589200+00:00
-- finished_at: 2026-04-01T16:08:46.885224+00:00
-- elapsed: 157ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320a6
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-04-01T16:08:46.778985+00:00
-- finished_at: 2026-04-01T16:08:46.886983200+00:00
-- elapsed: 107ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030112
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.315945600+00:00
-- finished_at: 2026-04-01T16:08:46.904039+00:00
-- elapsed: 588ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030106
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
-- created_at: 2026-04-01T16:08:46.322113+00:00
-- finished_at: 2026-04-01T16:08:46.953181400+00:00
-- elapsed: 631ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320a2
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
-- created_at: 2026-04-01T16:08:46.893931600+00:00
-- finished_at: 2026-04-01T16:08:46.979268100+00:00
-- elapsed: 85ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320aa
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:45.984789200+00:00
-- finished_at: 2026-04-01T16:08:47.017578600+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e07a-0007-7a2e0003209e
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
-- created_at: 2026-04-01T16:08:46.981597400+00:00
-- finished_at: 2026-04-01T16:08:47.055851800+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340ce
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."FCT_REVIEWS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.003068900+00:00
-- finished_at: 2026-04-01T16:08:47.082338800+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340b2
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
-- created_at: 2026-04-01T16:08:46.912845100+00:00
-- finished_at: 2026-04-01T16:08:47.085297300+00:00
-- elapsed: 172ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320ae
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
-- created_at: 2026-04-01T16:08:47.028094600+00:00
-- finished_at: 2026-04-01T16:08:47.136110900+00:00
-- elapsed: 108ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e081-0007-7a2e00033096
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.967232500+00:00
-- finished_at: 2026-04-01T16:08:47.169582900+00:00
-- elapsed: 202ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340ca
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
-- created_at: 2026-04-01T16:08:47.066714700+00:00
-- finished_at: 2026-04-01T16:08:47.171990600+00:00
-- elapsed: 105ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e081-0007-7a2e0003309a
-- desc: execute adapter call
-- back compat for old kwarg name
  
  begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.088019300+00:00
-- finished_at: 2026-04-01T16:08:47.186353900+00:00
-- elapsed: 98ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320b2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.146151500+00:00
-- finished_at: 2026-04-01T16:08:47.250165400+00:00
-- elapsed: 104ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030116
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.582755100+00:00
-- finished_at: 2026-04-01T16:08:47.264864800+00:00
-- elapsed: 682ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340c2
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_hosts_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.195099300+00:00
-- finished_at: 2026-04-01T16:08:47.314997600+00:00
-- elapsed: 119ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340d2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:46.888716+00:00
-- finished_at: 2026-04-01T16:08:47.331751600+00:00
-- elapsed: 443ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340c6
-- desc: add_query adapter call
insert into AIRBNB.DEV.seed_full_moon_dates (FULL_MOON_DATE) values
            ('2009-01-11'),('2009-02-09'),('2009-03-11'),('2009-04-09'),('2009-05-09'),('2009-06-07'),('2009-07-07'),('2009-08-06'),('2009-09-04'),('2009-10-04'),('2009-11-02'),('2009-12-02'),('2009-12-31'),('2010-01-30'),('2010-02-28'),('2010-03-30'),('2010-04-28'),('2010-05-28'),('2010-06-26'),('2010-07-26'),('2010-08-24'),('2010-09-23'),('2010-10-23'),('2010-11-21'),('2010-12-21'),('2011-01-19'),('2011-02-18'),('2011-03-19'),('2011-04-18'),('2011-05-17'),('2011-06-15'),('2011-07-15'),('2011-08-13'),('2011-09-12'),('2011-10-12'),('2011-11-10'),('2011-12-10'),('2012-01-09'),('2012-02-07'),('2012-03-08'),('2012-04-06'),('2012-05-06'),('2012-06-04'),('2012-07-03'),('2012-08-02'),('2012-08-31'),('2012-09-30'),('2012-10-29'),('2012-11-28'),('2012-12-28'),('2013-01-27'),('2013-02-25'),('2013-03-27'),('2013-04-25'),('2013-05-25'),('2013-06-23'),('2013-07-22'),('2013-08-21'),('2013-09-19'),('2013-10-19'),('2013-11-17'),('2013-12-17'),('2014-01-16'),('2014-02-15'),('2014-03-16'),('2014-04-15'),('2014-05-14'),('2014-06-13'),('2014-07-12'),('2014-08-10'),('2014-09-09'),('2014-10-08'),('2014-11-06'),('2014-12-06'),('2015-01-05'),('2015-02-04'),('2015-03-05'),('2015-04-04'),('2015-05-04'),('2015-06-02'),('2015-07-02'),('2015-07-31'),('2015-08-29'),('2015-09-28'),('2015-10-27'),('2015-11-25'),('2015-12-25'),('2016-01-24'),('2016-02-22'),('2016-03-23'),('2016-04-22'),('2016-05-21'),('2016-06-20'),('2016-07-20'),('2016-08-18'),('2016-09-16'),('2016-10-16'),('2016-11-14'),('2016-12-14'),('2017-01-12'),('2017-02-11'),('2017-03-12'),('2017-04-11'),('2017-05-10'),('2017-06-09'),('2017-07-09'),('2017-08-07'),('2017-09-06'),('2017-10-05'),('2017-11-04'),('2017-12-03'),('2018-01-02'),('2018-01-31'),('2018-03-02'),('2018-03-31'),('2018-04-30'),('2018-05-29'),('2018-06-28'),('2018-07-27'),('2018-08-26'),('2018-09-25'),('2018-10-24'),('2018-11-23'),('2018-12-22'),('2019-01-21'),('2019-02-19'),('2019-03-21'),('2019-04-19'),('2019-05-18'),('2019-06-17'),('2019-07-16'),('2019-08-15'),('2019-09-14'),('2019-10-13'),('2019-11-12'),('2019-12-12'),('2020-01-10'),('2020-02-09'),('2020-03-09'),('2020-04-08'),('2020-05-07'),('2020-06-05'),('2020-07-05'),('2020-08-03'),('2020-09-02'),('2020-10-01'),('2020-10-31'),('2020-11-30'),('2020-12-30'),('2021-01-28'),('2021-02-27'),('2021-03-28'),('2021-04-27'),('2021-05-26'),('2021-06-24'),('2021-07-24'),('2021-08-22'),('2021-09-21'),('2021-10-20'),('2021-11-19'),('2021-12-19'),('2022-01-18'),('2022-02-16'),('2022-03-18'),('2022-04-16'),('2022-05-16'),('2022-06-14'),('2022-07-13'),('2022-08-12'),('2022-09-10'),('2022-10-09'),('2022-11-08'),('2022-12-08'),('2023-01-07'),('2023-02-05'),('2023-03-07'),('2023-04-06'),('2023-05-05'),('2023-06-04'),('2023-07-03'),('2023-08-01'),('2023-08-31'),('2023-09-29'),('2023-10-28'),('2023-11-27'),('2023-12-27'),('2024-01-25'),('2024-02-24'),('2024-03-25'),('2024-04-24'),('2024-05-23'),('2024-06-22'),('2024-07-21'),('2024-08-19'),('2024-09-18'),('2024-10-17'),('2024-11-15'),('2024-12-15'),('2025-01-13'),('2025-02-12'),('2025-03-14'),('2025-04-13'),('2025-05-12'),('2025-06-11'),('2025-07-10'),('2025-08-09'),('2025-09-07'),('2025-10-07'),('2025-11-05'),('2025-12-05'),('2026-01-03'),('2026-02-01'),('2026-03-03'),('2026-04-02'),('2026-05-01'),('2026-05-31'),('2026-06-30'),('2026-07-29'),('2026-08-28'),('2026-09-26'),('2026-10-26'),('2026-11-24'),('2026-12-24'),('2027-01-22'),('2027-02-21'),('2027-03-22'),('2027-04-21'),('2027-05-20'),('2027-06-19'),('2027-07-18'),('2027-08-17'),('2027-09-16'),('2027-10-15'),('2027-11-14'),('2027-12-13'),('2028-01-12'),('2028-02-10'),('2028-03-11'),('2028-04-09'),('2028-05-08'),('2028-06-07'),('2028-07-06'),('2028-08-05'),('2028-09-04'),('2028-10-03'),('2028-11-02'),('2028-12-02'),('2028-12-31'),('2029-01-30'),('2029-02-28'),('2029-03-30'),('2029-04-28'),('2029-05-27'),('2029-06-26'),('2029-07-25'),('2029-08-24'),('2029-09-22'),('2029-10-22'),('2029-11-21'),('2029-12-20'),('2030-01-19'),('2030-02-18'),('2030-03-19'),('2030-04-18'),('2030-05-17'),('2030-06-15'),('2030-07-15'),('2030-08-13'),('2030-09-11'),('2030-10-11'),('2030-11-10'),('2030-12-09');
-- created_at: 2026-04-01T16:08:47.172322400+00:00
-- finished_at: 2026-04-01T16:08:47.356195100+00:00
-- elapsed: 183ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003011a
-- desc: execute adapter call

    

        insert into AIRBNB.DEV.fct_reviews ("REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.264098100+00:00
-- finished_at: 2026-04-01T16:08:47.376784900+00:00
-- elapsed: 112ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320b6
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.322094200+00:00
-- finished_at: 2026-04-01T16:08:47.446490900+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e081-0007-7a2e0003309e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.385791100+00:00
-- finished_at: 2026-04-01T16:08:47.478038800+00:00
-- elapsed: 92ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340d6
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.455976100+00:00
-- finished_at: 2026-04-01T16:08:47.527612+00:00
-- elapsed: 71ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030122
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.358701100+00:00
-- finished_at: 2026-04-01T16:08:47.535694900+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320ba
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.484549900+00:00
-- finished_at: 2026-04-01T16:08:47.551081300+00:00
-- elapsed: 66ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330a2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.333627300+00:00
-- finished_at: 2026-04-01T16:08:47.595857600+00:00
-- elapsed: 262ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003011e
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-04-01T16:08:47.537602500+00:00
-- finished_at: 2026-04-01T16:08:47.612339200+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320c2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.508572200+00:00
-- finished_at: 2026-04-01T16:08:47.654300800+00:00
-- elapsed: 145ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030126
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.571947900+00:00
-- finished_at: 2026-04-01T16:08:47.671296800+00:00
-- elapsed: 99ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003012a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_HOSTS_CLEANSED_IS_SUPERHOST__T__F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.541506400+00:00
-- finished_at: 2026-04-01T16:08:47.711585300+00:00
-- elapsed: 170ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320ca
-- desc: execute adapter call
drop view if exists AIRBNB.DEV.fct_reviews__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.528369500+00:00
-- finished_at: 2026-04-01T16:08:47.751208400+00:00
-- elapsed: 222ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320c6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.565208200+00:00
-- finished_at: 2026-04-01T16:08:47.763002+00:00
-- elapsed: 197ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340da
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
-- created_at: 2026-04-01T16:08:47.569201100+00:00
-- finished_at: 2026-04-01T16:08:47.766478600+00:00
-- elapsed: 197ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320ce
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.474878300+00:00
-- finished_at: 2026-04-01T16:08:47.815520600+00:00
-- elapsed: 340ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320be
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
-- created_at: 2026-04-01T16:08:47.635384100+00:00
-- finished_at: 2026-04-01T16:08:47.830512100+00:00
-- elapsed: 195ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340de
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
-- created_at: 2026-04-01T16:08:47.770120200+00:00
-- finished_at: 2026-04-01T16:08:47.835202900+00:00
-- elapsed: 65ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030132
-- desc: get_column_schema_from_query adapter call
select * from (
        select to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_snapshot_time
    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.838554700+00:00
-- finished_at: 2026-04-01T16:08:47.902934800+00:00
-- elapsed: 64ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330aa
-- desc: get_column_schema_from_query adapter call
select * from (
        select to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_snapshot_time
    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.832135400+00:00
-- finished_at: 2026-04-01T16:08:47.915130900+00:00
-- elapsed: 82ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030136
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.843765900+00:00
-- finished_at: 2026-04-01T16:08:47.928399900+00:00
-- elapsed: 84ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320d6
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.913328900+00:00
-- finished_at: 2026-04-01T16:08:48.018227300+00:00
-- elapsed: 104ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003013a
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.915555200+00:00
-- finished_at: 2026-04-01T16:08:48.027296500+00:00
-- elapsed: 111ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320da
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.714193200+00:00
-- finished_at: 2026-04-01T16:08:48.033064800+00:00
-- elapsed: 318ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340e2
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.fct_reviews', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.035957100+00:00
-- finished_at: 2026-04-01T16:08:48.127554+00:00
-- elapsed: 91ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330ae
-- desc: execute adapter call
show grants on AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.667500400+00:00
-- finished_at: 2026-04-01T16:08:48.198808800+00:00
-- elapsed: 531ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003012e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.682791300+00:00
-- finished_at: 2026-04-01T16:08:48.237336400+00:00
-- elapsed: 554ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330a6
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
-- created_at: 2026-04-01T16:08:48.018668300+00:00
-- finished_at: 2026-04-01T16:08:48.302059100+00:00
-- elapsed: 283ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320de
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
-- created_at: 2026-04-01T16:08:47.758294600+00:00
-- finished_at: 2026-04-01T16:08:48.315750400+00:00
-- elapsed: 557ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340e6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:47.771947400+00:00
-- finished_at: 2026-04-01T16:08:48.333340+00:00
-- elapsed: 561ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320d2
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
-- created_at: 2026-04-01T16:08:48.213813500+00:00
-- finished_at: 2026-04-01T16:08:48.347609500+00:00
-- elapsed: 133ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340f2
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
-- created_at: 2026-04-01T16:08:48.030266100+00:00
-- finished_at: 2026-04-01T16:08:48.412168+00:00
-- elapsed: 381ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340ee
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.302508900+00:00
-- finished_at: 2026-04-01T16:08:48.524279+00:00
-- elapsed: 221ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330b2
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.321446100+00:00
-- finished_at: 2026-04-01T16:08:48.537488400+00:00
-- elapsed: 216ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330b6
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
-- created_at: 2026-04-01T16:08:47.928852400+00:00
-- finished_at: 2026-04-01T16:08:48.580927+00:00
-- elapsed: 652ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340ea
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
-- created_at: 2026-04-01T16:08:48.712436100+00:00
-- finished_at: 2026-04-01T16:08:48.899179800+00:00
-- elapsed: 186ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030146
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_DIM_LISTINGS_CLE_05E2397B186A7B9306FC747B3CC4EF83" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.246568100+00:00
-- finished_at: 2026-04-01T16:08:48.912937300+00:00
-- elapsed: 666ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003013e
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
-- created_at: 2026-04-01T16:08:48.581227600+00:00
-- finished_at: 2026-04-01T16:08:48.922687800+00:00
-- elapsed: 341ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320e2
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.764902500+00:00
-- finished_at: 2026-04-01T16:08:48.933777900+00:00
-- elapsed: 168ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330ba
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.341572700+00:00
-- finished_at: 2026-04-01T16:08:48.934391+00:00
-- elapsed: 592ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030142
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
-- created_at: 2026-04-01T16:08:48.760448300+00:00
-- finished_at: 2026-04-01T16:08:48.964731200+00:00
-- elapsed: 204ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340f6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_FCT_REVIEWS_BEB36F129A533890A78CC01AC370EF78" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.760010200+00:00
-- finished_at: 2026-04-01T16:08:48.965764800+00:00
-- elapsed: 205ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320e6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.761895800+00:00
-- finished_at: 2026-04-01T16:08:48.985130800+00:00
-- elapsed: 223ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320ea
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."CONSISTENT_CREATED_AT" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.867189800+00:00
-- finished_at: 2026-04-01T16:08:49.050836800+00:00
-- elapsed: 183ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003014a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_FCT_REVIEWS_REVIEWER_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.863153300+00:00
-- finished_at: 2026-04-01T16:08:49.097974500+00:00
-- elapsed: 234ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320ee
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.879143800+00:00
-- finished_at: 2026-04-01T16:08:49.104713700+00:00
-- elapsed: 225ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330be
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."POSITIVE_VALUES_DIM_LISTINGS_CLEANSED_MINIMUM_NIGHTS" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.888759900+00:00
-- finished_at: 2026-04-01T16:08:49.105954900+00:00
-- elapsed: 217ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340fe
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_FCT_REVIEWS_2F397514D7615E5AE30D8FCE9F0EA58D" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.870832500+00:00
-- finished_at: 2026-04-01T16:08:49.114873300+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bc8-3203-e097-0007-7a2e000340fa
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_LISTINGS_C_1CA6148A08C62A5218F2A162F9D2A9A6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.971756300+00:00
-- finished_at: 2026-04-01T16:08:49.394815400+00:00
-- elapsed: 423ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003014e
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
-- created_at: 2026-04-01T16:08:48.909508200+00:00
-- finished_at: 2026-04-01T16:08:49.463109200+00:00
-- elapsed: 553ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320f2
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
-- created_at: 2026-04-01T16:08:49.059533700+00:00
-- finished_at: 2026-04-01T16:08:49.549831+00:00
-- elapsed: 490ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330ca
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_fct_reviews_reviewer_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.fct_reviews
where reviewer_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.944446800+00:00
-- finished_at: 2026-04-01T16:08:49.555335300+00:00
-- elapsed: 610ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320f6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_listing_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where listing_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:49.104627200+00:00
-- finished_at: 2026-04-01T16:08:49.574499500+00:00
-- elapsed: 469ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bc8-3203-e097-0007-7a2e00034106
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:49.121196800+00:00
-- finished_at: 2026-04-01T16:08:49.584535800+00:00
-- elapsed: 463ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330c6
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
-- created_at: 2026-04-01T16:08:49.414524900+00:00
-- finished_at: 2026-04-01T16:08:49.593735300+00:00
-- elapsed: 179ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bc8-3203-e097-0007-7a2e0003410a
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
-- created_at: 2026-04-01T16:08:49.115614100+00:00
-- finished_at: 2026-04-01T16:08:49.620540300+00:00
-- elapsed: 504ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320fe
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.positive_values_dim_listings_cleansed_minimum_nights
    
    
    
    as (
    
  
SELECT * FROM AIRBNB.DEV.dim_listings_cleansed WHERE minimum_nights <= 0

  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:48.978174100+00:00
-- finished_at: 2026-04-01T16:08:49.682374700+00:00
-- elapsed: 704ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36bc8-3203-e07a-0007-7a2e000320fa
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
-- created_at: 2026-04-01T16:08:49.560346100+00:00
-- finished_at: 2026-04-01T16:08:49.705513800+00:00
-- elapsed: 145ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030152
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
-- created_at: 2026-04-01T16:08:49.633030200+00:00
-- finished_at: 2026-04-01T16:08:49.775059700+00:00
-- elapsed: 142ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030156
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
-- created_at: 2026-04-01T16:08:49.592294600+00:00
-- finished_at: 2026-04-01T16:08:49.809776900+00:00
-- elapsed: 217ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003015a
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
-- created_at: 2026-04-01T16:08:49.694724100+00:00
-- finished_at: 2026-04-01T16:08:49.849924600+00:00
-- elapsed: 155ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003015e
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
-- created_at: 2026-04-01T16:08:49.566370500+00:00
-- finished_at: 2026-04-01T16:08:49.849924600+00:00
-- elapsed: 283ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bc8-3203-e07a-0007-7a2e00032102
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
-- created_at: 2026-04-01T16:08:49.468519600+00:00
-- finished_at: 2026-04-01T16:08:49.904301600+00:00
-- elapsed: 435ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330ce
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
-- created_at: 2026-04-01T16:08:49.581168900+00:00
-- finished_at: 2026-04-01T16:08:49.926088300+00:00
-- elapsed: 344ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330d2
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
-- created_at: 2026-04-01T16:08:49.116969+00:00
-- finished_at: 2026-04-01T16:08:49.928618100+00:00
-- elapsed: 811ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330c2
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
-- created_at: 2026-04-01T16:08:48.995221500+00:00
-- finished_at: 2026-04-01T16:08:50.084588400+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bc8-3203-e097-0007-7a2e00034102
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.consistent_created_at
    
    
    
    as (
    
  SELECT * FROM AIRBNB.DEV.dim_listings_cleansed l
INNER JOIN AIRBNB.DEV.fct_reviews r
USING (listing_id)
WHERE l.created_at > r.review_date
  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:49.938120600+00:00
-- finished_at: 2026-04-01T16:08:50.153042+00:00
-- elapsed: 214ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030162
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
-- created_at: 2026-04-01T16:08:50.096257100+00:00
-- finished_at: 2026-04-01T16:08:50.225028+00:00
-- elapsed: 128ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030166
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
-- created_at: 2026-04-01T16:08:50.344799300+00:00
-- finished_at: 2026-04-01T16:08:51.280543400+00:00
-- elapsed: 935ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bc8-3203-e07a-0007-7a2e00032106
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
-- created_at: 2026-04-01T16:08:51.283701200+00:00
-- finished_at: 2026-04-01T16:08:51.651870200+00:00
-- elapsed: 368ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330d6
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_w_hosts', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:51.678694800+00:00
-- finished_at: 2026-04-01T16:08:51.779199+00:00
-- elapsed: 100ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003016a
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_w_hosts to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:51.779484700+00:00
-- finished_at: 2026-04-01T16:08:51.879060500+00:00
-- elapsed: 99ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bc8-3203-e07a-0007-7a2e0003210a
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_w_hosts to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:52.137550500+00:00
-- finished_at: 2026-04-01T16:08:52.289025600+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bc8-3203-e097-0007-7a2e0003410e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_TABLE__FBDA7436EBE2FFE341ACF0622C76D629" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:52.159029800+00:00
-- finished_at: 2026-04-01T16:08:52.318904900+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bc8-3203-e097-0007-7a2e00034112
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_C59E300E0DDDB335C4211147100AC1C6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:52.180396700+00:00
-- finished_at: 2026-04-01T16:08:52.329916900+00:00
-- elapsed: 149ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bc8-3203-e097-0007-7a2e00034116
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_07E7A515218EF6E3A17E164C642C7D18" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:52.187328600+00:00
-- finished_at: 2026-04-01T16:08:52.351431900+00:00
-- elapsed: 164ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bc8-3203-e097-0007-7a2e0003411a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_39596D790161761077FF1592B68943F6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:08:52.334808200+00:00
-- finished_at: 2026-04-01T16:08:52.735988300+00:00
-- elapsed: 401ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e00030172
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
-- created_at: 2026-04-01T16:08:52.318571200+00:00
-- finished_at: 2026-04-01T16:08:52.779918300+00:00
-- elapsed: 461ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bc8-3203-dfa2-0007-7a2e0003016e
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
-- created_at: 2026-04-01T16:08:52.359490500+00:00
-- finished_at: 2026-04-01T16:08:52.887203100+00:00
-- elapsed: 527ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bc8-3203-e097-0007-7a2e0003411e
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
-- created_at: 2026-04-01T16:08:52.743121200+00:00
-- finished_at: 2026-04-01T16:08:52.901727500+00:00
-- elapsed: 158ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bc8-3203-e097-0007-7a2e00034122
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
-- created_at: 2026-04-01T16:08:52.785899200+00:00
-- finished_at: 2026-04-01T16:08:52.963142600+00:00
-- elapsed: 177ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bc8-3203-e097-0007-7a2e00034126
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
-- created_at: 2026-04-01T16:08:52.328295900+00:00
-- finished_at: 2026-04-01T16:08:52.980750+00:00
-- elapsed: 652ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330da
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
-- created_at: 2026-04-01T16:08:52.904107300+00:00
-- finished_at: 2026-04-01T16:08:53.088841600+00:00
-- elapsed: 184ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bc8-3203-e07a-0007-7a2e0003210e
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
-- created_at: 2026-04-01T16:08:52.995025800+00:00
-- finished_at: 2026-04-01T16:08:53.148287500+00:00
-- elapsed: 153ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bc8-3203-e081-0007-7a2e000330de
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
