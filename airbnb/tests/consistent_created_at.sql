-- Singular test: no review should predate the listing it was written for.
--
-- Business rule: a guest cannot review a listing that didn't exist yet.
-- If a listing's created_at timestamp is later than a review's review_date
-- for that same listing, one of two data quality problems has occurred:
--   1. The listing's created_at was backfilled or incorrectly set in the source
--   2. The review_date was incorrectly ingested or assigned
--
-- Returns offending rows (a passing test returns zero rows).
-- Joins dim_listings_cleansed to fct_reviews on listing_id and checks that
-- the listing creation date does not exceed the review date.

SELECT * FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (listing_id)
WHERE l.created_at > r.review_date