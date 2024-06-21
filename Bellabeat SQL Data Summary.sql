-- Calculate average daily steps
SELECT 
  ActivityDate, 
  AVG(TotalSteps) AS AverageDailySteps 
FROM 
  daily_activity 
GROUP BY 
  ActivityDate;
  
-- Calculate average heart rate for each hour of the day and sort by average heart rate
SELECT 
  HOUR(
    STR_TO_DATE(Time, '%c/%e/%Y %r')
  ) AS Hour, 
  AVG(Value) AS AverageHeartRate 
FROM 
  heartrate_seconds 
GROUP BY 
  HOUR(
    STR_TO_DATE(Time, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageHeartRate DESC;
  
-- Calculate average hourly calories burned and sort by average hourly calories
SELECT 
  HOUR(
    STR_TO_DATE(ActivityHour, '%c/%e/%Y %r')
  ) AS Hour, 
  AVG(Calories) AS AverageHourlyCalories 
FROM 
  hourly_calories 
GROUP BY 
  HOUR(
    STR_TO_DATE(ActivityHour, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageHourlyCalories DESC;
  
-- Calculate average hourly intensity and sort by average hourly intensity
SELECT 
  HOUR(
    STR_TO_DATE(ActivityHour, '%c/%e/%Y %r')
  ) AS Hour, 
  AVG(AverageIntensity) AS AverageHourlyIntensity 
FROM 
  hourly_intensities 
GROUP BY 
  HOUR(
    STR_TO_DATE(ActivityHour, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageHourlyIntensity DESC;
  
-- Calculate average hourly steps and sort by average hourly steps
SELECT 
  HOUR(
    STR_TO_DATE(ActivityHour, '%c/%e/%Y %r')
  ) AS Hour, 
  AVG(StepTotal) AS AverageHourlySteps 
FROM 
  hourly_steps 
GROUP BY 
  HOUR(
    STR_TO_DATE(ActivityHour, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageHourlySteps DESC;
  
  -- Combining daily activity and hourly steps data
SELECT 
  da.Id, 
  da.ActivityDate, 
  AVG(hs.StepTotal) AS AverageHourlySteps 
FROM 
  daily_activity da 
  JOIN hourly_steps hs ON da.Id = hs.Id 
GROUP BY 
  da.Id, 
  da.ActivityDate 
ORDER BY 
  AverageHourlySteps DESC;
  
  -- Combining hourly steps and hourly calories data
SELECT 
  hs.Id, 
  DATE(
    STR_TO_DATE(hs.ActivityHour, '%m/%d/%Y %r')
  ) AS Date, 
  HOUR(
    STR_TO_DATE(hs.ActivityHour, '%m/%d/%Y %r')
  ) AS Hour, 
  AVG(hs.StepTotal) AS AverageHourlySteps, 
  AVG(hc.Calories) AS AverageHourlyCalories 
FROM 
  hourly_steps hs 
  JOIN hourly_calories hc ON hs.Id = hc.Id 
  AND hs.ActivityHour = hc.ActivityHour 
GROUP BY 
  hs.Id, 
  Date, 
  Hour 
ORDER BY 
  AverageHourlySteps DESC;
  
-- Calculate average minute-by-minute calories burned and sort by average minute calories
SELECT 
  MINUTE(
    STR_TO_DATE(ActivityMinute, '%c/%e/%Y %r')
  ) AS Minute, 
  AVG(Calories) AS AverageMinuteCalories 
FROM 
  minute_calories_narrow 
GROUP BY 
  MINUTE(
    STR_TO_DATE(ActivityMinute, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageMinuteCalories DESC;
  
-- Calculate average minute-by-minute intensity and sort by average minute intensity in descending order
SELECT 
  MINUTE(
    STR_TO_DATE(ActivityMinute, '%c/%e/%Y %r')
  ) AS Minute, 
  AVG(Intensity) AS AverageMinuteIntensity 
FROM 
  minute_intensities_narrow 
GROUP BY 
  MINUTE(
    STR_TO_DATE(ActivityMinute, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageMinuteIntensity DESC;
  
-- Calculate average minute-by-minute METs and sort by average minute METs
SELECT 
  MINUTE(
    STR_TO_DATE(ActivityMinute, '%c/%e/%Y %r')
  ) AS Minute, 
  AVG(METs) AS AverageMinuteMETs 
FROM 
  minute_mets_narrow 
GROUP BY 
  MINUTE(
    STR_TO_DATE(ActivityMinute, '%c/%e/%Y %r')
  ) 
ORDER BY 
  AverageMinuteMETs DESC;
  
-- Calculate total sleep duration per day
SELECT 
  DATE(
    STR_TO_DATE(date, '%c/%e/%Y %r')
  ) AS Date, 
  SUM(value) AS TotalSleepDuration 
FROM 
  minute_sleep 
GROUP BY 
  DATE(
    STR_TO_DATE(date, '%c/%e/%Y %r')
  );
  
  -- Combining daily activity and sleep data
SELECT 
  da.Id, 
  da.ActivityDate, 
  AVG(ms.value) AS AverageSleepDuration 
FROM 
  daily_activity da 
  JOIN minute_sleep_corrected ms ON da.Id = ms.Id 
GROUP BY 
  da.Id, 
  da.ActivityDate 
ORDER BY 
  AverageSleepDuration DESC;
  
-- Calculate average sleep duration per day
SELECT 
  Date, 
  AVG(TotalSleepDuration) AS AverageSleepDuration 
FROM 
  (
    SELECT 
      DATE(
        STR_TO_DATE(date, '%c/%e/%Y %r')
      ) AS Date, 
      SUM(value) AS TotalSleepDuration 
    FROM 
      minute_sleep 
    GROUP BY 
      DATE(
        STR_TO_DATE(date, '%c/%e/%Y %r')
      )
  ) AS daily_sleep 
GROUP BY 
  Date;
