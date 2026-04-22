-- Tak 2 Data insertion and Handling Nulls
create database medical_inventory_db;
use medical_inventory_db;
create table users(
name varchar(50) primary key,
email_id varchar(50));
INSERT INTO users (name, email_id) VALUES
('Amit Sharma', 'amit1@example.com'),
('Priya Verma', 'priya1@example.com'),
('Rahul Singh', 'rahul1@example.com'),
('Neha Gupta', 'neha1@example.com'),
('Arjun Patel', 'arjun1@example.com'),
('Sneha Reddy', 'sneha1@example.com'),
('Vikram Joshi', 'vikram1@example.com'),
('Pooja Mehta', 'pooja1@example.com'),
('Karan Malhotra', 'karan1@example.com'),
('Anjali Desai', 'anjali1@example.com');
select * from users;
-- objectives of task
-- inserting, updating the data and deleting the records of the data
INSERT INTO users (name, pp_no)
VALUES ('Amit Sharma', '12131');
select * from users;

-- updating the records
UPDATE users
SET email_id = 'amit_new@example.com'
WHERE name='Amit Sharma';

-- ADD column into the table by using ALTER command
ALTER TABLE users
ADD phone VARCHAR(15);
select * from users;
UPDATE users
SET phone = '9876543210'
WHERE name = "Amit Sharma";
DELETE from users 
WHERE name = "Amit Sharma";
select * from users;
-- for deleting the column phone
ALTER TABLE users
DROP COLUMN phone;
-- 1.Use INSERT INTO for adding rows
INSERT INTO users(name,email_id) VALUES 
("Sharman Mehta","shri.ram@gmail.com");
select * from users;
-- 2.Handle missing values using NULL or default
SELECT * 
FROM users
WHERE name IS NULL;
-- if there is NO NULL then in that case we have to insert some null values and then check the values
SELECT COUNT(*) AS null_count
FROM users
WHERE email_id IS NULL;

select COUNT(*) AS null_count1
from users
where email_id IS NULL;
-- if there is no null record then we have to insert some null records 
INSERT INTO users (name, email_id)
VALUES ('Rohit Patil', NULL);
select * from users;
-- 3.Use UPDATE and DELETE with WHERE conditions
UPDATE users
SET email_id = 'arjun1@example.com'
WHERE name = "Arjun Patel" ;
DELETE FROM users
WHERE name = "Arjun Patel" ;
select * from users;
-- Outcome: A populated database with clean and consistent data.



