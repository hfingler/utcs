
-- HW1.sql -- Homework 1
--
-- Caio Truzzi Lente
-- UT EID: ctl684, UTCS username: ctlente
-- C S 347, Spring 2016, Dr. P. Cannata
-- Department of Computer Science, The University of Texas at Austin
--

-- 3-01
SELECT product_code, product_name, list_price, discount_percent FROM products ORDER BY list_price DESC;


-- 3-02
SELECT (last_name || ', ' || first_name) AS full_name FROM customers WHERE last_name >= 'M' ORDER BY last_name ASC;


-- 3-03
SELECT product_name, list_price, date_added FROM products WHERE list_price > 500 AND list_price < 2000 ORDER BY date_added DESC;


-- 3-04
SELECT product_name, list_price, discount_percent, (list_price * discount_percent / 100) AS discount_amount, (list_price - (list_price * discount_percent / 100)) AS discount_price FROM products WHERE ROWNUM < 6 ORDER BY discount_price DESC;


-- 3-05
SELECT item_id, item_price, discount_amount, quantity, (item_price * quantity) AS price_total, (discount_amount * quantity) AS discount_total, ((item_price - discount_amount) * quantity) AS item_total FROM order_items WHERE ((item_price - discount_amount) * quantity) > 500 ORDER BY ((item_price - discount_amount) * quantity) DESC;


-- 3-06
SELECT order_id, order_date, ship_date FROM orders WHERE ship_date IS NULL;


-- 3-07
SELECT TO_CHAR(SYSDATE) "today_unformatted", TO_CHAR(SYSDATE, 'MM-DD-YYYY') "today_formatted" FROM dual;


-- 3-08
SELECT 100 "price", .07 "tax_rate", (100 * .07) "tax_amount", (100 + (100 * .07)) "total" FROM dual;
