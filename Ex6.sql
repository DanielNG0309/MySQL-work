-- Get customers whose addresses contain TRAIL OR AVENUE and phone numbers end with 6
USE sql_store;
SELECT *
FROM customers
WHERE (address LIKE '%trail%' OR address LIKE '%avenue%') AND phone LIKE '%6'; 