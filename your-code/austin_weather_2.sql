## How many days are recorded in the dataset?
SELECT COUNT(DISTINCT aw.Date)
FROM austin_weather as aw;

## What is the day with the Highest Temperature in Fahrenheit (column TempHighF)?
SELECT Date, TempHighF
FROM austin_weather
WHERE TempHighF = (SELECT MAX(TempHighF) FROM austin_weather);

## What is the average Humidity across all days? (column HumidityAvgPercent)
SELECT AVG(HumidityAvgPercent)
FROM austin_weather;

## Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?
SELECT aw.Date
FROM austin_weather aw
WHERE aw.DewPointAvgF > 28
ORDER BY aw.SeaLevelPressureAvgInches DESC
LIMIT 10;