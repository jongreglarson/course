from dagster_dbt import DbtCliResource, dbt_assets
from dagster import AssetExecutionContext, Definitions
from pathlib import Path

DBT_PROJECT_DIR = Path(__file__).parent / "airbnb"

@dbt_assets(
    manifest=DBT_PROJECT_DIR / "target" / "manifest.json",
)
def airbnb_dbt_assets(context: AssetExecutionContext, dbt: DbtCliResource):
    yield from dbt.cli(["build"], context=context).stream()

defs = Definitions(
    assets=[airbnb_dbt_assets],
    resources={
        "dbt": DbtCliResource(project_dir=str(DBT_PROJECT_DIR)),
    }
)
