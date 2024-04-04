/*
@Author: Rohan Vetale
@Date: 02-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 02-04-2024 04:00PM
@Title : SQL Queries to Implement indexes.
*/


SHOW DATABASES;
USE bigdb;
SHOW TABLES;
DESC clean_data;
SELECT * FROM clean_data;
CREATE INDEX IND ON clean_data(latit);
SELECT * FROM clean_data WHERE `country/region`='Algeria';
DROP INDEX IND ON clean_data;
INSERT INTO clean_data(`country/region`, latit) VALUES('India', 24315);