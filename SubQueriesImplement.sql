/*
@Author: Rohan Vetale
@Date: 17-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 17-04-2024 06:00PM
@Title : SQL queries for SubQueries implementation
*/

SELECT * FROM clean_data;

SELECT `who region`, count(`country/region`) FROM clean_data
GROUP BY `who region`;

#SubQuery Scalar implementation (Returns single row)

#To get the country names where the confirmed cases were more than the total average confirmed cases 
SELECT `country/region`, Confirmed FROM clean_data
WHERE `confirmed` > (SELECT AVG(confirmed) FROM clean_data);

#To get the country names where the confirmed cases were less than the total average confirmed cases 
SELECT `country/region`, Confirmed FROM clean_data
WHERE `confirmed` < (SELECT AVG(confirmed) FROM clean_data);

#SubQuery MultiRow 

#To get the number of deaths and confirmed cases that starts with 'Ca'
SELECT deaths, confirmed FROM clean_data
WHERE `country/region` IN (SELECT `country/region` FROM clean_data
WHERE `country/region` LIKE 'Ca%')
ORDER BY confirmed DESC;


#SubQuery Correlated
-- Subquery Correlated (Returns data related to each row in the outer query)

-- To get the number of confirmed cases for each country where the confirmed cases are greater than the average confirmed cases for their respective WHO regions
SELECT `country/region`, Confirmed 
FROM clean_data cd1
WHERE Confirmed > (SELECT AVG(Confirmed) 
                   FROM clean_data cd2 
                   WHERE cd1.`WHO Region` = cd2.`WHO Region`)
LIMIT 10;

-- To get the number of confirmed cases for each country where the confirmed cases are less than the average confirmed cases for their respective WHO regions
SELECT `country/region`, Confirmed 
FROM clean_data cd1
WHERE Confirmed < (SELECT AVG(Confirmed) 
                   FROM clean_data cd2 
                   WHERE cd1.`WHO Region` = cd2.`WHO Region`);


