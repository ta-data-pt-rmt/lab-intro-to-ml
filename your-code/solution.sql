 SELECT COUNT(Date)
 FROM austin_weather;
 
 SELECT Date,TempHighF 
 FROM austin_weather
 ORDER BY TempHighF DESC
 Limit 1;
 
 SELECT AVG (HumidityAvgPercent)
 FROM austin_weather;
 
 SELECT Date, SeaLevelPressureAvgInches
 FROM austin_weather
 WHERE DewPointAvgF >= 28
 ORDER BY SeaLevelPressureAvgInches DESC
 Limit 10;