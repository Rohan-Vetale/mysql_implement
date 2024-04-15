/*
@Author: Rohan Vetale
@Date: 12-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 14-04-2024 06:00PM
@Title : SQL Queries for implementing indexes in mysql.
*/

#To create an Index for a table
CREATE INDEX country_region_idx
ON whole_data(continent(20));

#To see records of indexes of a table
SHOW INDEXES FROM whole_data;

#To drop an index from a table
ALTER TABLE whole_data
DROP INDEX country_region_idx;
# or DROP INDEX country_region_idx ON whole_data;