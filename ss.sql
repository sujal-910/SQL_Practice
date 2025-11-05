-- SHOW DATABASES

-- SELECT * FROM customers;

-- SELECT first_name,customer_id,points FROM customers; 

-- SELECT * FROM customers
-- WHERE customer_id=1;

-- SELECT first_name,customer_id,points,points+10 AS updated
--  FROM customers;

-- SELECT first_name,customer_id,points,points+10 AS updated_points
--  FROM customers;

-- SELECT DISTINCT state FROM customers;

-- SELECT * FROM customers
-- WHERE points>3000

-- SELECT * FROM customers
-- WHERE state='FL';

-- SELECT * FROM customers
-- WHERE birth_date > '1990-01-01';

-- SELECT * FROM customers
-- WHERE birth_date > '1990-01-01' AND points<2000;

-- SELECT * FROM customers
-- WHERE birth_date > '1990-01-01' OR points<2000;

-- SELECT * FROM customers
-- WHERE birth_date > '1990-01-01' OR points<2000 AND state='VA';

-- SELECT * FROM customers
-- WHERE state !='FL';

-- SELECT * FROM customers
-- WHERE NOT( state ='FL');

 -- SELECT * FROM customers
--  WHERE state ='FL' OR state='VA' OR state ='GA';

-- SELECT * FROM customers
-- WHERE state IN('FL','VA','GA');

-- SELECT * FROM customers
-- WHERE state NOT IN('FL','VA','GA');

-- SELECT * FROM customers
-- WHERE points>1000 AND points<3000;

-- SELECT * FROM customers
-- WHERE points BETWEEN 1000 AND 3000;

-- SELECT * FROM customers
-- WHERE points NOT BETWEEN 1000 AND 3000;

-- SELECT * FROM customers
-- WHERE last_name LIKE '%y';

-- SELECT * FROM customers
-- WHERE last_name LIKE 'b%';

-- SELECT * FROM customers
-- WHERE last_name LIKE '%b%';

-- SELECT * FROM customers
-- WHERE last_name LIKE '_____y';

-- SELECT * FROM customers
-- WHERE last_name LIKE 'b____y';

-- SELECT * FROM customers
-- WHERE last_name NOT LIKE 'b____y';

-- SELECT * FROM customers
-- WHERE phone  LIKE '%9';

-- SELECT * FROM customers
-- WHERE last_name REGEXP 'field';

-- SELECT * FROM customers
-- WHERE last_name REGEXP '^field';

-- SELECT * FROM customers
-- WHERE last_name REGEXP 'field$';


-- SELECT * FROM customers
-- WHERE last_name REGEXP 'field|mac';

-- SELECT * FROM customers
--  WHERE last_name REGEXP '[gim]e';

-- SELECT * FROM customers
--  WHERE last_name REGEXP '[a-z]';

-- SELECT * FROM customers
-- WHERE phone IS NULL;

-- SELECT * FROM customers
-- ORDER BY first_name;

-- SELECT * FROM customers
-- ORDER BY first_name DESC;

-- SELECT * FROM customers
-- LIMIT 3;

-- SELECT * FROM customers
-- LIMIT 3,6;

-- SELECT * FROM customers
-- LIMIT 6,3;

-- Write a Query to get 3 loyal customers.
 
-- SELECT * FROM customers
-- ORDER BY points DESC
-- LIMIT 3;

-- SELECT * FROM customers
-- JOIN orders
-- ON customers.customer_id=orders.customer_id;

-- SELECT * FROM customers c
-- JOIN orders o
-- ON c.customer_id=o.customer_id;

-- SELECT order_id,o.customer_id,first_name,points,order_date FROM customers c
-- JOIN orders o
-- ON c.customer_id=o.customer_id;

-- SELECT * FROM orders o
-- JOIN customers c
-- ON c.customer_id=o.customer_id
-- JOIN shippers sh
-- ON o.shipper_id = sh.shipper_id;

-- SELECT * FROM sql_inventory.products p
-- JOIN order_items oi
-- on p.product_id = oi.product_id;

-- SELECT * FROM employees e
-- JOIN employees m
-- ON e.reports_to = m.employee_id;

-- SELECT e.first_name FROM employees e
-- JOIN employees m
-- ON e.reports_to = m.employee_id;

-- EXPLICIT FORMAT
-- SELECT * FROM orders o
--  JOIN customers c
--  ON c.customer_id=o.customer_id
 
 -- IMPLITIC SYNTAX 
 -- SELECT * FROM orders o,customers c
--  WHERE c.customer_id=o.customer_id;

