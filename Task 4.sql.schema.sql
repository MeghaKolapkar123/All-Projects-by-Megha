-- Task 4
-- Aggregate Functions and Grouping
-- 1.Apply aggregate functions on numeric columns
SELECT  COUNT(salary) FROM emp12;
select MIN(salary) from emp12;
select MAX(salary) from emp12;
select avg(salary) from emp12;
select SUM(salary) from emp12;
select departement_id,SUM(salary) as sum_salary
from emp12
group by departement_id;
select* from emp12;
-- 3.Filter groups using HAVING
SELECT salary, COUNT(*) AS total
FROM emp12
GROUP BY salary
HAVING COUNT(*) >1;
-- 1.What is GROUP BY?
-- GROUP BY is used to group rows with similar values and apply aggregate functions on each group.

-- 2.Difference between WHERE and HAVING?
-- Filters rows	Filters groups
-- Used before GROUP BY	Used after GROUP BY
-- 3.How does COUNT(*) differ from COUNT(column)?
-- COUNT(*) → counts all rows (including NULLs)
-- COUNT(column) → counts only non-NULL values
-- 4.Can you group by multiple columns? Yes
-- 5.What is ROUND() used for?
--  It is used to round numeric values
-- 6.How do you find the highest salary by department?
select departement_id,MAX(salary) as max_salary
from emp12
group by departement_id;
-- 7.What is the default behavior of GROUP BY?
-- It groups rows based on column values and returns one result per group
-- 8.Explain AVG and SUM.
-- AVG() → returns average value, SUM() → returns total value
-- 9.How to count distinct values?
SELECT COUNT(DISTINCT departement_id) FROM emp12;
-- 10.What is an aggregate function?
-- A function that performs calculations on multiple rows and returns a single value (e.g., COUNT, SUM, AVG, MIN, MAX)
