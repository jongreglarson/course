#!/bin/bash
set -euo pipefail

pip install --upgrade pip setuptools wheel

pip install \
  dagster \
  dagster-cloud \
  dagster-dbt \
  "dbt-core<1.12" \
  "dbt-snowflake<1.12" \
  "gspread>=6.0" \
  "google-auth>=2.0"
