/*
@Author: Rohan Vetale
@Date: 08-04-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 09-04-2024 06:00PM
@Title : SQL Queries to solve problems on Covid Data 1.
*/

#Fetch the number of death percentage
SELECT `Deaths / 100 Cases` FROM day_wise;

#Fetch the countries with the highest infection rates (top 5)
SELECT `country/region`,`Deaths/1M pop` FROM whole_data
ORDER BY `Deaths/1M pop` DESC
LIMIT 5;

#Fetch the countries and continents with highest death counts (Top 5)
SELECT `country/region`,Continent,`Deaths/1M pop` FROM whole_data
ORDER BY `Deaths/1M pop` DESC
LIMIT 5;


SELECT
    `Country/Region`,
    SUM(TotalCases) / Population AS Cases_Per_Population
FROM
    whole_data
GROUP BY
    `Country/Region`
ORDER BY
    Cases_Per_Population DESC
LIMIT 10;


-- Locally (by country)
SELECT `Country/Region`, (TotalDeaths / TotalCases) * 100 AS DeathPercentage
FROM whole_data
ORDER BY DeathPercentage DESC;

-- Globally
SELECT 'Global' AS Location, (SUM(TotalDeaths) / SUM(TotalCases)) * 100 AS GlobalDeathPercentage
FROM whole_data;

