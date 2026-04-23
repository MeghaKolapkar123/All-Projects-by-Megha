-- Task 6 Subqueries and Nested Queries
A scalar subquery returns only one value (single row, single column)
 Example: Find products with price higher than average
SELECT customer_name, order_amount
FROM order11
WHERE order_amount > (SELECT AVG(order_amount) FROM emp12);
-- A correlated subquery depends on the outer query row-by-row
--  Example: Find employees earning more than their department average
SELECT e.emp_name, e.salary, e.departement_id
FROM emp12 e
WHERE e.salary > (
    SELECT AVG(salary) as avg_salary
    FROM emp12
    WHERE departement_id = e.departement_id
);
-- 2.Use subqueries inside IN, EXISTS, =
SELECT emp_name
FROM emp12
WHERE manager_id IN (
    SELECT manager_id FROM emp12
);
-- EXIST
SELECT emp_name
FROM emp.e
WHERE EXISTS (
    SELECT 1
    FROM emp11.em
    WHERE e.manager_id = em.manager_id
);

SELECT name
FROM customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);


-- 1.What is a subquery?
A subquery is a query written inside another query.
It is used to:
Filter data
Compare values
Perform calculations.
-- 2.Difference between subquery and join?
Subquery	JOIN
Query inside another query	Combines tables directly
Runs first (inner query)	Runs together
Easier to read	Faster in many cases
Used for filtering	Used for combining data

3.What is a correlated subquery?

A subquery that depends on the outer query

It runs once per row of the outer query.

SELECT name
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

4.Can subqueries return multiple rows?
Yes

Types:
Single-row subquery → returns 1 value
Multi-row subquery → returns multiple values

5.How does EXISTS work?
EXISTS checks whether a subquery returns any rows or not

If at least one row exists → TRUE ✔
If no rows → FALSE ❌

6.How is performance affected by subqueries?

Subqueries can reduce performance because:

Correlated subqueries may run once per row
Can cause repeated execution
May be slower than JOINs on large datasets
7.What is scalar subquery?
A subquery that returns only one value (one row, one column)
SELECT name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);
-- Inner query returns a single value → used like a constant

8.Where can we use subqueries?
Subqueries can be used in:

SELECT clause
WHERE clause
FROM clause
HAVING clause
INSERT, UPDATE, DELETE

9.Can a subquery be in FROM clause?
Yes

When used in FROM, it acts like a temporary table.

SELECT *
FROM (SELECT name, salary FROM employees) AS emp;

-- 10.What is a derived table?
A derived table is a subquery used inside the FROM clause that behaves like a temporary table.

SELECT dept, avg_salary
FROM (
    SELECT department AS dept, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS dept_avg;