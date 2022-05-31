-- Return products with quantity in stock equal to 49, 38, 72
USE sql_store;
SELECT *
FROM products
WHERE quantity_in_stock in (49,38,72);