-- SELECT c.customer_id,c.first_name,o.order_id FROM orders o
-- LEFT JOIN customers c
-- ON c.customer_id = o.customer_id
-- ORDER BY order_id;

-- SELECT c.customer_id,c.first_name,o.order_id FROM orders o
-- RIGHT JOIN customers c
-- ON c.customer_id = o.customer_id
-- ORDER BY order_id;

-- SELECT c.customer_id,c.first_name,o.order_id,sh.shipper_id FROM orders o
-- RIGHT JOIN customers c
-- ON c.customer_id = o.customer_id
-- RIGHT JOIN shippers sh 
-- ON sh.shipper_id = o.shipper_id;

-- SELECT * FROM orders o
-- JOIN customers c
-- USING (customer_id)
-- JOIN shippers sh
-- USING(shipper_id);

-- SELECT * FROM orders o
-- NATURAL JOIN customers c;

-- SELECT c.customer_id,c.first_name as customer,p.name as product_name FROM customers c
-- CROSS JOIN products p
--  ORDER BY customer_id;

-- SELECT * FROM orders 
-- WHERE order_date>='2019-01-01';

-- SELECT order_id,order_date FROM orders 
-- WHERE order_date<'2019-01-01';

-- SELECT order_id,order_date ,'Active' AS Status FROM orders 
-- WHERE order_date>='2019-01-01'
-- UNION
-- SELECT order_id,order_date ,'Archived' AS Status FROM orders 
-- WHERE order_date<'2019-01-01';

-- INSERT INTO customers
-- VALUES(DEFAULT ,"john","Willium","2019-01-01",NULL,"Shivaji nagar","Pune","MH",DEFAULT);

-- INSERT INTO customers(first_name,last_name,address,city,state)
-- VALUES("Max","Doe","Deccan","pune","MH");

-- INSERT INTO shippers(name)
-- VALUES('shipper 1'),
-- 	('shipper 2'),
--     ('shipper 3');

-- INSERT INTO orders(customer_id,order_date,status)
-- VALUES (1,'2019-01-01',1);

-- INSERT INTO order_items
-- VALUES(LAST_INSERT_ID(),1,4,2.54),
-- 	(LAST_INSERT_ID(),3,3,2.54);

-- UPDATE invoices
-- SET payment_total=10,payment_date='2025-09-23'
-- WHERE invoice_id=1;

-- UPDATE invoices
--  SET payment_total=invoice_total*0.5,
--  payment_date=due_date
--  WHERE invoice_id=1;

-- UPDATE invoices
-- SET payment_total=invoice_total*0.5,
-- payment_date=due_date
-- WHERE client_id IN (3,4);

-- UPDATE invoices
-- SET payment_total=invoice_total*0.5,
-- payment_date=due_date
-- WHERE client_id IN(
-- 		SELECT client_id FROM clients
-- 		WHERE name="Myworks"
-- );

-- DELETE FROM invoices
-- WHERE invoice_id=1;

-- SELECT MIN(invoice_total)AS minimum FROM invoices;

-- SELECT MIN(invoice_total)AS minimum ,
-- 	MAX(invoice_total)AS maximum ,
--     SUM(invoice_total)AS total ,
-- 	AVG(invoice_total)AS Average ,
--     COUNT(invoice_total)AS 'Total count' 
-- FROM invoices;

-- CREATE TABLE order_archived AS
-- SELECT *FROM orders;

-- CREATE TABLE order_archived1 AS
-- SELECT * FROM orders
-- WHERE order_date>'2018-01-01';

-- incomplate sove it
-- SELECT client_id,SUM(invoice_total) As total_sale
-- FROM invoices
-- WHERE invoice_date>='2019-01-01'
-- GROUP BY client_id
-- ORDER BY total_sale DESC;

-- SELECT client_id,SUM(invoice_total) As total_sale
-- FROM invoices
-- GROUP BY client_id
-- HAVING total_sale>500;

-- SELECT client_id,SUM(invoice_total) As total_sale
-- FROM invoices
-- GROUP BY client_id WITH ROLLUP;
-- ROLLUP only work on aggrucate function

-- FIND THE PRODUTO THAT HAVE NEVER BEEN ORDERED.

  -- SELECT * FROM products
--  WHERE product_id NOT IN(
--  	SELECT DISTINCT product_id
--      FROM order_items
--      );

-- ALL KEYWORD
-- select invoices larger than all invoices of client 3

-- SELECT * FROM invoices
-- WHERE invoice_total >(
-- 	SELECT MAX(invoice_total)FROM invoices
--     WHERE client_id=3
--     );

-- By using ALL

