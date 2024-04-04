/*
@Author: Rohan Vetale
@Date: 31-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 1-04-2024 04:00PM
@Title : SQL Queries to Implement some DDL functions.
*/

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
ALTER TABLE student ADD fname VARCHAR(20) AFTER sname;
RENAME TABLE student TO newStudent;
SHOW TABLES;
ALTER TABLE newStudent RENAME COLUMN sname TO stuNAME;
DESC newStudent;
ALTER TABLE newStudent RENAME COLUMN fname TO fNAME;