SELECT * FROM order_items;

SELECT COUNT(*) FROM orders;

SELECT COUNT(*) FROM order_items;

SELECT count(DISTINCT order_status) FROM orders;

SELECT count(DISTINCT order_date) FROM orders;

--REVENUE FOR THE ORDER ID = 2
SELECT SUM(order_item_subtotal)
FROM order_items
WHERE order_item_order_id = 2;

--
SELECT order_item_subtotal
FROM order_items
WHERE order_item_order_id = 2;