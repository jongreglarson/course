-- created_at: 2026-04-01T15:54:48.780102600+00:00
-- finished_at: 2026-04-01T15:54:49.064521400+00:00
-- elapsed: 284ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003201a
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-04-01T15:54:50.080386600+00:00
-- finished_at: 2026-04-01T15:54:50.223822+00:00
-- elapsed: 143ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003201e
-- desc: Get table schema
describe table "AIRBNB"."DEV"."FCT_REVIEWS";
-- created_at: 2026-04-01T15:54:50.080440200+00:00
-- finished_at: 2026-04-01T15:54:50.327148900+00:00
-- elapsed: 246ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e097-0007-7a2e0003401a
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS";
-- created_at: 2026-04-01T15:54:50.346598800+00:00
-- finished_at: 2026-04-01T15:54:50.461533700+00:00
-- elapsed: 114ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e097-0007-7a2e0003401e
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_HOSTS";
-- created_at: 2026-04-01T15:54:50.346598800+00:00
-- finished_at: 2026-04-01T15:54:50.511691800+00:00
-- elapsed: 165ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e081-0007-7a2e0003301a
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS";
-- created_at: 2026-04-01T15:54:50.462383700+00:00
-- finished_at: 2026-04-01T15:54:50.569953900+00:00
-- elapsed: 107ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e081-0007-7a2e0003301e
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_LISTINGS";
-- created_at: 2026-04-01T15:54:50.512472+00:00
-- finished_at: 2026-04-01T15:54:50.731488200+00:00
-- elapsed: 219ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003006a
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_REVIEWS";
-- created_at: 2026-04-01T15:54:50.573273300+00:00
-- finished_at: 2026-04-01T15:54:50.761486100+00:00
-- elapsed: 188ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003006e
-- desc: Get table schema
describe table "AIRBNB"."DEV"."DIM_LISTINGS_W_HOSTS";
-- created_at: 2026-04-01T15:54:53.841561400+00:00
-- finished_at: 2026-04-01T15:54:53.920355300+00:00
-- elapsed: 78ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bba-3203-e081-0007-7a2e00033022
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:53.954502700+00:00
-- finished_at: 2026-04-01T15:54:54.071435400+00:00
-- elapsed: 116ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c36bba-3203-dfa2-0007-7a2e00030072
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:54.957642500+00:00
-- finished_at: 2026-04-01T15:54:55.131251300+00:00
-- elapsed: 173ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-e097-0007-7a2e00034022
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:54.964241700+00:00
-- finished_at: 2026-04-01T15:54:55.191326700+00:00
-- elapsed: 227ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-e081-0007-7a2e00033026
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:55.098297900+00:00
-- finished_at: 2026-04-01T15:54:55.493134900+00:00
-- elapsed: 394ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bba-3203-dfa2-0007-7a2e00030076
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T15:54:55.198627600+00:00
-- finished_at: 2026-04-01T15:54:55.528996200+00:00
-- elapsed: 330ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bba-3203-e07a-0007-7a2e00032022
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T15:54:55.541059900+00:00
-- finished_at: 2026-04-01T15:54:55.778462200+00:00
-- elapsed: 237ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bba-3203-e097-0007-7a2e0003402a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_A60B59A84FBC4577A11DF360C50013BB" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:55.527432900+00:00
-- finished_at: 2026-04-01T15:54:55.803505800+00:00
-- elapsed: 276ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003202a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_D9770018E28873E7BE74335902D9E4E5" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:55.429062100+00:00
-- finished_at: 2026-04-01T15:54:55.808147300+00:00
-- elapsed: 379ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bba-3203-e097-0007-7a2e00034026
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
-- created_at: 2026-04-01T15:54:55.725944100+00:00
-- finished_at: 2026-04-01T15:54:55.923515800+00:00
-- elapsed: 197ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003202e
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:55.840780600+00:00
-- finished_at: 2026-04-01T15:54:55.928262400+00:00
-- elapsed: 87ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bba-3203-e081-0007-7a2e0003302e
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_hosts_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:55.928727200+00:00
-- finished_at: 2026-04-01T15:54:56.140119600+00:00
-- elapsed: 211ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003007e
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_hosts_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:55.912389+00:00
-- finished_at: 2026-04-01T15:54:56.205601900+00:00
-- elapsed: 293ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e07a-0007-7a2e00032032
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
-- created_at: 2026-04-01T15:54:55.923849+00:00
-- finished_at: 2026-04-01T15:54:56.279510800+00:00
-- elapsed: 355ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bba-3203-e097-0007-7a2e00034032
-- desc: execute adapter call

    
    truncate table "AIRBNB"."DEV"."SEED_FULL_MOON_DATES"
  
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.210122+00:00
-- finished_at: 2026-04-01T15:54:56.298798700+00:00
-- elapsed: 88ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e097-0007-7a2e00034036
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.304448900+00:00
-- finished_at: 2026-04-01T15:54:56.399036600+00:00
-- elapsed: 94ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e081-0007-7a2e00033032
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.408842100+00:00
-- finished_at: 2026-04-01T15:54:56.514574600+00:00
-- elapsed: 105ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-dfa2-0007-7a2e00030086
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.279886100+00:00
-- finished_at: 2026-04-01T15:54:56.557628+00:00
-- elapsed: 277ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bba-3203-dfa2-0007-7a2e00030082
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.520675300+00:00
-- finished_at: 2026-04-01T15:54:56.590902400+00:00
-- elapsed: 70ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003203a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."FCT_REVIEWS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.432432600+00:00
-- finished_at: 2026-04-01T15:54:56.658241900+00:00
-- elapsed: 225ms
-- outcome: success
-- dialect: snowflake
-- node_id: unit_test.airbnb.mart_fullmoon_reviews.unittest_fullmoon_matcher
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003008a
-- desc: execute adapter call
-- Build actual result given inputs
WITH
              	"AIRBNB_DEV_fct_reviews" as (SELECT CAST(NULL AS VARCHAR) AS REVIEW_ID, CAST(NULL AS NUMBER) AS LISTING_ID, CAST('2025-01-13' AS TIMESTAMP_NTZ(9)) AS REVIEW_DATE, CAST(NULL AS VARCHAR) AS REVIEWER_NAME, CAST(NULL AS VARCHAR) AS REVIEW_TEXT, CAST(NULL AS VARCHAR) AS REVIEW_SENTIMENT
UNION ALL
SELECT CAST(NULL AS VARCHAR) AS REVIEW_ID, CAST(NULL AS NUMBER) AS LISTING_ID, CAST('2025-01-14' AS TIMESTAMP_NTZ(9)) AS REVIEW_DATE, CAST(NULL AS VARCHAR) AS REVIEWER_NAME, CAST(NULL AS VARCHAR) AS REVIEW_TEXT, CAST(NULL AS VARCHAR) AS REVIEW_SENTIMENT
UNION ALL
SELECT CAST(NULL AS VARCHAR) AS REVIEW_ID, CAST(NULL AS NUMBER) AS LISTING_ID, CAST('2025-01-15' AS TIMESTAMP_NTZ(9)) AS REVIEW_DATE, CAST(NULL AS VARCHAR) AS REVIEWER_NAME, CAST(NULL AS VARCHAR) AS REVIEW_TEXT, CAST(NULL AS VARCHAR) AS REVIEW_SENTIMENT),
  	"AIRBNB_DEV_seed_full_moon_dates" as (SELECT CAST('2025-01-14' AS DATE) AS FULL_MOON_DATE),
  	"AIRBNB_DEV_mart_fullmoon_reviews_expect" as (SELECT CAST(NULL AS VARCHAR) AS REVIEW_ID, CAST(NULL AS NUMBER) AS LISTING_ID, CAST('2025-01-13' AS TIMESTAMP_NTZ(9)) AS REVIEW_DATE, CAST(NULL AS VARCHAR) AS REVIEWER_NAME, CAST(NULL AS VARCHAR) AS REVIEW_TEXT, CAST(NULL AS VARCHAR) AS REVIEW_SENTIMENT, CAST('not full moon' AS VARCHAR) AS IS_FULL_MOON
UNION ALL
SELECT CAST(NULL AS VARCHAR) AS REVIEW_ID, CAST(NULL AS NUMBER) AS LISTING_ID, CAST('2025-01-14' AS TIMESTAMP_NTZ(9)) AS REVIEW_DATE, CAST(NULL AS VARCHAR) AS REVIEWER_NAME, CAST(NULL AS VARCHAR) AS REVIEW_TEXT, CAST(NULL AS VARCHAR) AS REVIEW_SENTIMENT, CAST('not full moon' AS VARCHAR) AS IS_FULL_MOON
UNION ALL
SELECT CAST(NULL AS VARCHAR) AS REVIEW_ID, CAST(NULL AS NUMBER) AS LISTING_ID, CAST('2025-01-15' AS TIMESTAMP_NTZ(9)) AS REVIEW_DATE, CAST(NULL AS VARCHAR) AS REVIEWER_NAME, CAST(NULL AS VARCHAR) AS REVIEW_TEXT, CAST(NULL AS VARCHAR) AS REVIEW_SENTIMENT, CAST('full moon' AS VARCHAR) AS IS_FULL_MOON),
  	"AIRBNB_DEV_mart_fullmoon_reviews_actual" as (

WITH fct_reviews AS (
    SELECT * FROM "AIRBNB_DEV_fct_reviews"
),
full_moon_dates AS (
    SELECT * FROM "AIRBNB_DEV_seed_full_moon_dates"
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
  ON (TO_DATE(r.review_date) = DATEADD(DAY, 1, fm.full_moon_date)))
            (SELECT IS_FULL_MOON, REVIEW_DATE, 'actual' AS actual_or_expected FROM "AIRBNB_DEV_mart_fullmoon_reviews_actual")
            UNION ALL
            (SELECT IS_FULL_MOON, REVIEW_DATE, 'expected' AS actual_or_expected FROM "AIRBNB_DEV_mart_fullmoon_reviews_expect")
            ORDER BY IS_FULL_MOON, REVIEW_DATE
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "unit_test.airbnb.mart_fullmoon_reviews.unittest_fullmoon_matcher", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.611228400+00:00
-- finished_at: 2026-04-01T15:54:56.726599600+00:00
-- elapsed: 115ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e097-0007-7a2e0003403a
-- desc: execute adapter call
-- back compat for old kwarg name
  
  begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.572050600+00:00
-- finished_at: 2026-04-01T15:54:56.746994600+00:00
-- elapsed: 174ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003203e
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-04-01T15:54:55.813043700+00:00
-- finished_at: 2026-04-01T15:54:56.886327300+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bba-3203-e097-0007-7a2e0003402e
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
-- created_at: 2026-04-01T15:54:55.787983200+00:00
-- finished_at: 2026-04-01T15:54:56.886573700+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003007a
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
-- created_at: 2026-04-01T15:54:56.147471600+00:00
-- finished_at: 2026-04-01T15:54:56.985250600+00:00
-- elapsed: 837ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bba-3203-e07a-0007-7a2e00032036
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_hosts_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.894222900+00:00
-- finished_at: 2026-04-01T15:54:57.051485600+00:00
-- elapsed: 157ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36bba-3203-e097-0007-7a2e00034042
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
-- created_at: 2026-04-01T15:54:56.726938+00:00
-- finished_at: 2026-04-01T15:54:57.081040700+00:00
-- elapsed: 354ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e081-0007-7a2e00033036
-- desc: execute adapter call

    

        insert into AIRBNB.DEV.fct_reviews ("REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:56.896826100+00:00
-- finished_at: 2026-04-01T15:54:57.088886200+00:00
-- elapsed: 192ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36bba-3203-e07a-0007-7a2e00032042
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
-- created_at: 2026-04-01T15:54:56.754945400+00:00
-- finished_at: 2026-04-01T15:54:57.130217200+00:00
-- elapsed: 375ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bba-3203-e097-0007-7a2e0003403e
-- desc: add_query adapter call
insert into AIRBNB.DEV.seed_full_moon_dates (FULL_MOON_DATE) values
            ('2009-01-11'),('2009-02-09'),('2009-03-11'),('2009-04-09'),('2009-05-09'),('2009-06-07'),('2009-07-07'),('2009-08-06'),('2009-09-04'),('2009-10-04'),('2009-11-02'),('2009-12-02'),('2009-12-31'),('2010-01-30'),('2010-02-28'),('2010-03-30'),('2010-04-28'),('2010-05-28'),('2010-06-26'),('2010-07-26'),('2010-08-24'),('2010-09-23'),('2010-10-23'),('2010-11-21'),('2010-12-21'),('2011-01-19'),('2011-02-18'),('2011-03-19'),('2011-04-18'),('2011-05-17'),('2011-06-15'),('2011-07-15'),('2011-08-13'),('2011-09-12'),('2011-10-12'),('2011-11-10'),('2011-12-10'),('2012-01-09'),('2012-02-07'),('2012-03-08'),('2012-04-06'),('2012-05-06'),('2012-06-04'),('2012-07-03'),('2012-08-02'),('2012-08-31'),('2012-09-30'),('2012-10-29'),('2012-11-28'),('2012-12-28'),('2013-01-27'),('2013-02-25'),('2013-03-27'),('2013-04-25'),('2013-05-25'),('2013-06-23'),('2013-07-22'),('2013-08-21'),('2013-09-19'),('2013-10-19'),('2013-11-17'),('2013-12-17'),('2014-01-16'),('2014-02-15'),('2014-03-16'),('2014-04-15'),('2014-05-14'),('2014-06-13'),('2014-07-12'),('2014-08-10'),('2014-09-09'),('2014-10-08'),('2014-11-06'),('2014-12-06'),('2015-01-05'),('2015-02-04'),('2015-03-05'),('2015-04-04'),('2015-05-04'),('2015-06-02'),('2015-07-02'),('2015-07-31'),('2015-08-29'),('2015-09-28'),('2015-10-27'),('2015-11-25'),('2015-12-25'),('2016-01-24'),('2016-02-22'),('2016-03-23'),('2016-04-22'),('2016-05-21'),('2016-06-20'),('2016-07-20'),('2016-08-18'),('2016-09-16'),('2016-10-16'),('2016-11-14'),('2016-12-14'),('2017-01-12'),('2017-02-11'),('2017-03-12'),('2017-04-11'),('2017-05-10'),('2017-06-09'),('2017-07-09'),('2017-08-07'),('2017-09-06'),('2017-10-05'),('2017-11-04'),('2017-12-03'),('2018-01-02'),('2018-01-31'),('2018-03-02'),('2018-03-31'),('2018-04-30'),('2018-05-29'),('2018-06-28'),('2018-07-27'),('2018-08-26'),('2018-09-25'),('2018-10-24'),('2018-11-23'),('2018-12-22'),('2019-01-21'),('2019-02-19'),('2019-03-21'),('2019-04-19'),('2019-05-18'),('2019-06-17'),('2019-07-16'),('2019-08-15'),('2019-09-14'),('2019-10-13'),('2019-11-12'),('2019-12-12'),('2020-01-10'),('2020-02-09'),('2020-03-09'),('2020-04-08'),('2020-05-07'),('2020-06-05'),('2020-07-05'),('2020-08-03'),('2020-09-02'),('2020-10-01'),('2020-10-31'),('2020-11-30'),('2020-12-30'),('2021-01-28'),('2021-02-27'),('2021-03-28'),('2021-04-27'),('2021-05-26'),('2021-06-24'),('2021-07-24'),('2021-08-22'),('2021-09-21'),('2021-10-20'),('2021-11-19'),('2021-12-19'),('2022-01-18'),('2022-02-16'),('2022-03-18'),('2022-04-16'),('2022-05-16'),('2022-06-14'),('2022-07-13'),('2022-08-12'),('2022-09-10'),('2022-10-09'),('2022-11-08'),('2022-12-08'),('2023-01-07'),('2023-02-05'),('2023-03-07'),('2023-04-06'),('2023-05-05'),('2023-06-04'),('2023-07-03'),('2023-08-01'),('2023-08-31'),('2023-09-29'),('2023-10-28'),('2023-11-27'),('2023-12-27'),('2024-01-25'),('2024-02-24'),('2024-03-25'),('2024-04-24'),('2024-05-23'),('2024-06-22'),('2024-07-21'),('2024-08-19'),('2024-09-18'),('2024-10-17'),('2024-11-15'),('2024-12-15'),('2025-01-13'),('2025-02-12'),('2025-03-14'),('2025-04-13'),('2025-05-12'),('2025-06-11'),('2025-07-10'),('2025-08-09'),('2025-09-07'),('2025-10-07'),('2025-11-05'),('2025-12-05'),('2026-01-03'),('2026-02-01'),('2026-03-03'),('2026-04-02'),('2026-05-01'),('2026-05-31'),('2026-06-30'),('2026-07-29'),('2026-08-28'),('2026-09-26'),('2026-10-26'),('2026-11-24'),('2026-12-24'),('2027-01-22'),('2027-02-21'),('2027-03-22'),('2027-04-21'),('2027-05-20'),('2027-06-19'),('2027-07-18'),('2027-08-17'),('2027-09-16'),('2027-10-15'),('2027-11-14'),('2027-12-13'),('2028-01-12'),('2028-02-10'),('2028-03-11'),('2028-04-09'),('2028-05-08'),('2028-06-07'),('2028-07-06'),('2028-08-05'),('2028-09-04'),('2028-10-03'),('2028-11-02'),('2028-12-02'),('2028-12-31'),('2029-01-30'),('2029-02-28'),('2029-03-30'),('2029-04-28'),('2029-05-27'),('2029-06-26'),('2029-07-25'),('2029-08-24'),('2029-09-22'),('2029-10-22'),('2029-11-21'),('2029-12-20'),('2030-01-19'),('2030-02-18'),('2030-03-19'),('2030-04-18'),('2030-05-17'),('2030-06-15'),('2030-07-15'),('2030-08-13'),('2030-09-11'),('2030-10-11'),('2030-11-10'),('2030-12-09');
-- created_at: 2026-04-01T15:54:55.228818500+00:00
-- finished_at: 2026-04-01T15:54:57.155814800+00:00
-- elapsed: 1.9s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-e081-0007-7a2e0003302a
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
-- created_at: 2026-04-01T15:54:55.230204100+00:00
-- finished_at: 2026-04-01T15:54:57.161116+00:00
-- elapsed: 1.9s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-e07a-0007-7a2e00032026
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
-- created_at: 2026-04-01T15:54:57.081478900+00:00
-- finished_at: 2026-04-01T15:54:57.193063400+00:00
-- elapsed: 111ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003008e
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.170272900+00:00
-- finished_at: 2026-04-01T15:54:57.242295900+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-e081-0007-7a2e0003303e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.162458500+00:00
-- finished_at: 2026-04-01T15:54:57.252319300+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-e097-0007-7a2e00034046
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.197718500+00:00
-- finished_at: 2026-04-01T15:54:57.323868+00:00
-- elapsed: 126ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36bba-3203-e097-0007-7a2e0003404a
-- desc: execute adapter call
drop view if exists AIRBNB.DEV.fct_reviews__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.247835700+00:00
-- finished_at: 2026-04-01T15:54:57.348875200+00:00
-- elapsed: 101ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-dfa2-0007-7a2e00030096
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.131879500+00:00
-- finished_at: 2026-04-01T15:54:57.355004500+00:00
-- elapsed: 223ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36bba-3203-e081-0007-7a2e0003303a
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-04-01T15:54:57.257339400+00:00
-- finished_at: 2026-04-01T15:54:57.380116100+00:00
-- elapsed: 122ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-e07a-0007-7a2e00032046
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.207089100+00:00
-- finished_at: 2026-04-01T15:54:57.395134100+00:00
-- elapsed: 188ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bba-3203-e097-0007-7a2e0003404e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.245011700+00:00
-- finished_at: 2026-04-01T15:54:57.397399200+00:00
-- elapsed: 152ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bba-3203-dfa2-0007-7a2e0003009a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.237406700+00:00
-- finished_at: 2026-04-01T15:54:57.397380100+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bba-3203-dfa2-0007-7a2e00030092
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.257593700+00:00
-- finished_at: 2026-04-01T15:54:57.412258800+00:00
-- elapsed: 154ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bba-3203-e081-0007-7a2e00033042
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_HOSTS_CLEANSED_IS_SUPERHOST__T__F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.391144300+00:00
-- finished_at: 2026-04-01T15:54:57.463383400+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-e097-0007-7a2e00034052
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.359078500+00:00
-- finished_at: 2026-04-01T15:54:57.491424500+00:00
-- elapsed: 132ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003204a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.473514200+00:00
-- finished_at: 2026-04-01T15:54:57.572432100+00:00
-- elapsed: 98ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-dfa2-0007-7a2e000300a6
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.496150+00:00
-- finished_at: 2026-04-01T15:54:57.588425700+00:00
-- elapsed: 92ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-e097-0007-7a2e0003405e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.594862+00:00
-- finished_at: 2026-04-01T15:54:57.648661+00:00
-- elapsed: 53ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36bba-3203-e081-0007-7a2e0003304a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.581453500+00:00
-- finished_at: 2026-04-01T15:54:57.674568300+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36bba-3203-e07a-0007-7a2e0003204e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T15:54:57.411622700+00:00
-- finished_at: 2026-04-01T15:54:57.803384800+00:00
-- elapsed: 391ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bba-3203-e081-0007-7a2e00033046
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
