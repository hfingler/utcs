-- HW9.sql -- Homework 9
--
-- Caio Lente
-- UT EID: ctl684, UTCS username: ctlente
-- CS 347, Spring 2016, Dr. P. Cannata
-- Department of Computer Science, The University of Texas at Austin
--

-- 13-01
SET SERVEROUTPUT ON;

DECLARE
  count_prods NUMBER;

BEGIN
  SELECT COUNT(product_id)
  INTO count_prods
  FROM products;

  IF count_prods >= 7 THEN
    DBMS_OUTPUT.PUT_LINE('The number of products is greater than or equal to 7');
  ELSE
    DBMS_OUTPUT.PUT_LINE('The number of products is less than 7');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occured in the script');
END;
/


-- 13-02
SET SERVEROUTPUT ON;

DECLARE
  count_prods NUMBER;
  avg_price NUMBER;

BEGIN
  SELECT COUNT(product_id), AVG(list_price)
  INTO count_prods, avg_price
  FROM products;

  IF count_prods >= 7 THEN
    DBMS_OUTPUT.PUT_LINE('COUNT: ' || count_prods);
    DBMS_OUTPUT.PUT_LINE('AVERAGE: ' || ROUND(avg_price, 2));
  ELSE
    DBMS_OUTPUT.PUT_LINE('The number of products is less than 7');
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occured in the script');
END;
/


-- 13-03
SET SERVEROUTPUT ON;

DECLARE
  it NUMBER;

BEGIN
  DBMS_OUTPUT.PUT('Common factors of 10 and 20:');

  FOR it IN 1..9 LOOP
    IF MOD(10, it) = 0 AND MOD(20, it) = 0 THEN
      DBMS_OUTPUT.PUT(' ' || it);
    END IF;
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occured in the script');
END;
/


-- 13-04
SET SERVEROUTPUT ON;

DECLARE
  CURSOR prods_cursor IS
    SELECT product_name, list_price FROM products
    WHERE list_price > 700 ORDER BY list_price DESC;
  prods_row products%ROWTYPE;

BEGIN

  FOR prods_row IN prods_cursor LOOP
    DBMS_OUTPUT.PUT('"' || prods_row.product_name);
    DBMS_OUTPUT.PUT('","' || TO_CHAR(prods_row.list_price, 'FM99999.00'));
    DBMS_OUTPUT.PUT('"|');
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occured in the script');
END;
/


-- 13-05
SET SERVEROUTPUT ON;

BEGIN
  INSERT INTO categories VALUES (999, 'Guitar');

  DBMS_OUTPUT.PUT_LINE('1 row was inserted.');
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('Row was not inserted - duplicate entry.');

  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error has occured in the script.');
END;
/
