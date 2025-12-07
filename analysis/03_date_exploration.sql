/*
==============================================================================================
Identifying the earliest and latest dates
Understanding the scope of data and timespan
==============================================================================================
*/

-- Find the firt and last order date and the range of how many years of sales are available
SELECT
	MIN(order_date) AS first_order_date,
	MAX(order_date) AS last_order_date,
	TIMESTAMPDIFF(year,MIN(order_date),MAX(order_date)) AS order_range_years
FROM
	gold.fact_sales;

-- Find the Youngest and oldest customer
SELECT 
	MIN(birth_date) AS oldest_birth_date,
	TIMESTAMPDIFF(YEAR,MIN(birth_date),CURDATE()) AS oldest_age,
	MAX(birth_date) AS youngest_birth_date,
	TIMESTAMPDIFF(YEAR,MAX(birth_date),CURDATE()) AS youngest_age
FROM 
	gold.dim_cutomer;
