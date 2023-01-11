USE intro_ai;

SELECT * FROM austin_weather;

SELECT count(Date) AS 'Qty measures'
FROM austin_weather;

SELECT Date, TempHighF
FROM austin_weather
ORDER BY TempHighF DESC
LIMIT 1;

SELECT AVG(HumidityAvgPercent) AS 'Average Humidity'
FROM austin_weather;

SELECT Date, DewPointAvgF, SeaLevelPressureAvgInches 
FROM austin_weather
WHERE DewPointAvgF>28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;