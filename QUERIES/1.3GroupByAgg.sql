SELECT * FROM orders;

--Number of orders by status 
SELECT order_status, count(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

--Number of dates
SELECT order_date, count(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT to_char(order_date, 'yyyy-MM') AS order_month, count(*) AS order_count
FROM orders
GROUP BY 1
ORDER BY 2 DESC;

SELECT * FROM order_items;

--Revenue by order 
SELECT order_item_order_id, 
	round(SUM(order_item_subtotal)::numeric, 2) AS order_revenue
FROM order_items
GROUP BY 1
ORDER BY 1;