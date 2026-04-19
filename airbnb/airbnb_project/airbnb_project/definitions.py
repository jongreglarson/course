from dagster import Definitions
from dagster_dbt import DbtCliResource
from .assets import airbnb_dbt_assets
from .google_sheets import fullmoon_reviews_sheet
from .project import airbnb_project
from .schedules import schedules

defs = Definitions(
    assets=[airbnb_dbt_assets, fullmoon_reviews_sheet],
    schedules=schedules,
    resources={
        "dbt": DbtCliResource(project_dir=airbnb_project),
    },
)