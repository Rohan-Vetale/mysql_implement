/*
@Author: Rohan Vetale
@Date: 15-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 16-04-2024 06:00PM
@Title : SQL queries for trigger implementation
*/

CREATE TABLE employee(
id INT PRIMARY KEY AUTO_INCREMENT,
name TEXT,
working_hours INT NOT NULL,
per_hr_salary INT NOT NULL,
salary INT
);

INSERT INTO employee(name, working_hours, per_hr_salary)
VALUES
(
'hemant', 2000, 100
);

SELECT * FROM employee;


#This trigger is used to assign salaries to the employees as soon as the new row is being created.
DELIMITER //
CREATE TRIGGER salary_trgr
BEFORE INSERT
ON employee FOR EACH ROW
BEGIN
	SET NEW.salary = NEW.per_hr_salary * NEW.working_hours;
END; //

DELIMITER ;


DROP TRIGGER salary_trgr;

DELETE FROM employee
WHERE name LIKE 'hem%';

SET SQL_SAFE_UPDATES = 0;

/*
Side Notes:
To use the OLD and NEW keywords, remember the following:
	INSERT operation: Supports only - NEW
    UPDATE operation: Supports both - OLD and NEW
    DELETE operation: Support only - OLD

*/
