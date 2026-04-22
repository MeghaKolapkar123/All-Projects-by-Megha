-- TASK 3
select * from emp12;
select * from orders;
select(emp_name) from emp12
where emp_name="Ankit" AND "Mohit" ;
SELECT * FROM emp12
WHERE salary BETWEEN 10000 AND 15000;
select * from emp12 
where emp_name LIKE"A%";
select * from emp12 
where emp_name = "Agam" OR "Ashish";
-- 1.What does SELECT * do?
-- It retrieves all columns from a table.
-- 2.How do you filter rows?
-- Using the WHERE clause.
SELECT * FROM emp12
WHERE emp_name = 'Agam';
-- 3.What is LIKE '%value%'?
SELECT * FROM emp12
WHERE emp_name LIKE 'A___%';
-- 4.What is BETWEEN used for?
-- To filter values within a range.
SELECT * FROM emp12
WHERE salary BETWEEN 10000 AND 50000;
-- 5.How do you limit output rows?
SELECT * FROM emp12
LIMIT 5;
-- 6.Difference between = and IN
SELECT * FROM emp12 WHERE emp_name IN ('Amit', 'Priya');
-- 7.How to sort in descending order?
select * from emp12
order by emp_age desc;
-- 8.What is aliasing?
-- Giving a temporary name to a column or table.
SELECT emp_name AS username FROM emp12;
-- 9.Explain DISTINCT.
-- Removes duplicate values.
-- 10.What is the default sort order?
-- Ascending by default. 

