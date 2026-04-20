#!/bin/bash
set -euo pipefail

pip install --upgrade pip setuptools wheel

# Disable PEP 517 build isolation globally so the subsequent pip install . step
# doesn't hang trying to bootstrap a sandboxed build environment.
pip config set global.no-build-isolation true

pip install \
  dagster \
  dagster-cloud \
  dagster-dbt \
  "dbt-core<1.12" \
  "dbt-snowflake<1.12" \
  "gspread>=6.0" \
  "google-auth>=2.0"
