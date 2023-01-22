SELECT * FROM austin_weather;

/*
a) How many days are recorded in the dataset?
b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)
c) What is the average Humidity across all days? (column HumidityAvgPercent)
d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
*/

SELECT COUNT(distinct date) from austin_weather;

/* there are 1319 days recorded */

SELECT MAX(TempHighF)
FROM austin_weather;

SELECT date, TempHighF
FROM austin_weather
WHERE TempHighF = 107;

/* the 29-07-2021, with a 107º Fahrenheit */

SELECT AVG(HumidityAvgPercent)
FROM austin_weather;

/* the average temperature is 66.57º Fahrenheit */

SELECT date, SeaLevelPressureAvgInches
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;

/* 19-11-2016, 08-12-2016, 31-12-2014, 03-03-2017, 01-01-2016, 04-01-2015, 23-01-2014, 27-11-2014, 04-12-2015 and 23-02-2015 */
