/*
@Author: Rohan Vetale
@Date: 17-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 18-04-2024 06:00PM
@Title : SQL queries for Scalar functions implementation
*/

#Scalar functions- Functions that takes an input (single) and returns an output (single)
#They can be User defined functions or in-built functions

#Mathematical scalar functions
-- Absolute value of a number
SELECT ABS(-10);

-- Round a number to two decimal places
SELECT ROUND(12.345, 2);

-- Square root of a number
SELECT SQRT(25);

-- Ceiling of a number (smallest integer greater than or equal to the number)
SELECT CEILING(10.25);

-- Floor of a number (largest integer less than or equal to the number)
SELECT FLOOR(10.75);

#String scalar functions
-- Concatenate two strings
SELECT CONCAT('Hello', 'World'); #It is not strictly a scalar function as it takes two inputs

-- Extract substring from a string
SELECT SUBSTRING('Hello World', 7, 5);

-- Convert a string to uppercase
SELECT UPPER('hello');

-- Convert a string to lowercase
SELECT LOWER('WORLD');

-- Trim leading and trailing spaces from a string
SELECT TRIM('  Hello   ') AS output;

#DateTime scalar function
-- Add 10 days to a date
SELECT DATE_ADD('2024-04-20', INTERVAL 10 DAY);

-- Difference in days between two dates
SELECT DATEDIFF('2024-04-30', '2024-04-20');

-- Extract year from a date
SELECT YEAR('2024-04-20');

-- Extract month from a date
SELECT MONTH('2024-04-20');

-- Format a date as 'YYYY-MM-DD'
SELECT DATE_FORMAT('2024-04-20', '%Y-%m-%d');


#Conversion scalar function
-- Convert a string to integer
SELECT CAST('10' AS UNSIGNED);

-- Convert a string to date
SELECT CONVERT('2024-04-20', DATE);

-- Parse a string to date
SELECT STR_TO_DATE('20-04-2024', '%d-%m-%Y');


#Aggregate scalar function
-- Sum of numbers in a column
SELECT SUM(salary) FROM employees;

-- Average of numbers in a column
SELECT AVG(age) FROM employees;

-- Count of non-null values in a column
SELECT COUNT(*) FROM customers;

-- Minimum value in a column
SELECT MIN(price) FROM products;

-- Maximum value in a column
SELECT MAX(quantity) FROM inventory;


