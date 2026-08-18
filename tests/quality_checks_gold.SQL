/*
=============================================================================
Quality Checks
=============================================================================
Script purpose:
  This script performs quality checks to validate the integrity, consistency,
  and accuracy of the Gold Layer. These checks ensure:
  - Uniqueness of surrogate keys in dimension tables.
  - Referential integrity between fact and dimension tables.
  - Validation of relationships in the data model of analytical process.


Usage Notes:
  - Run these checks after data loading Silver Layer.
  - Investigate and resolve any discrepancies found during the checks.
=============================================================================
*/

-- ===========================================================================
-- Checking 'gold.dim_customers'
-- ===========================================================================
-- Check for uniqueness of customer key in gold.dim_customers
-- Expection: No results
SELECT
  customer_key,
  COUNT(*) AS duplicate_count
FROM
  gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;
-- ===========================================================================
