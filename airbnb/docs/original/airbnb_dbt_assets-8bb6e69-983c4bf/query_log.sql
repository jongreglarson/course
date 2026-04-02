-- created_at: 2026-04-01T16:19:13.337800+00:00
-- finished_at: 2026-04-01T16:19:13.493434400+00:00
-- elapsed: 155ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bd3-3203-e081-0007-7a2e000331f2
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_HOSTS";
-- created_at: 2026-04-01T16:19:13.534836+00:00
-- finished_at: 2026-04-01T16:19:13.636429600+00:00
-- elapsed: 101ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003222a
-- desc: Get table schema
describe table "AIRBNB"."RAW"."RAW_LISTINGS";
-- created_at: 2026-04-01T16:19:13.336288600+00:00
-- finished_at: 2026-04-01T16:19:13.691489100+00:00
-- elapsed: 355ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e0003029e
-- desc: Get table schema
describe table "AIRBNB"."DEV"."FCT_REVIEWS";
-- created_at: 2026-04-01T16:19:13.637298500+00:00
-- finished_at: 2026-04-01T16:19:13.758703500+00:00
-- elapsed: 121ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341e2
-- desc: Get table schema
describe table "AIRBNB"."DEV"."DIM_LISTINGS_W_HOSTS";
-- created_at: 2026-04-01T16:19:15.718062+00:00
-- finished_at: 2026-04-01T16:19:15.836097+00:00
-- elapsed: 118ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003222e
-- desc: execute adapter call
show terse schemas in database AIRBNB
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:15.852393900+00:00
-- finished_at: 2026-04-01T16:19:16.188658700+00:00
-- elapsed: 336ms
-- outcome: success
-- dialect: snowflake
-- node_id: operation.airbnb.airbnb-on_run_start-0
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341e6
-- desc: execute adapter call
CREATE TABLE IF NOT EXISTS DEV.audit_log ( model_name STRING, run_timestamp TIMESTAMP )
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:16.809473100+00:00
-- finished_at: 2026-04-01T16:19:17.139752300+00:00
-- elapsed: 330ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341ea
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-04-01T16:19:17.089072800+00:00
-- finished_at: 2026-04-01T16:19:17.258468900+00:00
-- elapsed: 169ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032232
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV" LIMIT 10000;
-- created_at: 2026-04-01T16:19:17.266273+00:00
-- finished_at: 2026-04-01T16:19:17.559486400+00:00
-- elapsed: 293ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341ee
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
-- created_at: 2026-04-01T16:19:17.572054800+00:00
-- finished_at: 2026-04-01T16:19:17.717292200+00:00
-- elapsed: 145ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bd3-3203-e081-0007-7a2e000331f6
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:17.153266500+00:00
-- finished_at: 2026-04-01T16:19:17.800322100+00:00
-- elapsed: 647ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302a2
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
-- created_at: 2026-04-01T16:19:17.717893900+00:00
-- finished_at: 2026-04-01T16:19:17.926450200+00:00
-- elapsed: 208ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302a6
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:17.805031700+00:00
-- finished_at: 2026-04-01T16:19:17.937141300+00:00
-- elapsed: 132ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341f2
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_hosts_cleansed to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:17.937654300+00:00
-- finished_at: 2026-04-01T16:19:18.577392300+00:00
-- elapsed: 639ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302aa
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_hosts_cleansed to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:17.931005+00:00
-- finished_at: 2026-04-01T16:19:18.707906900+00:00
-- elapsed: 776ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_cleansed
-- query_id: 01c36bd3-3203-e081-0007-7a2e000331fa
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:18.582607100+00:00
-- finished_at: 2026-04-01T16:19:19.204495500+00:00
-- elapsed: 621ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_hosts_cleansed
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032236
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_hosts_cleansed', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_hosts_cleansed", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.156997900+00:00
-- finished_at: 2026-04-01T16:19:19.355976+00:00
-- elapsed: 198ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003223a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.201977+00:00
-- finished_at: 2026-04-01T16:19:19.358583700+00:00
-- elapsed: 156ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032242
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.162597+00:00
-- finished_at: 2026-04-01T16:19:19.366028100+00:00
-- elapsed: 203ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003223e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.167754200+00:00
-- finished_at: 2026-04-01T16:19:19.519559800+00:00
-- elapsed: 351ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033202
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.370578400+00:00
-- finished_at: 2026-04-01T16:19:19.569744500+00:00
-- elapsed: 199ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341f6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."CONSISTENT_CREATED_AT" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.368627+00:00
-- finished_at: 2026-04-01T16:19:19.577347600+00:00
-- elapsed: 208ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341fa
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.167176+00:00
-- finished_at: 2026-04-01T16:19:19.589636+00:00
-- elapsed: 422ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bd3-3203-e081-0007-7a2e000331fe
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.525481500+00:00
-- finished_at: 2026-04-01T16:19:19.709308500+00:00
-- elapsed: 183ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032246
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.587168400+00:00
-- finished_at: 2026-04-01T16:19:19.721213400+00:00
-- elapsed: 134ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003224a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.559339800+00:00
-- finished_at: 2026-04-01T16:19:19.732317600+00:00
-- elapsed: 172ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bd3-3203-e097-0007-7a2e000341fe
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.595942700+00:00
-- finished_at: 2026-04-01T16:19:19.769527600+00:00
-- elapsed: 173ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034202
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."POSITIVE_VALUES_DIM_LISTINGS_CLEANSED_MINIMUM_NIGHTS" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.723369800+00:00
-- finished_at: 2026-04-01T16:19:19.919506700+00:00
-- elapsed: 196ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003224e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.726533600+00:00
-- finished_at: 2026-04-01T16:19:19.954138600+00:00
-- elapsed: 227ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003420a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.735846+00:00
-- finished_at: 2026-04-01T16:19:20.077338400+00:00
-- elapsed: 341ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032252
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_HOSTS_CLEANSED_HOST_NAME" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.366404600+00:00
-- finished_at: 2026-04-01T16:19:20.098807700+00:00
-- elapsed: 732ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033206
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."NOT_NULL_DIM_LISTINGS_CLEANSED_LISTING_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.937881500+00:00
-- finished_at: 2026-04-01T16:19:20.147191800+00:00
-- elapsed: 209ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003420e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_FCT_REVIEWS_2F397514D7615E5AE30D8FCE9F0EA58D" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.717403500+00:00
-- finished_at: 2026-04-01T16:19:20.301050100+00:00
-- elapsed: 583ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034206
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
-- created_at: 2026-04-01T16:19:19.773782200+00:00
-- finished_at: 2026-04-01T16:19:20.638583700+00:00
-- elapsed: 864ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bd3-3203-e081-0007-7a2e0003320e
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.positive_values_dim_listings_cleansed_minimum_nights
    
    
    
    as (
    
  
SELECT * FROM AIRBNB.DEV.dim_listings_cleansed WHERE minimum_nights <= 0

  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.960187700+00:00
-- finished_at: 2026-04-01T16:19:20.654404400+00:00
-- elapsed: 694ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033212
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:20.107876500+00:00
-- finished_at: 2026-04-01T16:19:20.669454500+00:00
-- elapsed: 561ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032256
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_listing_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where listing_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:19.585607100+00:00
-- finished_at: 2026-04-01T16:19:20.679891100+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bd3-3203-e081-0007-7a2e0003320a
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_listings_cleansed_host_id
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_listings_cleansed
where host_id is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:20.087330800+00:00
-- finished_at: 2026-04-01T16:19:20.684427400+00:00
-- elapsed: 597ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033216
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.not_null_dim_hosts_cleansed_host_name
    
    
    
    as (
    
  
    
    



select *
from AIRBNB.DEV.dim_hosts_cleansed
where host_name is null



  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:20.653095100+00:00
-- finished_at: 2026-04-01T16:19:20.830078400+00:00
-- elapsed: 176ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.positive_values_dim_listings_cleansed_minimum_nights.5dac2ba3aa
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034212
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
-- created_at: 2026-04-01T16:19:20.664681500+00:00
-- finished_at: 2026-04-01T16:19:20.852288+00:00
-- elapsed: 187ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_id.de84c3da05
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034216
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
-- created_at: 2026-04-01T16:19:20.687309700+00:00
-- finished_at: 2026-04-01T16:19:20.902309800+00:00
-- elapsed: 215ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_host_id.084e4105be
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003225a
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
-- created_at: 2026-04-01T16:19:20.691555700+00:00
-- finished_at: 2026-04-01T16:19:21.161911900+00:00
-- elapsed: 470ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_hosts_cleansed_host_name.42386c5830
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003225e
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
-- created_at: 2026-04-01T16:19:19.559934800+00:00
-- finished_at: 2026-04-01T16:19:21.689000200+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302b6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:19.514072500+00:00
-- finished_at: 2026-04-01T16:19:21.712317800+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302b2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:21.718435300+00:00
-- finished_at: 2026-04-01T16:19:21.922334500+00:00
-- elapsed: 203ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bd3-3203-e081-0007-7a2e0003321a
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."UNIQUE_DIM_HOSTS_CLEANSED_HOST_ID" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:21.815021600+00:00
-- finished_at: 2026-04-01T16:19:21.989463400+00:00
-- elapsed: 174ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003421a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:22.003049500+00:00
-- finished_at: 2026-04-01T16:19:22.157940700+00:00
-- elapsed: 154ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032266
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_HOSTS_CLEANSED_IS_SUPERHOST__T__F" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:22.082984900+00:00
-- finished_at: 2026-04-01T16:19:22.240921700+00:00
-- elapsed: 157ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003421e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "AIRBNB"."DEV_TEST_RESULTS" LIMIT 10000;
-- created_at: 2026-04-01T16:19:20.323983700+00:00
-- finished_at: 2026-04-01T16:19:22.256924900+00:00
-- elapsed: 1.9s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_listings_cleansed_listing_id.930e4e859e
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302be
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
-- created_at: 2026-04-01T16:19:20.677317500+00:00
-- finished_at: 2026-04-01T16:19:22.337630900+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.not_null_dim_listings_cleansed_listing_id.2da437bec9
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302c2
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
-- created_at: 2026-04-01T16:19:21.932726300+00:00
-- finished_at: 2026-04-01T16:19:22.457510100+00:00
-- elapsed: 524ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032262
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
-- created_at: 2026-04-01T16:19:22.254023500+00:00
-- finished_at: 2026-04-01T16:19:22.516320+00:00
-- elapsed: 262ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034226
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."ACCEPTED_VALUES_DIM_LISTINGS_C_1CA6148A08C62A5218F2A162F9D2A9A6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:22.466524800+00:00
-- finished_at: 2026-04-01T16:19:22.602229600+00:00
-- elapsed: 135ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.unique_dim_hosts_cleansed_host_id.d7e4771347
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003226a
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
-- created_at: 2026-04-01T16:19:22.164655500+00:00
-- finished_at: 2026-04-01T16:19:22.856740100+00:00
-- elapsed: 692ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034222
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
-- created_at: 2026-04-01T16:19:21.696222+00:00
-- finished_at: 2026-04-01T16:19:22.955770600+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302c6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."RELATIONSHIPS_DIM_LISTINGS_CLE_05E2397B186A7B9306FC747B3CC4EF83" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:22.867530700+00:00
-- finished_at: 2026-04-01T16:19:23.040375300+00:00
-- elapsed: 172ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_hosts_cleansed_is_superhost__t__f.16850963bf
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003226e
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
-- created_at: 2026-04-01T16:19:20.156688600+00:00
-- finished_at: 2026-04-01T16:19:23.588225600+00:00
-- elapsed: 3.4s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302ba
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
-- created_at: 2026-04-01T16:19:19.575710100+00:00
-- finished_at: 2026-04-01T16:19:23.644917100+00:00
-- elapsed: 4.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302ae
-- desc: execute adapter call
create or replace transient  table AIRBNB.DEV_test_results.consistent_created_at
    
    
    
    as (
    
  SELECT * FROM AIRBNB.DEV.dim_listings_cleansed l
INNER JOIN AIRBNB.DEV.fct_reviews r
USING (listing_id)
WHERE l.created_at > r.review_date
  
  
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.consistent_created_at.0dc3d99b2e", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:22.523619100+00:00
-- finished_at: 2026-04-01T16:19:23.888230500+00:00
-- elapsed: 1.4s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302ca
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
-- created_at: 2026-04-01T16:19:23.604920700+00:00
-- finished_at: 2026-04-01T16:19:24.002249600+00:00
-- elapsed: 397ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_fct_reviews_2f397514d7615e5ae30d8fce9f0ea58d.ba838561e0
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033222
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
-- created_at: 2026-04-01T16:19:23.651369500+00:00
-- finished_at: 2026-04-01T16:19:24.125400800+00:00
-- elapsed: 474ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.consistent_created_at.0dc3d99b2e
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033226
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
-- created_at: 2026-04-01T16:19:23.904928+00:00
-- finished_at: 2026-04-01T16:19:24.141848700+00:00
-- elapsed: 236ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.accepted_values_dim_listings_c_1ca6148a08c62a5218f2a162f9d2a9a6.242225f8d9
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032272
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
-- created_at: 2026-04-01T16:19:22.962041500+00:00
-- finished_at: 2026-04-01T16:19:24.175446+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bd3-3203-e081-0007-7a2e0003321e
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
-- created_at: 2026-04-01T16:19:24.191763400+00:00
-- finished_at: 2026-04-01T16:19:24.387017700+00:00
-- elapsed: 195ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.relationships_dim_listings_cle_05e2397b186a7b9306fc747b3cc4ef83.461efdeae6
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032276
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
-- created_at: 2026-04-01T16:19:24.865983100+00:00
-- finished_at: 2026-04-01T16:19:26.153057600+00:00
-- elapsed: 1.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bd3-3203-e081-0007-7a2e0003322a
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
-- created_at: 2026-04-01T16:19:26.158571+00:00
-- finished_at: 2026-04-01T16:19:27.089180100+00:00
-- elapsed: 930ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302ce
-- desc: execute adapter call
INSERT INTO DEV.audit_log VALUES ('AIRBNB.DEV.dim_listings_w_hosts', CURRENT_TIMESTAMP)
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.100524200+00:00
-- finished_at: 2026-04-01T16:19:27.269507600+00:00
-- elapsed: 168ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003422a
-- desc: execute adapter call
grant select on AIRBNB.DEV.dim_listings_w_hosts to transform
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.269988400+00:00
-- finished_at: 2026-04-01T16:19:27.386055100+00:00
-- elapsed: 116ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.airbnb.dim_listings_w_hosts
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302d2
-- desc: execute adapter call

        
            grant select on AIRBNB.DEV.dim_listings_w_hosts to reporter
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.airbnb.dim_listings_w_hosts", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.425646800+00:00
-- finished_at: 2026-04-01T16:19:27.636559+00:00
-- elapsed: 210ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003422e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_TABLE__FBDA7436EBE2FFE341ACF0622C76D629" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.439296700+00:00
-- finished_at: 2026-04-01T16:19:27.650631700+00:00
-- elapsed: 211ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bd3-3203-e081-0007-7a2e0003322e
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_C59E300E0DDDB335C4211147100AC1C6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.424434700+00:00
-- finished_at: 2026-04-01T16:19:27.972489600+00:00
-- elapsed: 548ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bd3-3203-e081-0007-7a2e00033232
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_07E7A515218EF6E3A17E164C642C7D18" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.425399100+00:00
-- finished_at: 2026-04-01T16:19:28.258238600+00:00
-- elapsed: 832ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302d6
-- desc: execute adapter call
drop table if exists "AIRBNB"."DEV_TEST_RESULTS"."DBT_EXPECTATIONS_EXPECT_COLUMN_39596D790161761077FF1592B68943F6" cascade
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1", "profile_name": "airbnb", "target_name": "dev"} */;
-- created_at: 2026-04-01T16:19:27.655346900+00:00
-- finished_at: 2026-04-01T16:19:28.551923400+00:00
-- elapsed: 896ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003227a
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
-- created_at: 2026-04-01T16:19:27.989077900+00:00
-- finished_at: 2026-04-01T16:19:28.585815200+00:00
-- elapsed: 596ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bd3-3203-e07a-0007-7a2e0003227e
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
-- created_at: 2026-04-01T16:19:28.564634+00:00
-- finished_at: 2026-04-01T16:19:28.740345700+00:00
-- elapsed: 175ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_c59e300e0dddb335c4211147100ac1c6.f5d629b2d0
-- query_id: 01c36bd3-3203-e07a-0007-7a2e00032282
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
-- created_at: 2026-04-01T16:19:28.591369+00:00
-- finished_at: 2026-04-01T16:19:28.835853900+00:00
-- elapsed: 244ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_07e7a515218ef6e3a17e164c642c7d18.e9b06632db
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034236
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
-- created_at: 2026-04-01T16:19:28.270723600+00:00
-- finished_at: 2026-04-01T16:19:29.112312400+00:00
-- elapsed: 841ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bd3-3203-e097-0007-7a2e00034232
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
-- created_at: 2026-04-01T16:19:27.641452300+00:00
-- finished_at: 2026-04-01T16:19:29.741481200+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302da
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
-- created_at: 2026-04-01T16:19:29.119918500+00:00
-- finished_at: 2026-04-01T16:19:29.743276400+00:00
-- elapsed: 623ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_column_39596d790161761077ff1592b68943f6.d888f43ae1
-- query_id: 01c36bd3-3203-dfa2-0007-7a2e000302de
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
-- created_at: 2026-04-01T16:19:29.752903+00:00
-- finished_at: 2026-04-01T16:19:29.879700800+00:00
-- elapsed: 126ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.airbnb.dbt_expectations_expect_table__fbda7436ebe2ffe341acf0622c76d629.84eaf2ca53
-- query_id: 01c36bd3-3203-e097-0007-7a2e0003423a
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
