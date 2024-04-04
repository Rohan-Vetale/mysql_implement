/*
@Author: Rohan Vetale
@Date: 30-03-2024 04:00PM
@Last Modified by: Rohan Vetale
@Last Modified time: 30-03-2024 04:00PM
@Title : SQL Queries to Implement datTime Functions.
*/

#1.ADDDATE(): It returns a date after a certain time/date interval has been added.
SELECT ADDTIME("2018-07-16 02:52:47", "2");

#2.ADDTIME(): It returns a time / date time after a certain time interval has been added.
SELECT ADDTIME("2017-06-15 09:34:21", "2");

#3.CURDATE(): It returns the current date.
 SELECT CURDATE();
 
 #4.CURRENT_DATE(): It returns the current date.
SELECT CURRENT_DATE();

#5.CURRENT_TIME(): It returns the current time.
SELECT CURRENT_TIME();

#6.CURRENT_TIMESTAMP(): It returns the current date and time.
 SELECT CURRENT_TIMESTAMP();
 
 #7.CURTIME(): It returns the current time.
 SELECT CURTIME();
 
#8.DATE(): It extracts the date value from a date or date time expression.
SELECT DATE("2017-06-15");
  
#9.DATEDIFF(): It returns the difference in days between two date values.
SELECT DATEDIFF("2017-06-25", "2017-06-15");
 
#10.DATE_ADD(): It returns a date after a certain time/date interval has been added.
SELECT DATE_ADD("2018-07-16", INTERVAL 10 DAY);
 
#11.DATE_FORMAT(): It formats a date as specified by a format mask.
SELECT DATE_FORMAT("2018-06-15", "%Y");
 
#12.DATE_SUB(): It returns a date after a certain time/date interval has been subtracted.
SELECT DATE_SUB("2017-06-15", INTERVAL 10 DAY);
  
#13.DAY(): It returns the day portion of a date value.
SELECT DAY("2018-07-16");

#14.DAYNAME(): It returns the weekday name for a date.
SELECT DAYNAME('2008-05-15');

#15.DAYOFMONTH(): It returns the day portion of a date value.
SELECT DAYOFMONTH('2018-07-16');

#16.DAYWEEK(): It returns the weekday index for a date value.
SELECT WEEKDAY("2018-07-16");

#17.DAYOFYEAR(): It returns the day of the year for a date value.
 SELECT DAYOFYEAR("2018-07-16");

#18.EXTRACT(): It extracts parts from a date.
SELECT EXTRACT(MONTH FROM "2018-07-16");

#19.FROM_DAYS(): It returns a date value from a numeric representation of the day.
SELECT FROM_DAYS(685467);

#20.HOUR(): It returns the hour portion of a date value.
SELECT HOUR("2018-07-16 09:34:00");

#21.LAST_DAY(): It returns the last day of the month for a given date.
SELECT LAST_DAY('2018-07-16');

#22.LOCALTIME(): It returns the current date and time.
SELECT LOCALTIME();

#23.LOCALTIMESTAMP(): It returns the current date and time.
SELECT LOCALTIMESTAMP();

#24.MAKEDATE(): It returns the date for a certain year and day-of-year value.
 SELECT MAKEDATE(2009, 138);
 
 #25.MAKETIME(): It returns the time for a certain hour, minute, second combination.
 SELECT MAKETIME(11, 35, 4);