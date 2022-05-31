-- Get customers whose last names contain B followed by R or U
USE sql_store;
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';