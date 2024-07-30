
SELECT * 
FROM orders o
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id

SELECT o.order_date, oi.order_item_product_id, oi.order_item_subtotal 
FROM orders o
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id
