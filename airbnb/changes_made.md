# Fusion compatibility migration changes

Date: 2026-03-31
Project: `airbnb`

## Summary
This project was checked against the Fusion engine using the installed Fusion CLI (`dbt-fusion 2.0.0-preview.154`, available in this environment as `dbt`).

## Checks run
1. `dbt debug`
   - Result: success
   - Connection test: `OK`

2. `dbt parse --show-all-deprecations`
   - Initial result: **1 error**
   - Error group:
     - YAML/snapshot config error in `snapshots/raw_hosts_snapshot.yml`

3. `uv tool install dbt-autofix` and `uvx dbt-autofix deprecations`
   - Result: tool installed successfully
   - Autofix output: no changes were reported, and the parse error remained
   - Errors resolved by autofix: **0**

## Code changes made

| File | Error | Fix applied | Why this fix was chosen |
|---|---|---|---|
| `snapshots/raw_hosts_snapshot.yml` | `dbt1013: YAML error: unknown variant 'invalidateu', expected one of 'ignore', 'invalidate', 'new_record'` | Changed `hard_deletes: invalidateu` to `hard_deletes: invalidate` | This was a misspelled supported config value. Per the Fusion migration guidance, misspelled config keys/values should be corrected to the supported form rather than moved or removed. |

## Final verification
1. `dbt parse --show-all-deprecations`
   - Result: **success with 0 errors**

2. `dbt compile`
   - Result: **success with 0 errors**
   - Execution summary: `27 total | 27 success`

## Unsupported features
No unsupported Fusion features were encountered during this migration, so no models needed to be disabled.
