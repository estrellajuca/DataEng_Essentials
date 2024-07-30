--Orders by date
SELECT order_date, count(*)
FROM orders
WHERE order_status IN ('COMPLETE', 'CLOSED')
GROUP BY 1
HAVING count(*) >= 125
ORDER BY 2 DESC;

--Orders by revenue
SELECT order_item_order_id, 
	round(sum(order_item_subtotal)::numeric, 2) as order_revenue
FROM order_items
GROUP BY 1
	HAVING round(sum(order_item_subtotal)::numeric, 2) >= 2500
ORDER BY 2 DESC;

