/*
@Author: Rohan Vetale
@Date: 03-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 03-04-2024 04:00PM
@Title : SQL Queries to Implement string functions.
*/
#----------------------VIEWS-------------------------------
#Views in SQL are a kind of virtual table. 
#A view also has rows and columns like tables, 
#but a view doesn’t store data on the disk like a table. 
#View defines a customized query that retrieves data from one or more tables, 
#and represents the data as if it was coming from a single source.
#They are always upto-date

CREATE DATABASE VIEW_SQL;
USE VIEW_SQL;
CREATE TABLE StudentDetails(S_id int PRIMARY KEY, firstName varchar(255), Address varchar(255));
INSERT INTO StudentDetails (S_id, firstName, Address) 
VALUES    
	(1, 'Harsh', 'Kolkata'),
    (2, 'Ashish', 'Durgapur'),
    (3, 'Pratik', 'Delhi'),
    (4, 'Dhanraj', 'Bihar'),
    (5, 'Ram', 'Rajasthan');

CREATE TABLE StudentMarks(id int PRIMARY KEY, Name varchar(255), Marks int);
INSERT INTO StudentMarks (ID, NAME, Marks)
VALUES
    (1, 'Harsh', 90),
    (2, 'Suresh', 50),
    (3, 'Pratik', 80),
    (4, 'Dhanraj', 95),
    (5, 'Ram', 85);

CREATE VIEW View_Details AS
SELECT firstName, Address
FROM StudentDetails;

SELECT * FROM View_Details;

#---------------------view from multiple tables------------------------- 

CREATE VIEW MarksView AS
SELECT firstName, ADDRESS, MARKS
FROM StudentDetails, StudentMarks;

SELECT * FROM MarksView;

#---------------------delete views in a database------------------------- 
DROP VIEW View_Details;

#---------------------UPDATE VIEWS in a database--------------------------
UPDATE MarksView SET Marks=77
WHERE firstName='Pratik';



