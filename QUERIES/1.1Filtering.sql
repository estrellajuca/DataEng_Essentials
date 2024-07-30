SELECT * FROM orders LIMIT 10;

SELECT DISTINCT order_status FROM orders
ORDER BY 1;

SELECT * FROM orders 
WHERE order_status = 'COMPLETE' ;

SELECT * FROM orders 
WHERE order_status = 'CLOSED';

SELECT * FROM orders 
WHERE order_status = 'COMPLETE' OR order_status = 'CLOSED';

-- SELECT ONLY COMPLETE AND CLOSED ORDERS 
SELECT * FROM orders 
WHERE order_status IN ('COMPLETE', 'CLOSED');