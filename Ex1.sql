-- Return all the products:
-- + name
-- + unit price
-- + unit price *1.1 as new price
USE sql_store;
SELECT
name,
unit_price,
unit_price*1.1 AS 'new price'
FROM products;