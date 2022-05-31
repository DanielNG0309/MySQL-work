-- Get the orders placed in 2018
USE sql_store;
SELECT * 
FROM orders
WHERE order_date LIKE '%2018%'