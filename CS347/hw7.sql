
-- HW1.sql -- Homework 7
--
-- Caio Truzzi Lente
-- UT EID: ctl684, UTCS username: ctlente
-- C S 347, Spring 2016, Dr. P. Cannata
-- Department of Computer Science, The University of Texas at Austin
--

-- 5-01
SELECT COUNT(*) AS count_num, SUM(tax_amount) AS sum_tax_amount FROM orders;


-- 5-02
SELECT c.category_name, COUNT(*) AS prod_count, MAX(p.list_price) AS max_price FROM products p JOIN categories c ON p.category_id = c.category_id GROUP BY c.category_name ORDER BY prod_count DESC;


-- 5-03
SELECT c.email_address, SUM(oi.item_price * oi.quantity) AS total_raw, SUM(oi.discount_amount * oi.quantity) AS total_disc FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id GROUP BY c.email_address ORDER BY total_raw DESC;


-- 5-04
SELECT c.email_address, COUNT(*) AS order_count, SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS total FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id GROUP BY c.email_address HAVING COUNT(*) > 1 ORDER BY total DESC;


-- 5-05
SELECT c.email_address, COUNT(*) AS order_count, SUM((oi.item_price -  oi.discount_amount) * oi.quantity) AS total FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id WHERE oi.item_price > 400 GROUP BY c.email_address HAVING COUNT(*) > 1 ORDER BY total DESC;


-- 5-06
SELECT p.product_name, SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS total_amount FROM orders o JOIN order_items oi ON o.order_id = oi.order_id JOIN products p ON oi.product_id = p.product_id GROUP BY ROLLUP(p.product_name);


-- 5-07
SELECT c.email_address, COUNT(DISTINCT oi.item_id) AS distinct_prods FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id GROUP BY c.email_address;

-- 6-01
SELECT DISTINCT category_name FROM categories WHERE category_id IN (SELECT category_id FROM products) ORDER BY category_name;


-- 6-02
SELECT product_name, list_price FROM products WHERE list_price > (SELECT AVG(list_price) FROM products) ORDER BY list_price DESC;


-- 6-03
SELECT category_name FROM categories WHERE NOT EXISTS (SELECT * FROM products WHERE products.category_id = categories.category_id);


-- 6-04
SELECT email_address, MAX(order_total) AS largest_order FROM (
  SELECT c.email_address, o.order_id, SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS order_total FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id GROUP BY c.email_address, o.order_id
) GROUP BY email_address;


-- 6-05
SELECT product_name, discount_percent FROM products WHERE discount_percent NOT IN (SELECT p1.discount_percent FROM products p1 JOIN products p2 ON p1.discount_percent = p2.discount_percent AND p1.product_name != p2.product_name) ORDER BY product_name;


-- 6-06
SELECT c.email_address, o.order_id, o.order_date FROM customers c JOIN orders o ON c.customer_id = o.customer_id WHERE o.order_date IN (SELECT MAX(o_sub.order_date) FROM customers c_sub JOIN orders o_sub ON c_sub.customer_id = c.customer_id AND o_sub.customer_id = o.customer_id);
