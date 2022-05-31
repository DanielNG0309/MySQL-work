-- Assign customers with points>3000 as GOLD
--                     2000<=points<=3000 as SILVER
--                     points<2000 as BRONZE
USE sql_store;

SELECT customer_id, first_name, last_name, points, 'BRONZE' AS type
FROM customers
WHERE points<2000
UNION
SELECT customer_id, first_name, last_name, points, 'SILVER'
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT customer_id, first_name, last_name, points, 'GOLD'
FROM customers
WHERE points>3000
ORDER BY CASE WHEN type='GOLD' then 1
			  WHEN type='SILVER' then 2
              ELSE 3 END;