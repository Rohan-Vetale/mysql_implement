/*
@Author: Rohan Vetale
@Date: 03-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 03-04-2024 04:00PM
@Title : SQL Queries to Implement string functions.
*/

SHOW DATABASES;
USE newstudent;
DESC student;
SELECT * FROM student;
SELECT UPPER(sname) FROM student;
SELECT LENGTH(sname), sname FROM student;
SELECT SUBSTRING(sname, 1, 3), sname FROM student;
SELECT * FROM student;
SELECT CONCAT(sname, sub), sname, sub FROM student;
SELECT REPLACE(sname,'john', 'joginder'), sname FROM student;
