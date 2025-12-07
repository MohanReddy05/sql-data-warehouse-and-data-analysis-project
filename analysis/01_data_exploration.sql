
/*
====================================================
        Explore the Databaase Structure
====================================================
*/

use gold;
show tables;

/*
 * There are three tables in database namely 
 * dim_customer
 * dim_product
 * fact_sales
*/

-- Query to display the details of fact_sales table

SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    ORDINAL_POSITION,
    DATA_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
  AND TABLE_NAME = 'fact_sales';

-- Query to display the details of dim_customer table

SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    ORDINAL_POSITION,
    DATA_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
  AND TABLE_NAME = 'dim_customer';

-- Query to display the details of dim_product table

SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    ORDINAL_POSITION,
    DATA_TYPE,
    IS_NULLABLE,
    COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'gold'
  AND TABLE_NAME = 'dim_product';
