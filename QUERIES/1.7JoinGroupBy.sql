--Daily product revenue

SELECT o.order_date, oi.order_item_product_id, 
	round(sum(oi.order_item_subtotal)::numeric, 2) AS order_revenue 
FROM orders o
	JOIN order_items AS oi
		ON o.order_id = oi.order_item_order_id
WHERE o.order_status IN ('COMPLETE', 'CLOSED')
GROUP BY 1, 2
	ORDER BY 2,1 DESC;

--
SELECT * FROM orders;

SELECT * FROM order_items ORDER BY order_item_product_id;
