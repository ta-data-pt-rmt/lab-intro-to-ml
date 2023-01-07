USE austin_weather;

SELECT * FROM austin_weather;

/*a) How many days are recorded in the dataset?*/

SELECT COUNT( DISTINCT Date) as days
FROM austin_weather;

/*b) What is the day with the Highest Temperature in Fahrenheit (column TempHighF)?*/

SELECT 
    Date,
    TempHighF
FROM austin_weather 
WHERE TempHighF = ( SELECT MAX(TempHighF) FROM austin_weather );

/*c) What is the average Humidity across all days? (column HumidityAvgPercent)?*/

SELECT AVG(HumidityAvgPercent) as avg_Humidity
FROM austin_weather;

/*d) Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?*/

SELECT Date, SeaLevelPressureAvgInches, DewPointAvgF
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;