-- SELECT * FROM invoices
-- WHERE invoice_total > ALL(
-- 	SELECT (invoice_total)FROM invoices
--     WHERE client_id=3
--     );

-- Select clients that have an invoices

-- SELECT * FROM clients
-- WHERE client_id IN(
-- 	SELECT DISTINCT client_id FROM invoices
--     );

-- SELECT * FROM clients c
-- WHERE EXISTS(
-- 	SELECT DISTINCT client_id 
--     FROM invoices
--     WHERE client_id=c.client_id
--     );

-- subqueries in your select statement

-- SELECT invoice_id,invoice_total,
-- 	(SELECT AVG(invoice_total) FROM invoices) AS average
-- FROM invoices;

-- Subtract the invoices_total from average

-- SELECT invoice_id,invoice_total,
-- 	(SELECT AVG(invoice_total) FROM invoices) AS average,
--     invoice_total - (SELECT average) AS difference
-- FROM invoices;

-- NUMERIC FUNCTION

-- 1. ROUND()
		-- SELECT ROUND(5.73);
        --  SELECT ROUND(5.73234,2);
        -- SELECT invoice_total, ROUND(invoice_total) FROM invoices;
       
-- 2. TRUNCATE()
		 -- SELECT TRUNCATE(5.733245,2);
         
-- 3.CEILING()
		-- SELECT CEILING(5.633);
        
-- 4. FLOOR()
		--  SELECT FLOOR(5.933);
        
-- 5. ABS()
		-- SELECT ABS(5.733);
        
-- 6.RAND()
		-- SELECT RAND();
		
-- STRING FINCTIONS

-- 1. LENGTH
		-- SELECT LENGTH('SKY');
        
-- 2. UPPER()
		-- SELECT UPPER('sky');
        
-- 3. LOWER()
		-- SELECT LOWER('SKY');
        
-- 4. LTRIM()
		-- SELECT LTRIM('		sky		');
        
--  5. RTRIM()
		-- SELECT RTRIM('		sky		');    
        
-- 6. TRIM()      
       --  SELECT TRIM('		sky		');
       
-- 7. LEFT()
		-- SELECT LEFT('kindergarten',4);
        
-- 8. RIGHT()
		-- SELECT RIGHT('kindergarten',6);
        
-- 9. SUBSTRING()
		-- SELECT SUBSTRING('kindergarten',2);
        
        -- SELECT SUBSTRING('kindergarten',3,2);
        
-- 10. LOCATE()
		-- SELECT LOCATE('n','kindergarten');
        
-- 11. REPLACE()
		-- SELECT REPLACE('kindergarten','garten','garden');
        
-- 12. CONCAT()
		-- SELECT CONCAT('First','Last');
        -- SELECT CONCAT(first_name," ",last_name)AS fullname FROM customers;
        
-- DATE FUNCTIONS

-- 1.NOW()
-- SELECT NOW();

-- 2.CURDATE()
-- SELECT CURDATE();

-- 3.CURTIME()
-- SELECT CURTIME();

-- 4.YEAR()
-- SELECT YEAR(NOW());

-- 5.MONTH()
-- SELECT MONTH(NOW());

-- 6.DAY()
-- SELECT DAY(NOW());

-- 7.HOUR()
-- SELECT HOUR(NOW());

-- 8. MINUTE()

-- 9.SECOND()

-- 10.DAYNAME()
-- SELECT DAYNAME(NOW());

-- 11.MONTHNAME()
-- SELECT MONTHNAME(NOW());
-- SELECT MONTHNAME (birth_date)FROM customers;

-- 12.EXTRACT()
-- SELECT EXTRACT(YEAR FROM NOW());

-- FORMATING DATE TIME

-- SELECT DATE_FORMAT(NOW(),'%Y');

-- SELECT DATE_FORMAT(NOW(),'%y');

-- SELECT DATE_FORMAT(NOW(),'%M');

-- SELECT DATE_FORMAT(NOW(),'%m');

-- SELECT DATE_FORMAT(NOW(),'%D');

-- SELECT DATE_FORMAT(NOW(),'%d');

 -- SELECT birth_date, DATE_FORMAT(NOW(),'%Y %M %D') FROM customers;
 
 -- H= 24 hours clock  | h=12 hours clock  | i is for minute
 -- SELECT TIME_FORMAT(NOW(),'%H %i %p');
 
 -- CALCULATION DATE AND TIME

-- SELECT DATE_ADD(NOW(),INTERVAl 4 DAY);

-- SELECT DATE_SUB(NOW(),INTERVAl 4 DAY);

-- SELECT DATEDIFF('2025-01-01','2025-04-01');

SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02');