-- Task 5  SQL Joins (Inner, Left, Right, Full)
-- 1.Create two related tables (e.g., Customers, Orders)
select * from order11;
select * from orders;
-- 2.Use INNER, LEFT, RIGHT, FULL JOIN
SELECT customer_name, order_amount
FROM order11
INNER JOIN orders
ON order11.order_id = orders.order_id;

SELECT customer_name, order_amount
FROM order11
LEFT JOIN orders
ON order11.order_id = orders.order_id;

SELECT customer_name, order_amount
FROM order11
RIGHT JOIN orders
ON order11.order_id = orders.order_id;

SELECT customer_name, order_amount
FROM order11
LEFT JOIN orders
ON order11.order_id = orders.order_id

UNION

SELECT customer_name, order_amount
FROM order11
RIGHT JOIN orders
ON order11.order_id = orders.order_id;
-- 1.Difference between INNER and LEFT JOIN? Returns only matching rows	Returns all rows from left + matched rows from right 
-- Unmatched rows are excluded	Unmatched rows show NULL
-- 2.What is a FULL OUTER JOIN?
-- Returns all rows from both tables, matching where possible, Non-matching rows → NULL
-- 3.Can joins be nested?
-- Yes, you can join multiple tables in one query
-- 4.How to join more than 2 tables?
SELECT customers.name, orders.amount, products.name
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN products ON orders.product_id = products.product_id;
-- 5.What is a cross join?,Returns all combinations of rows from both tables,If A has 3 rows and B has 4 → result = 12 rows
-- 6.What is a natural join?,Automatically joins tables based on same column names
-- 7.Can you join tables without foreign key?,Joins depend on matching columns, not necessarily foreign keys
-- 8.What is a self-join?, A table joined with itself
SELECT A.name, B.name
FROM employees A
JOIN employees B
ON A.manager_id = B.employee_id;
-- 9.What causes Cartesian product?,Missing JOIN condition
SELECT * FROM A, B;
-- Returns all combinations (like CROSS JOIN)
-- 10.How to optimize joins?
-- Use indexes on join columns
-- Avoid unnecessary columns (SELECT * ❌)
-- Use proper join type (INNER/LEFT)
-- Filter early using WHERE
-- Use smaller datasets when possible
