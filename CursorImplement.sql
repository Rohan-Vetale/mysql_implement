/*
@Author: Rohan Vetale
@Date: 08-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 09-04-2024 06:00PM
@Title : SQL Queries for cursor implementation
*/

#While loop implementation with the stored procedure
CREATE DEFINER=`root`@`localhost` PROCEDURE `simple_loop`()
BEGIN
	DECLARE counter INT DEFAULT 1;

    -- Loop from 1 to 10
    WHILE counter <= 10 DO
        -- Output the current value of the counter
        SELECT counter;
        
        -- Increment the counter
        SET counter = counter + 1;
    END WHILE;
END

CALL simple_loop;

#Cursor implementation with stored procedure
CREATE DEFINER=`root`@`localhost` PROCEDURE `process_data`()
BEGIN
	DECLARE done INT DEFAULT FALSE;
    DECLARE value INT;

    -- Declare cursor
    DECLARE cur CURSOR 
    FOR 
        SELECT `population` FROM whole_data
        WHERE `continent` LIKE 'Sou%' AND `population` >= 30427499;
        
	-- Declare handler for cursor
    DECLARE CONTINUE HANDLER #Condition handler
		FOR 
			NOT FOUND  #condition
				SET done = TRUE; #task
    
    -- Open cursor
    OPEN cur;

    -- Fetch rows and process them
    read_loop: LOOP
        FETCH cur INTO value;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT value;
        -- Process row
        -- Do something with 'value'
        -- For example: INSERT INTO another_table(value) VALUES(value);
    END LOOP;

    -- Close cursor
    CLOSE cur;
END

CALL process_data;


