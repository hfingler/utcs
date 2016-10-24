-- HW10.sql -- Homework 10
--
-- Caio Lente
-- UT EID: ctl684, UTCS username: ctlente
-- CS 347, Spring 2016, Dr. P. Cannata
-- Department of Computer Science, The University of Texas at Austin
--

-- 14-01
SET SERVEROUTPUT ON;

BEGIN
  DELETE FROM addresses
  WHERE customer_id = 8;

  DELETE FROM customers
  WHERE customer_id = 8;

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('The transaction was commited');

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('The transaction was rolled back');

END;
/


-- 14-02
SET SERVEROUTPUT ON;

BEGIN
  INSERT INTO orders VALUES (DEFAULT, 3, NOW(), '10.00', '0.00', NULL, 4, 'American Express', '378282246310005', '04/2013', 4);

  INSERT INTO order_items VALUES (DEFAULT, 10, 6, '415.00', '161.85', 1);

  INSERT INTO order_items VALUES (DEFAULT, 11, 1, '699.00', '209.70', 1);

  COMMIT;
  DBMS_OUTPUT.PUT_LINE('The transaction was commited');

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('The transaction was rolled back');

END;
/


-- 15-01
CREATE OR REPLACE PROCEDURE insert_category
(
  category_name_param categories.category_name%TYPE
)
AS
  category_id_var categories.category_id%TYPE;
BEGIN
  SELECT category_id_seq.NEXTVAL INTO category_id_var FROM DUAL;

  INSERT INTO categories VALUES (DEFAULT, category_name_param);

  COMMIT;

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;

END;
/

CALL insert_category('test1');
CALL insert_category('test2');


-- 15-02
CREATE OR REPLACE FUNCTION discount_price
(
  item_id_param NUMBER
)
RETURN NUMBER
AS
  discount_price_var NUMBER;
BEGIN
  SELECT (item_price - discount_amount) AS price INTO discount_price_var
  FROM order_items WHERE item_id = item_id_param;

  RETURN discount_price_var;
END;
/

select discount_price(1) FROM dual;


-- 15-03
CREATE OR REPLACE FUNCTION item_total
(
  item_id_param NUMBER
)
RETURN NUMBER
AS
  total_price_var NUMBER;
BEGIN
  SELECT discount_price(item_id_param)*quantity AS price INTO total_price_var
  FROM order_items WHERE item_id = item_id_param;

  RETURN total_price_var;
END;
/

SELECT item_total(1) FROM dual;


-- 15-04
CREATE OR REPLACE PROCEDURE insert_products
(
  category_id_param products.category_id%TYPE,
  product_code_param products.product_code%TYPE,
  product_name_param products.product_name%TYPE,
  list_price_param products.list_price%TYPE,
  discount_percent_param products.discount_percent%TYPE
)
AS
  product_id_var products.product_id%TYPE;
BEGIN
  IF list_price_param < 0 OR discount_percent_param < 0 THEN
    RAISE VALUE_ERROR;
  END IF;

  SELECT product_id_seq.NEXTVAL INTO product_id_var FROM DUAL;

  INSERT INTO products
  VALUES (product_id_var, category_id_param, product_code_param, product_name_param, ' ', list_price_param, discount_percent_param, SYSDATE());

END;
/

CALL insert_products(1, 12, 'test1', 200, 10);
CALL insert_products(1, 13, 'test2', 300, 5);


-- 15-05
CREATE OR REPLACE PROCEDURE update_product_discount
(
  category_id_param products.category_id%TYPE,
  discount_percent_param products.discount_percent%TYPE
)
AS
BEGIN
  IF discount_percent_param < 0 THEN
    RAISE VALUE_ERROR;
  END IF;

  UPDATE products SET discount_percent = discount_percent_param
  WHERE category_id = category_id_param;

END;
/

CALL update_product_discount(1, 10);
CALL update_product_discount(1, 5);


-- 16-01
CREATE OR REPLACE TRIGGER products_before_update
BEFORE UPDATE OF discount_percent
ON products
FOR EACH ROW
WHEN (NEW.discount_percent < 1 OR NEW.discount_percent > 100))
BEGIN
  IF :NEW.discount_percent > 0 OR :NEW.discount_percent < 1 THEN
    :NEW.discount_percent := (:NEW.discount_percent)*100;
  END IF;

  IF :NEW.discount_percent < 0 OR :NEW.discount_percent > 100 THEN
    RAISE VALUE_ERROR;
  END IF;

END;
/

UPDATE products SET discount_percent = 0.2 WHERE product_id = 2;


-- 16-02
CREATE OR REPLACE TRIGGER products_before_insert
BEFORE INSERT ON products
FOR EACH ROW
WHEN (NEW.date_added IS NULL)
BEGIN
  :NEW.date_added := SYSDATE();
END;
/

INSERT INTO products VALUES (15, 1, 15, 'test', 'test', 100, 10, NULL);


-- 16-03
CREATE TABLE products_audit
(
  audit_id NUMBER,
  product_id NUMBER,
  category_id NUMBER,
  product_code VARCHAR2 (10),
  product_name VARCHAR2 (255),
  list_price NUMBER,
  discount_percent NUMBER,
  date_updated DATE
);

CREATE SEQUENCE audit_id_seq
START WITH 100
INCREMENT BY 1
NOMAXVALUE;

CREATE OR REPLACE TRIGGER products_after_update
AFTER UPDATE ON products
FOR EACH ROW
DECLARE
  audit_id_var NUMBER;
BEGIN
  SELECT audit_id_seq.NEXTVAL INTO audit_id_var FROM DUAL;

  INSERT INTO products_audit VALUES
  (audit_id_var, :old.product_id, :old.category_id, :old.product_code,
  :old.product_name, :old.list_price, :old.discount_percent, SYSDATE());

END;
/

UPDATE products SET product_name = 'test' WHERE product_id = 2;
