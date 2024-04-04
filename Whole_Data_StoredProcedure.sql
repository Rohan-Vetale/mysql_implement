/*
@Author: Rohan Vetale
@Date: 30-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 30-03-2024 04:00PM
@Title : SQL Queries to Implement stored procedure.
*/

SELECT * FROM clean_data;

DELIMITER //

CREATE PROCEDURE get_customer()
BEGIN
SELECT * FROM clean_data;
END //

DELIMITER ;