--6883
SELECT count(DISTINCT order_id) FROM orders;

--57431
SELECT count(DISTINCT order_item_order_id) FROM order_items;

--
SELECT o.order_id, o.order_date, 
	oi.order_item_id, oi.order_item_product_id, oi.order_item_subtotal 
FROM orders o
	LEFT OUTER JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id
ORDER BY 1;
