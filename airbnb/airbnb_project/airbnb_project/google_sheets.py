import json
import os

import gspread
import snowflake.connector
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.serialization import (
    Encoding,
    NoEncryption,
    PrivateFormat,
    load_pem_private_key,
)
from dagster import AssetExecutionContext, asset
from google.oauth2.service_account import Credentials

GOOGLE_SCOPES = [
    "https://www.googleapis.com/auth/spreadsheets",
    "https://www.googleapis.com/auth/drive",
]


def _snowflake_conn():
    pem = os.environ["SNOWFLAKE_PRIVATE_KEY"].encode()
    passphrase_str = os.environ.get("SNOWFLAKE_PRIVATE_KEY_PASSPHRASE", "")
    passphrase = passphrase_str.encode() if passphrase_str else None

    private_key = load_pem_private_key(pem, password=passphrase, backend=default_backend())
    private_key_der = private_key.private_bytes(
        encoding=Encoding.DER,
        format=PrivateFormat.PKCS8,
        encryption_algorithm=NoEncryption(),
    )

    return snowflake.connector.connect(
        account=os.environ["SNOWFLAKE_ACCOUNT"],
        user=os.environ["SNOWFLAKE_USER"],
        private_key=private_key_der,
        database="AIRBNB",
        schema="DEV",
        warehouse="COMPUTE_WH",
        role="TRANSFORM",
    )


@asset(deps=["mart_fullmoon_reviews"])
def fullmoon_reviews_sheet(context: AssetExecutionContext):
    """Exports mart_fullmoon_reviews from Snowflake to a Google Sheet after each dbt run."""
    conn = _snowflake_conn()
    try:
        cursor = conn.cursor()
        cursor.execute(
            "SELECT * FROM AIRBNB.DEV.mart_fullmoon_reviews ORDER BY review_date"
        )
        columns = [desc[0] for desc in cursor.description]
        rows = cursor.fetchall()
        cursor.close()
    finally:
        conn.close()

    context.log.info(f"Fetched {len(rows)} rows from Snowflake")

    creds = Credentials.from_service_account_info(
        json.loads(os.environ["GOOGLE_SERVICE_ACCOUNT_JSON"]),
        scopes=GOOGLE_SCOPES,
    )
    gc = gspread.authorize(creds)
    sheet = gc.open_by_key(os.environ["GOOGLE_SHEET_ID"]).sheet1

    sheet.clear()
    sheet.update([columns] + [list(row) for row in rows])

    context.log.info(f"Wrote {len(rows)} rows + header to Google Sheet {os.environ['GOOGLE_SHEET_ID']}")
