-- Check for duplicates in daily_activity
SELECT 
  Id, 
  ActivityDate, 
  COUNT(*) 
FROM 
  daily_activity 
GROUP BY 
  Id, 
  ActivityDate 
HAVING 
  COUNT(*) > 1;
  
-- Check for negative heart rate values
SELECT 
  * 
FROM 
  heartrate_seconds 
WHERE 
  Value <= 0;
  
-- Remove incorrect value for heartrate_seconds
DELETE FROM 
  heartrate_seconds 
WHERE 
  Value <= 0;
  
-- Check for duplicates in hourly_calories
SELECT 
  Id, 
  ActivityHour, 
  COUNT(*) 
FROM 
  hourly_calories 
GROUP BY 
  Id, 
  ActivityHour 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in hourly_intensities
SELECT 
  Id, 
  ActivityHour, 
  COUNT(*) 
FROM 
  hourly_intensities 
GROUP BY 
  Id, 
  ActivityHour 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in hourly_steps
SELECT 
  Id, 
  ActivityHour, 
  COUNT(*) 
FROM 
  hourly_steps 
GROUP BY 
  Id, 
  ActivityHour 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in minute_calories_narrow
SELECT 
  Id, 
  ActivityMinute, 
  COUNT(*) 
FROM 
  minute_calories_narrow 
GROUP BY 
  Id, 
  ActivityMinute 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in minute_intensities_narrow
SELECT 
  Id, 
  ActivityMinute, 
  COUNT(*) 
FROM 
  minute_intensities_narrow 
GROUP BY 
  Id, 
  ActivityMinute 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in minute_mets_narrow
SELECT 
  Id, 
  ActivityMinute, 
  COUNT(*) 
FROM 
  minute_mets_narrow 
GROUP BY 
  Id, 
  ActivityMinute 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in minute_sleep
SELECT 
  Id, 
  date, 
  logId, 
  COUNT(*) 
FROM 
  minute_sleep 
GROUP BY 
  Id, 
  date, 
  logId 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in minute_steps_narrow
SELECT 
  Id, 
  ActivityMinute, 
  COUNT(*) 
FROM 
  minute_steps_narrow 
GROUP BY 
  Id, 
  ActivityMinute 
HAVING 
  COUNT(*) > 1;
  
-- Check for duplicates in weight_log_info
SELECT 
  Id, 
  Date, 
  LogId, 
  COUNT(*) 
FROM 
  weight_log_info 
GROUP BY 
  Id, 
  Date, 
  LogId 
HAVING 
  COUNT(*) > 1;
