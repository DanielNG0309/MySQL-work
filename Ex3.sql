-- From the order_items table, get the item(s) for order #6 with total price > 30
USE sql_store;
SELECT order_id,order_items.product_id,quantity,order_items.unit_price,products.name
FROM order_items
JOIN products ON order_items.product_id = products.product_id
HAVING order_id=6 AND quantity*order_items.unit_price>30;

-- There seems to be a mismatch in listed unit_price in products and order_items 
-- SO, I updated the values for the unit prices to match

SET SQL_SAFE_UPDATES = 0;
UPDATE order_items
SET unit_price = (SELECT unit_price FROM products WHERE order_items.product_id=products.product_id);

-- When I run the previous statement again, nothing shows up because the prices has been matched
-- I will change the total price requirement to 10 
-- From the order_items table, get the item(s) for order #6 with total price > 10

SELECT order_id,order_items.product_id,quantity,order_items.unit_price,products.name
FROM order_items
JOIN products ON order_items.product_id = products.product_id
HAVING order_id=6 AND quantity*order_items.unit_price>10;

