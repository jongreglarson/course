from setuptools import find_packages, setup

setup(
    name="airbnb_dbt_assets",
    packages=find_packages(),
    install_requires=[
        "dagster",
        "dagster-cloud",
        "dagster-dbt",
        "dbt-core",
        "dbt-snowflake",
    ],
)
