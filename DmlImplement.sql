/*
@Author: Rohan Vetale
@Date: 01-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 01-04-2024 04:00PM
@Title : SQL Queries to Implement some DML functions.
*/

SHOW DATABASES;
USE SCHOOL;
SHOW TABLES;
DESC newStudent;
SELECT * FROM newStudent;
ALTER TABLE newStudent 
DROP COLUMN asmno;
SELECT * FROM newStudent;
INSERT INTO newStudent VALUES(101, 'Harry', 'daddy', 'Math', 100, 54);
SELECT * FROM newStudent;
INSERT INTO newStudent VALUES(102, 'john', 'papa', 'Math', 100, 90);
UPDATE newStudent SET rno=111
WHERE rno=101;
DELETE FROM newStudent WHERE rno=102;
