-- created_at: 2026-04-01T16:39:38.581872700+00:00
-- finished_at: 2026-04-01T16:39:38.733117+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003229a
-- desc: list_relations_in_parallel
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-04-01T16:39:39.727010600+00:00
-- finished_at: 2026-04-01T16:39:39.835509600+00:00
-- elapsed: 108ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-e097-0007-7a2e0003423e
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS";
-- created_at: 2026-04-01T16:39:39.728569500+00:00
-- finished_at: 2026-04-01T16:39:39.845808600+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302e2
-- desc: Get table schema
describe table "AIRBNB"."DEV"."FCT_REVIEWS";
-- created_at: 2026-04-01T16:39:39.863855500+00:00
-- finished_at: 2026-04-01T16:39:39.936253500+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-e097-0007-7a2e00034242
-- desc: Get table schema
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS";
-- created_at: 2026-04-01T16:39:39.867366600+00:00
-- finished_at: 2026-04-01T16:39:39.943337100+00:00
-- elapsed: 75ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003229e
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_HOSTS";
-- created_at: 2026-04-01T16:39:39.937989+00:00
-- finished_at: 2026-04-01T16:39:39.999086900+00:00
-- elapsed: 61ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322a2
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_LISTINGS";
-- created_at: 2026-04-01T16:39:39.943969700+00:00
-- finished_at: 2026-04-01T16:39:40.013595800+00:00
-- elapsed: 69ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302e6
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_REVIEWS";
-- created_at: 2026-04-01T16:39:39.999995500+00:00
-- finished_at: 2026-04-01T16:39:40.072478200+00:00
-- elapsed: 72ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302ea
-- desc: Get table schema
describe table "AIRBNB"."DEV"."DIM_LISTINGS_W_HOSTS";
-- created_at: 2026-04-01T16:39:41.819325700+00:00
-- finished_at: 2026-04-01T16:39:41.899462+00:00
-- elapsed: 80ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322a6
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:41.903144400+00:00
-- finished_at: 2026-04-01T16:39:42.003356500+00:00
-- elapsed: 100ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302ee
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:42.351584100+00:00
-- finished_at: 2026-04-01T16:39:42.535148+00:00
-- elapsed: 183ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36be7-3203-e097-0007-7a2e00034246
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:42.586878100+00:00
-- finished_at: 2026-04-01T16:39:42.767010400+00:00
-- elapsed: 180ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302f2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:42.646932200+00:00
-- finished_at: 2026-04-01T16:39:42.964443800+00:00
-- elapsed: 317ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36be7-3203-e097-0007-7a2e0003424a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:39:42.704232300+00:00
-- finished_at: 2026-04-01T16:39:43.064318200+00:00
-- elapsed: 360ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e097-0007-7a2e0003424e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:42.535931+00:00
-- finished_at: 2026-04-01T16:39:43.066516400+00:00
-- elapsed: 530ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322aa
-- desc: execute adapter call

    
    truncate table "AIRBNB"."DEV"."SEED_FULL_MOON_DATES"
  
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:42.570878100+00:00
-- finished_at: 2026-04-01T16:39:43.085623500+00:00
-- elapsed: 514ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302f6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:39:42.800842400+00:00
-- finished_at: 2026-04-01T16:39:43.122259500+00:00
-- elapsed: 321ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322ae
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
-- created_at: 2026-04-01T16:39:42.989770+00:00
-- finished_at: 2026-04-01T16:39:43.204200200+00:00
-- elapsed: 214ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322b2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_A60B59A84FBC4577A11DF360C50013BB" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.098363100+00:00
-- finished_at: 2026-04-01T16:39:43.254363600+00:00
-- elapsed: 156ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36be7-3203-e097-0007-7a2e00034256
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_SOURCE_EXPECT_D9770018E28873E7BE74335902D9E4E5" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.066971800+00:00
-- finished_at: 2026-04-01T16:39:43.324338300+00:00
-- elapsed: 257ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302fa
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "seed.airbnb.seed_full_moon_dates", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.135344600+00:00
-- finished_at: 2026-04-01T16:39:43.406376700+00:00
-- elapsed: 271ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36be7-3203-e097-0007-7a2e0003425a
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_hosts_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.334752800+00:00
-- finished_at: 2026-04-01T16:39:43.415213100+00:00
-- elapsed: 80ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36be7-3203-e097-0007-7a2e0003425e
-- desc: add_query adapter call
BEGIN;
-- created_at: 2026-04-01T16:39:43.409809100+00:00
-- finished_at: 2026-04-01T16:39:43.562816500+00:00
-- elapsed: 153ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36be7-3203-e097-0007-7a2e00034262
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_hosts_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.403068700+00:00
-- finished_at: 2026-04-01T16:39:43.610267700+00:00
-- elapsed: 207ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322be
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
-- created_at: 2026-04-01T16:39:43.613160200+00:00
-- finished_at: 2026-04-01T16:39:43.780674400+00:00
-- elapsed: 167ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322ca
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.265445200+00:00
-- finished_at: 2026-04-01T16:39:43.928560100+00:00
-- elapsed: 663ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322ba
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
-- created_at: 2026-04-01T16:39:43.784525100+00:00
-- finished_at: 2026-04-01T16:39:43.930492500+00:00
-- elapsed: 145ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030302
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.417967600+00:00
-- finished_at: 2026-04-01T16:39:43.944160900+00:00
-- elapsed: 526ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322c2
-- desc: add_query adapter call
insert into AIRBNB.DEV.seed_full_moon_dates (FULL_MOON_DATE) values
            ('2009-01-11'),('2009-02-09'),('2009-03-11'),('2009-04-09'),('2009-05-09'),('2009-06-07'),('2009-07-07'),('2009-08-06'),('2009-09-04'),('2009-10-04'),('2009-11-02'),('2009-12-02'),('2009-12-31'),('2010-01-30'),('2010-02-28'),('2010-03-30'),('2010-04-28'),('2010-05-28'),('2010-06-26'),('2010-07-26'),('2010-08-24'),('2010-09-23'),('2010-10-23'),('2010-11-21'),('2010-12-21'),('2011-01-19'),('2011-02-18'),('2011-03-19'),('2011-04-18'),('2011-05-17'),('2011-06-15'),('2011-07-15'),('2011-08-13'),('2011-09-12'),('2011-10-12'),('2011-11-10'),('2011-12-10'),('2012-01-09'),('2012-02-07'),('2012-03-08'),('2012-04-06'),('2012-05-06'),('2012-06-04'),('2012-07-03'),('2012-08-02'),('2012-08-31'),('2012-09-30'),('2012-10-29'),('2012-11-28'),('2012-12-28'),('2013-01-27'),('2013-02-25'),('2013-03-27'),('2013-04-25'),('2013-05-25'),('2013-06-23'),('2013-07-22'),('2013-08-21'),('2013-09-19'),('2013-10-19'),('2013-11-17'),('2013-12-17'),('2014-01-16'),('2014-02-15'),('2014-03-16'),('2014-04-15'),('2014-05-14'),('2014-06-13'),('2014-07-12'),('2014-08-10'),('2014-09-09'),('2014-10-08'),('2014-11-06'),('2014-12-06'),('2015-01-05'),('2015-02-04'),('2015-03-05'),('2015-04-04'),('2015-05-04'),('2015-06-02'),('2015-07-02'),('2015-07-31'),('2015-08-29'),('2015-09-28'),('2015-10-27'),('2015-11-25'),('2015-12-25'),('2016-01-24'),('2016-02-22'),('2016-03-23'),('2016-04-22'),('2016-05-21'),('2016-06-20'),('2016-07-20'),('2016-08-18'),('2016-09-16'),('2016-10-16'),('2016-11-14'),('2016-12-14'),('2017-01-12'),('2017-02-11'),('2017-03-12'),('2017-04-11'),('2017-05-10'),('2017-06-09'),('2017-07-09'),('2017-08-07'),('2017-09-06'),('2017-10-05'),('2017-11-04'),('2017-12-03'),('2018-01-02'),('2018-01-31'),('2018-03-02'),('2018-03-31'),('2018-04-30'),('2018-05-29'),('2018-06-28'),('2018-07-27'),('2018-08-26'),('2018-09-25'),('2018-10-24'),('2018-11-23'),('2018-12-22'),('2019-01-21'),('2019-02-19'),('2019-03-21'),('2019-04-19'),('2019-05-18'),('2019-06-17'),('2019-07-16'),('2019-08-15'),('2019-09-14'),('2019-10-13'),('2019-11-12'),('2019-12-12'),('2020-01-10'),('2020-02-09'),('2020-03-09'),('2020-04-08'),('2020-05-07'),('2020-06-05'),('2020-07-05'),('2020-08-03'),('2020-09-02'),('2020-10-01'),('2020-10-31'),('2020-11-30'),('2020-12-30'),('2021-01-28'),('2021-02-27'),('2021-03-28'),('2021-04-27'),('2021-05-26'),('2021-06-24'),('2021-07-24'),('2021-08-22'),('2021-09-21'),('2021-10-20'),('2021-11-19'),('2021-12-19'),('2022-01-18'),('2022-02-16'),('2022-03-18'),('2022-04-16'),('2022-05-16'),('2022-06-14'),('2022-07-13'),('2022-08-12'),('2022-09-10'),('2022-10-09'),('2022-11-08'),('2022-12-08'),('2023-01-07'),('2023-02-05'),('2023-03-07'),('2023-04-06'),('2023-05-05'),('2023-06-04'),('2023-07-03'),('2023-08-01'),('2023-08-31'),('2023-09-29'),('2023-10-28'),('2023-11-27'),('2023-12-27'),('2024-01-25'),('2024-02-24'),('2024-03-25'),('2024-04-24'),('2024-05-23'),('2024-06-22'),('2024-07-21'),('2024-08-19'),('2024-09-18'),('2024-10-17'),('2024-11-15'),('2024-12-15'),('2025-01-13'),('2025-02-12'),('2025-03-14'),('2025-04-13'),('2025-05-12'),('2025-06-11'),('2025-07-10'),('2025-08-09'),('2025-09-07'),('2025-10-07'),('2025-11-05'),('2025-12-05'),('2026-01-03'),('2026-02-01'),('2026-03-03'),('2026-04-02'),('2026-05-01'),('2026-05-31'),('2026-06-30'),('2026-07-29'),('2026-08-28'),('2026-09-26'),('2026-10-26'),('2026-11-24'),('2026-12-24'),('2027-01-22'),('2027-02-21'),('2027-03-22'),('2027-04-21'),('2027-05-20'),('2027-06-19'),('2027-07-18'),('2027-08-17'),('2027-09-16'),('2027-10-15'),('2027-11-14'),('2027-12-13'),('2028-01-12'),('2028-02-10'),('2028-03-11'),('2028-04-09'),('2028-05-08'),('2028-06-07'),('2028-07-06'),('2028-08-05'),('2028-09-04'),('2028-10-03'),('2028-11-02'),('2028-12-02'),('2028-12-31'),('2029-01-30'),('2029-02-28'),('2029-03-30'),('2029-04-28'),('2029-05-27'),('2029-06-26'),('2029-07-25'),('2029-08-24'),('2029-09-22'),('2029-10-22'),('2029-11-21'),('2029-12-20'),('2030-01-19'),('2030-02-18'),('2030-03-19'),('2030-04-18'),('2030-05-17'),('2030-06-15'),('2030-07-15'),('2030-08-13'),('2030-09-11'),('2030-10-11'),('2030-11-10'),('2030-12-09');
