/*
@Author: Rohan Vetale
@Date: 31-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 1-04-2024 04:00PM
@Title : SQL Queries to Implement some aggregate functions.
*/
CREATE DATABASE newStudent;
USE newStudent;
CREATE TABLE student
(rno INT(4) PRIMARY KEY,
sname VARCHAR(20) NOT NULL,
asmno INT(5) UNIQUE,
sub VARCHAR(15),
total_marks DEC(3) DEFAULT 100,
marks_obtained DEC(3),
CHECK(marks_obtained<=total_marks)
);
SHOW TABLES;
DESC student;
SELECT * FROM student;
INSERT INTO student VALUES(101, 'Harry', 1001, 'Math', 100, 54);
SELECT * FROM student;
INSERT INTO student VALUES(102, 'john', 1002, 'Math', 100, 90);
INSERT INTO student VALUES(103, 'jack', 1003, 'Math', 100, 84);
INSERT INTO student VALUES(104, 'tom', 1004, 'Math', 100, 74);
INSERT INTO student VALUES(105, 'robert', 1005, 'Math', 100, 77);
SELECT * FROM student;
select COUNT(sname) FROM student;
SELECT COUNT(DISTINCT SNAME) FROM student;
SELECT * FROM student;
SELECT SUM(marks_obtained) FROM student;
SELECT AVG(marks_obtained) FROM student;
SELECT MIN(marks_obtained) FROM student;
SELECT MAX(marks_obtained) FROM student;