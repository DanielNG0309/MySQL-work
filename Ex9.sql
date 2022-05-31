-- Get top 3 customers with most points
USE sql_store;
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;