-- created_at: 2026-04-01T16:39:43.218297500+00:00
-- finished_at: 2026-04-01T16:39:44.005227600+00:00
-- elapsed: 786ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36be7-3203-dfa2-0007-7a2e000302fe
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
-- created_at: 2026-04-01T16:39:43.935868700+00:00
-- finished_at: 2026-04-01T16:39:44.015977900+00:00
-- elapsed: 80ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e097-0007-7a2e00034266
-- desc: execute adapter call
describe table AIRBNB.DEV.fct_reviews__dbt_tmp
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.566307900+00:00
-- finished_at: 2026-04-01T16:39:44.038576200+00:00
-- elapsed: 472ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322c6
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_hosts_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:43.935346300+00:00
-- finished_at: 2026-04-01T16:39:44.194781400+00:00
-- elapsed: 259ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_d9770018e28873e7be74335902d9e4e5.30c1080ecf
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030306
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
-- created_at: 2026-04-01T16:39:44.020725200+00:00
-- finished_at: 2026-04-01T16:39:44.197445900+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_source_expect_a60b59a84fbc4577a11df360c50013bb.c640d5077f
-- query_id: 01c36be7-3203-e097-0007-7a2e0003426a
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
-- created_at: 2026-04-01T16:39:42.803018500+00:00
-- finished_at: 2026-04-01T16:39:44.197446+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e097-0007-7a2e00034252
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
-- created_at: 2026-04-01T16:39:43.945808+00:00
-- finished_at: 2026-04-01T16:39:44.198208+00:00
-- elapsed: 252ms
-- outcome: success
-- dialect: snowflake
-- node_id: seed.airbnb.seed_full_moon_dates
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003030a
-- desc: add_query adapter call
COMMIT;
-- created_at: 2026-04-01T16:39:43.117431700+00:00
-- finished_at: 2026-04-01T16:39:44.213729400+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322b6
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
-- created_at: 2026-04-01T16:39:44.021293100+00:00
-- finished_at: 2026-04-01T16:39:44.234551700+00:00
-- elapsed: 213ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322ce
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."FCT_REVIEWS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.255105400+00:00
-- finished_at: 2026-04-01T16:39:44.389015300+00:00
-- elapsed: 133ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030312
-- desc: execute adapter call
-- back compat for old kwarg name
  
  begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.232862600+00:00
