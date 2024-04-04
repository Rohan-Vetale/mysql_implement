#implement everything

USE bigdb;

#import the csv files


#creating a temporary table
CREATE TEMPORARY TABLE my_table AS
SELECT t1.`country/region` AS matching, population FROM whole_data t1 
JOIN group_data t2
ON t1.`country/region` = t2.`country/region`;

SELECT * FROM my_table; #temporary table view

#view 4 tables


SELECT * FROM day_wise;
SELECT * FROM usa_wise;
SELECT * FROM whole_data;
SELECT * FROM group_data;
SELECT * FROM clean_data;

SELECT * FROM clean_data
WHERE `country/region` LIKE 'Us%';

#using function
SELECT new_function() AS total_population;

#syntax for all the joins
SELECT * FROM group_data t1
INNER JOIN clean_data t2 ON t1.`Country/Region` <> t2.`Country/Region`;


SELECT *
FROM group_data t1
LEFT JOIN clean_data t2 ON t1.`Country/Region` = t2.`Country/Region`;

SELECT *
FROM group_data t1
RIGHT JOIN clean_data t2 ON t1.`Country/Region` = t2.`Country/Region`;

SELECT *
FROM group_data
CROSS JOIN clean_data;

SELECT *
FROM day_wise t1
JOIN usa_wise t2 ON t1.date = t2.date
JOIN whole_data t3 ON t2.`Country/Region` = t3.`Country/Region`
JOIN group_data t4 ON t3.`Country/Region` = t4.`Country/Region`
JOIN clean_data t5 ON t4.`Country/Region` = t5.`Country/Region`;

DELIMITER $$
CREATE FUNCTION `new_function`()
RETURNS int
READS SQL DATA
BEGIN
    DECLARE population INT;

    -- Retrieve the fips count from the usa_wise
    SELECT COUNT(fips) INTO population FROM usa_wise;

    -- Return the population
    RETURN population;
END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `get_whole_data`()
BEGIN
	SELECT * FROM whole_data;
END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE `get_specific_column`(IN column_name1 TEXT)
BEGIN
	SELECT column_name1 FROM whole_data;
END$$
DELIMITER ;


SELECT *
FROM clean_data AS cd
JOIN group_data AS gd ON cd.`Country/Region` = gd.`Country/Region`
JOIN usa_wise AS uw ON cd.`Country/Region` = uw.`Country_Region`
JOIN whole_data AS wd ON cd.`Country/Region` = wd.`Country/Region`;



