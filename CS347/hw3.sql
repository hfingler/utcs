
-- HW3.sql -- Homework 3
--
-- Caio Truzzi Lente
-- UT EID: ctl684, UTCS username: ctlente
-- C S 347, Spring 2016, Dr. P. Cannata
-- Department of Computer Science, The University of Texas at Austin
--

-- 4-01
SELECT category_name, product_name, list_price FROM categories a JOIN products b ON (a.category_id = b.category_id) ORDER BY category_name, product_name ASC;


-- 4-02
SELECT first_name, last_name, line1, city, state, zip_code FROM customers a JOIN addresses b ON (a.customer_id = b.customer_id) WHERE email_address = 'allan.sherwood@yahoo.com';


-- 4-03
SELECT first_name, last_name, line1, city, state, zip_code FROM customers a JOIN addresses b ON (a.shipping_address_id = b.address_id);


-- 4-04
SELECT last_name, first_name, order_date, product_name, item_price, discount_amount, quantity FROM customers a JOIN orders b ON (a.customer_id = b.customer_id) JOIN order_items c ON (b.order_id = c.order_id) JOIN products d ON (c.product_id = d.product_id) ORDER BY last_name, order_date, product_name;


-- 4-05
SELECT a.product_name, b.list_price FROM products a, products b WHERE a.product_id != b.product_id AND a.list_price = b.list_price;


-- 4-06
SELECT category_name, product_id FROM categories a FULL OUTER JOIN products b ON (a.category_id = b.category_id) WHERE b.product_id IS NULL;


-- 4-07
SELECT 'SHIPPED' AS ship_status, order_id, order_date FROM orders WHERE ship_date IS NOT NULL UNION SELECT 'NOT SHIPPED' AS ship_status, order_id, order_date FROM orders WHERE ship_date IS NULL ORDER BY order_date;