-- finished_at: 2026-04-01T16:39:44.405178500+00:00
-- elapsed: 172ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003030e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.205564900+00:00
-- finished_at: 2026-04-01T16:39:44.465001800+00:00
-- elapsed: 259ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322d2
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.416784400+00:00
-- finished_at: 2026-04-01T16:39:44.529199200+00:00
-- elapsed: 112ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e097-0007-7a2e00034272
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.429106300+00:00
-- finished_at: 2026-04-01T16:39:44.555596800+00:00
-- elapsed: 126ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322d6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_HOSTS_CLEANSED_IS_SUPERHOST__T__F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.478750100+00:00
-- finished_at: 2026-04-01T16:39:44.571952500+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322da
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.467907200+00:00
-- finished_at: 2026-04-01T16:39:44.597393800+00:00
-- elapsed: 129ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003031a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.496478+00:00
-- finished_at: 2026-04-01T16:39:44.613519300+00:00
-- elapsed: 117ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36be7-3203-e097-0007-7a2e00034276
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.465982200+00:00
-- finished_at: 2026-04-01T16:39:44.616299300+00:00
-- elapsed: 150ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030316
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.537690500+00:00
-- finished_at: 2026-04-01T16:39:44.631403400+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322de
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.583256900+00:00
-- finished_at: 2026-04-01T16:39:44.679139200+00:00
-- elapsed: 95ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030322
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.389328600+00:00
-- finished_at: 2026-04-01T16:39:44.715647600+00:00
-- elapsed: 326ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e097-0007-7a2e0003426e
-- desc: execute adapter call

    

        insert into AIRBNB.DEV.fct_reviews ("REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT")
        (
            select "REVIEW_ID", "LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME", "REVIEW_TEXT", "REVIEW_SENTIMENT"
            from AIRBNB.DEV.fct_reviews__dbt_tmp
        )
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.635579900+00:00
-- finished_at: 2026-04-01T16:39:44.718139900+00:00
-- elapsed: 82ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003032e
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.684473400+00:00
-- finished_at: 2026-04-01T16:39:44.749316200+00:00
-- elapsed: 64ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e097-0007-7a2e0003427a
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.553057100+00:00
-- finished_at: 2026-04-01T16:39:44.786998400+00:00
-- elapsed: 233ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322e2
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
-- created_at: 2026-04-01T16:39:44.726446500+00:00
-- finished_at: 2026-04-01T16:39:44.801013+00:00
-- elapsed: 74ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e097-0007-7a2e00034282
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_LISTINGS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.755197800+00:00
-- finished_at: 2026-04-01T16:39:44.818136900+00:00
-- elapsed: 62ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322ea
-- desc: execute adapter call
describe table "AIRBNB"."DEV"."SCD_RAW_HOSTS__dbt_tmp"
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.716037600+00:00
-- finished_at: 2026-04-01T16:39:44.828592700+00:00
-- elapsed: 112ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322e6
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.803632600+00:00
-- finished_at: 2026-04-01T16:39:44.920000200+00:00
-- elapsed: 116ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030332
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.821256900+00:00
-- finished_at: 2026-04-01T16:39:44.981591300+00:00
-- elapsed: 160ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322ee
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
-- created_at: 2026-04-01T16:39:44.569024200+00:00
-- finished_at: 2026-04-01T16:39:45.019678300+00:00
-- elapsed: 450ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003031e
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
-- created_at: 2026-04-01T16:39:44.603674700+00:00
-- finished_at: 2026-04-01T16:39:45.043518200+00:00
-- elapsed: 439ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030326
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.985964500+00:00
-- finished_at: 2026-04-01T16:39:45.065472900+00:00
-- elapsed: 79ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003033e
-- desc: get_column_schema_from_query adapter call
select * from (
        select to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_snapshot_time
    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.832645200+00:00
-- finished_at: 2026-04-01T16:39:45.079857700+00:00
-- elapsed: 247ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003033a
-- desc: execute adapter call
drop view if exists AIRBNB.DEV.fct_reviews__dbt_tmp cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.619327900+00:00
-- finished_at: 2026-04-01T16:39:45.079857900+00:00
-- elapsed: 460ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003032a
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.920600400+00:00
-- finished_at: 2026-04-01T16:39:45.096656200+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36be7-3203-e097-0007-7a2e00034286
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:44.622159+00:00
-- finished_at: 2026-04-01T16:39:45.138098400+00:00
-- elapsed: 515ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36be7-3203-e097-0007-7a2e0003427e
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
-- created_at: 2026-04-01T16:39:45.035561600+00:00
-- finished_at: 2026-04-01T16:39:45.159656200+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36be7-3203-e097-0007-7a2e0003428a
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
-- created_at: 2026-04-01T16:39:44.834107300+00:00
-- finished_at: 2026-04-01T16:39:45.188285100+00:00
-- elapsed: 354ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030336
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
-- created_at: 2026-04-01T16:39:45.050724800+00:00
-- finished_at: 2026-04-01T16:39:45.265585300+00:00
-- elapsed: 214ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36be7-3203-e097-0007-7a2e0003428e
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
-- created_at: 2026-04-01T16:39:45.077536200+00:00
-- finished_at: 2026-04-01T16:39:45.265707400+00:00
-- elapsed: 188ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e097-0007-7a2e00034292
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.088517400+00:00
-- finished_at: 2026-04-01T16:39:45.271960700+00:00
-- elapsed: 183ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322f2
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
-- created_at: 2026-04-01T16:39:45.205249+00:00
-- finished_at: 2026-04-01T16:39:45.298344+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e097-0007-7a2e00034296
-- desc: get_column_schema_from_query adapter call
select * from (
        select to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_snapshot_time
    ) as __dbt_sbq
    where false
    limit 0

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.150551100+00:00
-- finished_at: 2026-04-01T16:39:45.301697300+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322fe
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
-- created_at: 2026-04-01T16:39:45.083688200+00:00
-- finished_at: 2026-04-01T16:39:45.410674900+00:00
-- elapsed: 326ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322fa
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.fct_reviews', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.313839200+00:00
-- finished_at: 2026-04-01T16:39:45.417637400+00:00
-- elapsed: 103ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032302
-- desc: execute adapter call
begin
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.099455500+00:00
-- finished_at: 2026-04-01T16:39:45.420223500+00:00
-- elapsed: 320ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36be7-3203-e07a-0007-7a2e000322f6
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.416057900+00:00
-- finished_at: 2026-04-01T16:39:45.531729300+00:00
-- elapsed: 115ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.fct_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032306
-- desc: execute adapter call
show grants on AIRBNB.DEV.fct_reviews
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.fct_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.265989300+00:00
-- finished_at: 2026-04-01T16:39:45.565661+00:00
-- elapsed: 299ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e097-0007-7a2e0003429a
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
-- created_at: 2026-04-01T16:39:45.565978800+00:00
-- finished_at: 2026-04-01T16:39:45.717696700+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_listings
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003230e
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_listings", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.461939700+00:00
-- finished_at: 2026-04-01T16:39:45.783907700+00:00
-- elapsed: 321ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030342
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_DIM_LISTINGS_CLE_05E2397B186A7B9306FC747B3CC4EF83" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.616725400+00:00
-- finished_at: 2026-04-01T16:39:45.833356400+00:00
-- elapsed: 216ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030346
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_FCT_REVIEWS_BEB36F129A533890A78CC01AC370EF78" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.629126100+00:00
-- finished_at: 2026-04-01T16:39:45.866231400+00:00
-- elapsed: 237ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032312
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_FCT_REVIEWS_2F397514D7615E5AE30D8FCE9F0EA58D" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.634966400+00:00
-- finished_at: 2026-04-01T16:39:45.868674300+00:00
-- elapsed: 233ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003034a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."CONSISTENT_CREATED_AT" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.712893500+00:00
-- finished_at: 2026-04-01T16:39:45.998016700+00:00
-- elapsed: 285ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36be7-3203-e097-0007-7a2e000342a2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.699412400+00:00
-- finished_at: 2026-04-01T16:39:46.000100+00:00
-- elapsed: 300ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36be7-3203-e097-0007-7a2e0003429e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_LISTINGS_C_1CA6148A08C62A5218F2A162F9D2A9A6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.703970800+00:00
-- finished_at: 2026-04-01T16:39:46.010614500+00:00
-- elapsed: 306ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003034e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.716715500+00:00
-- finished_at: 2026-04-01T16:39:46.016339400+00:00
-- elapsed: 299ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032316
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."POSITIVE_VALUES_DIM_LISTINGS_CLEANSED_MINIMUM_NIGHTS" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.799025300+00:00
-- finished_at: 2026-04-01T16:39:46.083966800+00:00
-- elapsed: 284ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003231a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.417961100+00:00
-- finished_at: 2026-04-01T16:39:46.350068200+00:00
-- elapsed: 932ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003230a
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
-- created_at: 2026-04-01T16:39:45.904974600+00:00
-- finished_at: 2026-04-01T16:39:46.353742500+00:00
-- elapsed: 448ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36be7-3203-e097-0007-7a2e000342b2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_FCT_REVIEWS_REVIEWER_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.845642400+00:00
-- finished_at: 2026-04-01T16:39:46.397671600+00:00
-- elapsed: 552ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36be7-3203-e097-0007-7a2e000342a6
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
-- created_at: 2026-04-01T16:39:46.020525700+00:00
-- finished_at: 2026-04-01T16:39:46.401663100+00:00
-- elapsed: 381ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36be7-3203-e097-0007-7a2e000342b6
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_listing_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where listing_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:45.798347700+00:00
-- finished_at: 2026-04-01T16:39:46.416451100+00:00
-- elapsed: 618ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003231e
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
-- created_at: 2026-04-01T16:39:46.010597800+00:00
-- finished_at: 2026-04-01T16:39:46.451292600+00:00
-- elapsed: 440ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032322
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
-- created_at: 2026-04-01T16:39:45.881020+00:00
-- finished_at: 2026-04-01T16:39:46.452985+00:00
-- elapsed: 571ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36be7-3203-e097-0007-7a2e000342ae
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
-- created_at: 2026-04-01T16:39:46.404533200+00:00
-- finished_at: 2026-04-01T16:39:46.535055+00:00
-- elapsed: 130ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_fct_reviews_beb36f129a533890a78cc01ac370ef78.0b37f1e00f
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003232e
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
-- created_at: 2026-04-01T16:39:46.422081700+00:00
-- finished_at: 2026-04-01T16:39:46.552299800+00:00
-- elapsed: 130ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003035e
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
-- created_at: 2026-04-01T16:39:46.411896+00:00
-- finished_at: 2026-04-01T16:39:46.585473600+00:00
-- elapsed: 173ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032332
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
-- created_at: 2026-04-01T16:39:46.462365700+00:00
-- finished_at: 2026-04-01T16:39:46.618544700+00:00
-- elapsed: 156ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032336
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
-- created_at: 2026-04-01T16:39:46.461708100+00:00
-- finished_at: 2026-04-01T16:39:46.622519+00:00
-- elapsed: 160ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36be7-3203-e097-0007-7a2e000342ba
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
-- created_at: 2026-04-01T16:39:46.350553200+00:00
-- finished_at: 2026-04-01T16:39:46.630249500+00:00
-- elapsed: 279ms
-- outcome: success
-- dialect: snowflake
-- node_id: snapshot.airbnb.scd_raw_hosts
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003035a
-- desc: execute adapter call

    commit
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "snapshot.airbnb.scd_raw_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:46.005678300+00:00
-- finished_at: 2026-04-01T16:39:46.633579500+00:00
-- elapsed: 627ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030352
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
-- created_at: 2026-04-01T16:39:46.036499800+00:00
-- finished_at: 2026-04-01T16:39:46.755899800+00:00
-- elapsed: 719ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032326
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.positive_values_dim_listings_cleansed_minimum_nights
    
    
    
    as (
    
  
SELECT * FROM AIRBNB.DEV.dim_listings_cleansed WHERE minimum_nights <= 0

  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:46.138575200+00:00
-- finished_at: 2026-04-01T16:39:46.799670100+00:00
-- elapsed: 661ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030356
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:46.364861100+00:00
-- finished_at: 2026-04-01T16:39:46.800254700+00:00
-- elapsed: 435ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003232a
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_fct_reviews_reviewer_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.fct_reviews
where reviewer_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:46.645794300+00:00
-- finished_at: 2026-04-01T16:39:46.851449300+00:00
-- elapsed: 205ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030362
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
-- created_at: 2026-04-01T16:39:45.881995600+00:00
-- finished_at: 2026-04-01T16:39:46.896900600+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36be7-3203-e097-0007-7a2e000342aa
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.consistent_created_at
    
    
    
    as (
    
  SELECT * FROM AIRBNB.DEV.dim_listings_cleansed l
INNER JOIN AIRBNB.DEV.fct_reviews r
USING (listing_id)
WHERE l.created_at > r.review_date
  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:46.766875300+00:00
-- finished_at: 2026-04-01T16:39:46.900775800+00:00
-- elapsed: 133ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36be7-3203-e097-0007-7a2e000342be
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
-- created_at: 2026-04-01T16:39:46.809374300+00:00
-- finished_at: 2026-04-01T16:39:47.020008+00:00
-- elapsed: 210ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36be7-3203-e097-0007-7a2e000342c2
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
-- created_at: 2026-04-01T16:39:46.810958800+00:00
-- finished_at: 2026-04-01T16:39:47.045404700+00:00
-- elapsed: 234ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_fct_reviews_reviewer_name.8204e43c88
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030366
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
-- created_at: 2026-04-01T16:39:46.904847100+00:00
-- finished_at: 2026-04-01T16:39:47.133928+00:00
-- elapsed: 229ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003233a
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
-- created_at: 2026-04-01T16:39:47.100514900+00:00
-- finished_at: 2026-04-01T16:39:47.802013400+00:00
-- elapsed: 701ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003233e
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
-- created_at: 2026-04-01T16:39:47.813504900+00:00
-- finished_at: 2026-04-01T16:39:48.249267600+00:00
-- elapsed: 435ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003036a
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_w_hosts', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.254198700+00:00
-- finished_at: 2026-04-01T16:39:48.414592800+00:00
-- elapsed: 160ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36be7-3203-e097-0007-7a2e000342ca
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_w_hosts to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.414880600+00:00
-- finished_at: 2026-04-01T16:39:48.519885200+00:00
-- elapsed: 105ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032342
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_w_hosts to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.548709700+00:00
-- finished_at: 2026-04-01T16:39:48.668304900+00:00
-- elapsed: 119ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032346
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_07E7A515218EF6E3A17E164C642C7D18" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.571383500+00:00
-- finished_at: 2026-04-01T16:39:48.683705200+00:00
-- elapsed: 112ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36be7-3203-e097-0007-7a2e000342ce
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_39596D790161761077FF1592B68943F6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.562870200+00:00
-- finished_at: 2026-04-01T16:39:48.687504700+00:00
-- elapsed: 124ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003036e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_C59E300E0DDDB335C4211147100AC1C6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.553295200+00:00
-- finished_at: 2026-04-01T16:39:48.761682400+00:00
-- elapsed: 208ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36be7-3203-e097-0007-7a2e000342d2
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_TABLE__FBDA7436EBE2FFE341ACF0622C76D629" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:48.680029800+00:00
-- finished_at: 2026-04-01T16:39:49.105030800+00:00
-- elapsed: 425ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030372
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
-- created_at: 2026-04-01T16:39:48.771490700+00:00
-- finished_at: 2026-04-01T16:39:49.127616200+00:00
-- elapsed: 356ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032352
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
-- created_at: 2026-04-01T16:39:48.689276600+00:00
-- finished_at: 2026-04-01T16:39:49.162772200+00:00
-- elapsed: 473ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003234a
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
-- created_at: 2026-04-01T16:39:49.111918800+00:00
-- finished_at: 2026-04-01T16:39:49.239123900+00:00
-- elapsed: 127ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36be7-3203-e07a-0007-7a2e00032356
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
-- created_at: 2026-04-01T16:39:49.132705600+00:00
-- finished_at: 2026-04-01T16:39:49.266800200+00:00
-- elapsed: 134ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36be7-3203-e097-0007-7a2e000342d6
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
-- created_at: 2026-04-01T16:39:48.698347600+00:00
-- finished_at: 2026-04-01T16:39:49.375943100+00:00
-- elapsed: 677ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003234e
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
-- created_at: 2026-04-01T16:39:49.168984500+00:00
-- finished_at: 2026-04-01T16:39:49.378476800+00:00
-- elapsed: 209ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36be7-3203-e097-0007-7a2e000342da
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
-- created_at: 2026-04-01T16:39:49.385183800+00:00
-- finished_at: 2026-04-01T16:39:49.536576300+00:00
-- elapsed: 151ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36be7-3203-dfa2-0007-7a2e00030376
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
-- created_at: 2026-04-01T16:39:47.421022400+00:00
-- finished_at: 2026-04-01T16:39:49.585716800+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36be7-3203-e097-0007-7a2e000342c6
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
-- created_at: 2026-04-01T16:39:49.589024200+00:00
-- finished_at: 2026-04-01T16:39:50.012827400+00:00
-- elapsed: 423ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36be7-3203-dfa2-0007-7a2e0003037a
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.mart_fullmoon_reviews', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:50.021420100+00:00
-- finished_at: 2026-04-01T16:39:50.135725600+00:00
-- elapsed: 114ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36be7-3203-e097-0007-7a2e000342de
-- desc: execute adapter call
grant select on AIRBNB.DEV.mart_fullmoon_reviews to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:39:50.136131400+00:00
-- finished_at: 2026-04-01T16:39:50.345855600+00:00
-- elapsed: 209ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.mart_fullmoon_reviews
-- query_id: 01c36be7-3203-e07a-0007-7a2e0003235a
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.mart_fullmoon_reviews to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.mart_fullmoon_reviews", "profile_name": "airbnb", "target_name": "dev"} */;
