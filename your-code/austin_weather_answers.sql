use austin_weather;

/*a) How many days are recorded in the dataset?*/

SELECT COUNT(distinct date) from austin_weather;

/* */
/*b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)*/

SELECT MAX(TempHighF)
FROM austin_weather;

SELECT date, TempHighF
FROM austin_weather
WHERE TempHighF = 107;

/*  29-07-2021, with a 107 degrees Fahrenheit */

/*c) What is the average Humidity across all days? (column HumidityAvgPercent)*/

SELECT AVG(HumidityAvgPercent)
FROM austin_weather;

/* the average humidity is 66.57% */

/*d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF
 is higher than 28 ?*/
 
SELECT date, SeaLevelPressureAvgInches
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;
 
 /*
 2016-11-19,
 2016-12-08,
 2014-12-31,
 2017-03-03,
 2016-01-01,
 2015-01-04,
 2014-01-23,
 2014-11-27,
 2015-12-04,
 2015-02-23 
 */