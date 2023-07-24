USE austin_weather;

# Question 1: How many days are recorded in the dataset?

SELECT COUNT(date) 
FROM 
  (SELECT DISTINCT DATE(Date) AS date
   FROM austin_weather) AS date_table;
   
# Question 2: What is the day with the Highest Temperature in Fahrenheit (column TempHighF)?

SELECT DATE(Date) AS day, TempHighF AS daily_temperature
FROM austin_weather
WHERE TempHighF = (SELECT MAX(TempHighF) FROM austin_weather);

# Question 3: What is the average Humidity across all days?

SELECT ROUND(AVG(HumidityAvgPercent),2) AS average_humidity
FROM austin_weather;

# Question 4: Top 10 days, where SeaLevelPressureAvgInches is the highest, knowing DewPointAvgF is higher than 28 ?

SELECT DATE(Date) AS day, SeaLevelPressureAvgInches AS sea_level_pressure, DewPointAvgF AS dew_point
FROM austin_weather
WHERE DewPointAvgF > 28 
ORDER BY sea_level_pressure DESC
LIMIT 10;




SELECT MAX(SeaLevelPressureAvgInches) FROM austin_weather;

SELECT DATE(Date) AS day, SeaLevelPressureAvgInches AS daily_temperature, DewPointAvgF AS dew_point
FROM austin_weather
WHERE SeaLevelPressureAvgInches = (SELECT MAX(SeaLevelPressureAvgInches) FROM austin_weather);

SELECT MAX(SeaLevelPressureAvgInches) FROM austin_weather;

SELECT * FROM austin_weather;

SELECT COUNT(*)
FROM austin_weather;

SELECT COUNT(date) 
FROM 
  (SELECT DISTINCT DATE(Date) AS date
   FROM austin_weather) AS date_table;

SELECT DATE(Date) AS date, TIME(Date) AS time
FROM austin_weather AS date_table;