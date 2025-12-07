/*
======================================================
      Exploring the dimensions in gold database
======================================================
*/

-- Explore all the countries our customers come from
SELECT
	DISTINCT country
FROM dim_cutomer;

-- Eplore all the categories
SELECT
	DISTINCT category,
	sub_category,
	product_name
FROM 
	dim_product
ORDER BY 1,2,3;
