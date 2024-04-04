/*
@Author: Rohan Vetale
@Date: 03-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 03-04-2024 04:00PM
@Title : SQL Queries to Implement TCL commands.
*/

set autocommit = 0;
drop table student;
CREATE TABLE student(sid int(3), sname varchar(15));
INSERT INTO student values(101, 'john');
INSERT INTO student values(102, 'jack');
INSERT INTO student values(103, 'jerry');

SELECT * from student; 
Commit;
DELETE FROM student WHERE sid = 103;

SELECT * from student; 
ROLLBACK;
SELECT * from student;