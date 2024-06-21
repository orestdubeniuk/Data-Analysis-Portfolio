-- Check for missing values in daily_activity
RENAME TABLE dailyactivity_merged TO daily_activity;

SELECT 
  * 
FROM 
  daily_activity 
WHERE 
  TotalSteps IS NULL 
  OR TotalDistance IS NULL 
  OR TrackerDistance IS NULL 
  OR LoggedActivitiesDistance IS NULL 
  OR VeryActiveDistance IS NULL 
  OR ModeratelyActiveDistance IS NULL 
  OR LightActiveDistance IS NULL 
  OR SedentaryActiveDistance IS NULL 
  OR VeryActiveMinutes IS NULL 
  OR FairlyActiveMinutes IS NULL 
  OR LightlyActiveMinutes IS NULL 
  OR SedentaryMinutes IS NULL 
  OR Calories IS NULL;
  
-- Check for missing values in heartrate_seconds
RENAME TABLE heartrate_seconds_merged TO heartrate_seconds;
SELECT 
  * 
FROM 
  heartrate_seconds 
WHERE 
  Time IS NULL 
  OR Value IS NULL;
  
-- Remove rows with missing values
DELETE FROM 
  heartrate_seconds 
WHERE 
  Time IS NULL 
  OR Value IS NULL;
  
-- Check for missing values in hourly_calories
RENAME TABLE hourlycalories_merged TO hourly_calories;
SELECT 
  * 
FROM 
  hourly_calories 
WHERE 
  ActivityHour IS NULL 
  OR Calories IS NULL;
  
-- Check for missing values in hourly_intensities
RENAME TABLE hourlyintensities_merged TO hourly_intensities;
SELECT 
  * 
FROM 
  hourly_intensities 
WHERE 
  ActivityHour IS NULL 
  OR AverageIntensity IS NULL 
  OR TotalIntensity IS NULL;
  
-- Check for missing values in hourly_steps
RENAME TABLE hourlysteps_merged TO hourly_steps;
SELECT 
  * 
FROM 
  hourly_steps 
WHERE 
  ActivityHour IS NULL 
  OR StepTotal IS NULL;
  
-- Check for missing values in minute_calories_narrow
RENAME TABLE minutecaloriesnarrow_merged TO minute_calories_narrow;
SELECT 
  * 
FROM 
  minute_calories_narrow 
WHERE 
  ActivityMinute IS NULL 
  OR Calories IS NULL;
  
-- Check for missing values in minute_intensities_narrow
RENAME TABLE minuteintensitiesnarrow_merged TO minute_intensities_narrow;
SELECT 
  * 
FROM 
  minute_intensities_narrow 
WHERE 
  ActivityMinute IS NULL 
  OR Intensity IS NULL;
  
-- Check for missing values in minute_mets_narrow
RENAME TABLE minutemetsnarrow_merged TO minute_mets_narrow;
SELECT 
  * 
FROM 
  minute_mets_narrow 
WHERE 
  ActivityMinute IS NULL 
  OR METs IS NULL;
  
-- Remove rows with missing values
DELETE FROM 
  minute_mets_narrow 
WHERE 
  ActivityMinute IS NULL 
  OR METs IS NULL;
  
-- Check for missing values in minute_sleep
RENAME TABLE minutesleep_merged TO minute_sleep;
SELECT 
  * 
FROM 
  minute_sleep 
WHERE 
  date IS NULL 
  OR value IS NULL 
  OR logId IS NULL;
  
-- Check for missing values in minute_steps_narrow
RENAME TABLE minutestepsnarrow_merged TO minute_steps_narrow;
SELECT 
  * 
FROM 
  minute_steps_narrow 
WHERE 
  ActivityMinute IS NULL 
  OR Steps IS NULL;
  
-- Remove rows with missing values
DELETE FROM 
  minute_steps_narrow 
WHERE 
  ActivityMinute IS NULL 
  OR Steps IS NULL;
  
-- Check for missing values in weight_log_info
RENAME TABLE weightloginfo_merged TO weight_log_info;
SELECT 
  * 
FROM 
  weight_log_info 
WHERE 
  Date IS NULL 
  OR WeightKg IS NULL 
  OR WeightPounds IS NULL 
  OR BMI IS NULL;
