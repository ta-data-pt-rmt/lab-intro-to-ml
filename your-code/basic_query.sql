-- Check the first 5 rows with the columns
SELECT * FROM austin_weather LIMIT 5;
-- Count the number of records
SELECT COUNT(*) FROM austin_weather;
-- There are 1319 days recorded
SELECT Date, TempHighF FROM austin_weather 
WHERE TempHighF= (SELECT MAX(TempHighF) FROM austin_weather);
-- Calculate the average value for HumidityAvgPercent
SELECT AVG(HumidityAvgPercent) FROM austin_weather;
--  Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
SELECT Date, SeaLevelPressureAvgInches, DewPointAvgF FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC
LIMIT 10;