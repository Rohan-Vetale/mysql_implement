/*
@Author: Rohan Vetale
@Date: 15-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 16-04-2024 06:00PM
@Title : SQL queries for complex joins implementation
*/

#Create a separate db for joins
CREATE DATABASE joinsdb;
USE joinsdb;

#Creating tables
-- Create the first table
CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(100)
);

-- Create the second table
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Create the third table
CREATE TABLE project (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100) NOT NULL,
    department_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- Create the fourth table
CREATE TABLE task (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    task_description TEXT,
    project_id INT,
    assigned_to INT,
    deadline DATE,
    FOREIGN KEY (project_id) REFERENCES project(project_id),
    FOREIGN KEY (assigned_to) REFERENCES employee(employee_id)
);

-- Create the fifth table
CREATE TABLE task_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    task_id INT,
    log_date DATE,
    log_description TEXT,
    FOREIGN KEY (task_id) REFERENCES task(task_id)
);


#Adding rows to the tabples
-- Insert data into department table
INSERT INTO department (department_name, location) VALUES
('HR', 'New York'),
('Finance', 'London'),
('Marketing', 'Paris');

-- Insert data into employee table
INSERT INTO employee (employee_name, department_id, hire_date) VALUES
('John Doe', 1, '2023-01-15'),
('Alice Smith', 2, '2022-05-20'),
('Michael Johnson', 3, '2021-11-10');

-- Insert data into project table
INSERT INTO project (project_name, department_id, start_date, end_date) VALUES
('HR System Upgrade', 1, '2023-02-01', '2023-06-30'),
('Financial Reporting Automation', 2, '2022-09-15', '2023-03-31'),
('Product Launch Campaign', 3, '2023-04-01', '2023-08-31');

-- Insert data into task table
INSERT INTO task (task_description, project_id, assigned_to, deadline) VALUES
('Design UI for HR System', 1, 1, '2023-03-15'),
('Implement payroll module', 1, 2, '2023-06-15'),
('Generate financial reports', 2, 2, '2023-03-15'),
('Create marketing materials', 3, 3, '2023-07-31');

-- Insert data into task_log table
INSERT INTO task_log (task_id, log_date, log_description) VALUES
(1, '2023-02-20', 'Completed UI design phase'),
(2, '2023-04-10', 'Implemented payroll calculations'),
(3, '2023-01-25', 'Generated quarterly financial reports'),
(4, '2023-06-10', 'Started designing marketing campaign');

#Join 5 tables together using inner join
SELECT *
FROM department d
JOIN employee e 
ON d.department_id = e.department_id
JOIN project p 
ON d.department_id = p.department_id
JOIN task t 
ON p.project_id = t.project_id
JOIN task_log tl 
ON t.task_id = tl.task_id;

SELECT *
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
LEFT JOIN project p ON d.department_id = p.department_id
LEFT JOIN task t ON p.project_id = t.project_id
LEFT JOIN task_log tl ON t.task_id = tl.task_id;


SELECT *
FROM department d
RIGHT JOIN employee e ON d.department_id = e.department_id
RIGHT JOIN project p ON d.department_id = p.department_id
RIGHT JOIN task t ON p.project_id = t.project_id
RIGHT JOIN task_log tl ON t.task_id = tl.task_id;


SELECT *
FROM department d
LEFT JOIN employee e ON d.department_id = e.department_id
LEFT JOIN project p ON d.department_id = p.department_id
LEFT JOIN task t ON p.project_id = t.project_id
LEFT JOIN task_log tl ON t.task_id = tl.task_id
UNION
SELECT *
FROM department d
RIGHT JOIN employee e ON d.department_id = e.department_id
RIGHT JOIN project p ON d.department_id = p.department_id
RIGHT JOIN task t ON p.project_id = t.project_id
RIGHT JOIN task_log tl ON t.task_id = tl.task_id
WHERE d.department_id IS NULL;

