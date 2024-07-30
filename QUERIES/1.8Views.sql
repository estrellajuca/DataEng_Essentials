CREATE OR REPLACE VIEW order_details_v
AS
SELECT o.*,
	oi.order_item_product_id, oi.order_item_subtotal
FROM orders AS o
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id;

SELECT * FROM order_details_v WHERE order_id = 2;