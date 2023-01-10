SELECT * FROM austin_weather;

SELECT COUNT(DISTINCT date)
FROM austin_weather;

SELECT max(TempHighF)
FROM austin_weather;

SELECT avg(HumidityAvgPercent)
FROM austin_weather;

SELECT Date,SeaLevelPressureAvgInches
FROM austin_weather
WHERE DewPointAvgF > 28
ORDER BY SeaLevelPressureAvgInches DESC LIMIT 10;