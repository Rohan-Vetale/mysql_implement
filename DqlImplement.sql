/*
@Author: Rohan Vetale
@Date: 02-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 02-04-2024 04:00PM
@Title : SQL Queries to Implement some DQL functions.
*/

SHOW DATABASES;
USE newstudent;
SELECT * FROM student;
SELECT sname, sub, marks_obtained FROM student;
SELECT sname, marks_obtained FROM student WHERE marks_obtained>70;

