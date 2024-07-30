--- 
SELECT * FROM order_details_v;
SELECT COUNT(DISTINCT order_item_product_id) FROM order_details_v;
---
SELECT * FROM products;
SELECT COUNT(DISTINCT product_id) FROM products;

--- RIGHT JOIN
SELECT *
FROM products AS p
	RIGHT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id;
--- LEFT JOIN
SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id;

--- LEFT JOIN WITH NULL VALUES
--- PRODUCTS THAT HAVENT BEEN SOLD
SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id
WHERE odv.order_item_product_id IS NULL;

SELECT *
FROM products AS p 
WHERE NOT EXISTS (
	SELECT 1 FROM order_details_v AS odv
	WHERE p.product_id = odv.order_item_product_id
)

---  PRODUCTS THAT HAVENT BEEN ON JANUARY 2014

-- THIS GIVES NULL
SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id
WHERE to_char(odv.order_date::timestamp, 'yyyy-MM') = '2014-01'
	AND odv.order_item_product_id IS NULL;
--THIS DOESNT
SELECT *
FROM products AS p
	LEFT OUTER JOIN order_details_v AS odv
		ON p.product_id = odv.order_item_product_id
			AND to_char(odv.order_date::timestamp, 'yyyy-MM') = '2014-01'
WHERE odv.order_item_product_id IS NULL;

SELECT * FROM products AS p
WHERE NOT EXISTS(
	SELECT 1 FROM order_details_v AS odv
	WHERE p.product_id = odv.order_item_product_id
		AND to_char(odv.order_date::timestamp, 'yyyy-MM') = '2014-01'
)

-- PRODUCTS THAT HAVENT BEEN SOLD EVER