# Airbnb Analytics — Data Engineering Portfolio

A production-grade data pipeline built on Snowflake, dbt, and Dagster+, demonstrating end-to-end data engineering from raw source data to automated downstream delivery.

## Live Links

- [dbt Documentation & Data Lineage](https://jongreglarson.github.io/course/)
- [Elementary Data Observability Report](https://jongreglarson.github.io/course/upscaled-hub/)

## Stack

| Layer | Technology |
| --- | --- |
| Data Warehouse | Snowflake |
| Transformation | dbt 1.11 |
| Orchestration | Dagster+ Serverless |
| Observability | Elementary EDR |
| CI/CD | GitHub Actions |
| Downstream Delivery | Google Sheets |

## Project Highlights

- **Dimensional modeling**: staging → dimensions → facts → marts following Kimball methodology
- **78+ automated tests**: primary/foreign keys, accepted values, statistical bounds, source freshness
- **SCD Type 2 snapshots**: historical tracking of host and listing changes
- **Incremental loading**: efficient fact table updates using dbt incremental strategy
- **Full observability**: Elementary data quality monitoring with anomaly detection
- **Automated delivery**: Dagster asset materializes aggregated results to Google Sheets after each run

## Project Structure

```text
airbnb/          # dbt project + Dagster orchestration
.github/         # GitHub Actions workflows (docs deploy + Dagster deploy)
```

See [airbnb/README.md](airbnb/README.md) for full setup and architecture documentation.
