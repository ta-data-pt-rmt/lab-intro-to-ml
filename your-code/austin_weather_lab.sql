USE austin_weather;

/*a) How many days are recorded in the dataset?*/
SELECT COUNT(Date)
FROM austin_weather;

/*b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)*/
SELECT MAX(DewPointHighF)
FROM austin_weather;

/*c) What is the average Humidity across all days? (column HumidityAvgPercent)*/
SELECT AVG(HumidityAvgPercent)
FROM austin_weather;

/*d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?*/
SELECT SeaLevelPressureAvgInches
FROM austin_weather
WHERE (DewPointAvgF > 28)
LIMIT 10;

SELECT * FROM austin_weather;