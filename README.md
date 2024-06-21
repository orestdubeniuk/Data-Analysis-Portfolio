# Orest Dubeniuk — Data Analyst Portfolio

Showcasing my data analysis projects, including data cleaning, visualization, and insights.
## About
Hello GitHub community, I hope you and your loved ones are doing well 🫂

I am Orest and I am Junior Data Analyst. I have 5 years' experience in the digital field, most recently in a Software Testing position. With my expertise in digital, IT and Data Analysis, I can help make your project not only high-quality but also commercially successful. 

**My Technical Skills:** SQL (BigQuery, MySQL, TablePlus), Google Sheets / Exel, posit.cloud (R Programming), Tableau, Jira, Trello, Querio


## Bellabeat Project
**Statement of the Business Task:**

**Problem to Solve:** Need to understand how people use smart devices to help Bellabeat improve its marketing strategy and grow its business.

**Insights Driving Business Decisions:** By analysing how people use smart devices, we can find out what features and trends are popular. This will help Bellabeat tailor its products and marketing efforts to better meet customer needs and preferences.

**Business Task:** The primary business task is to analyze smart device fitness data for one of Bellabeat’s products. This analysis aims to uncover insights into consumer usage patterns and behaviors. The goal is to leverage these insights to guide and inform Bellabeat’s marketing strategy, driving growth opportunities for the company. The findings and marketing recommendations will be presented to the Bellabeat executive team, including cofounder and Chief Creative.
***
**Description of Data Sources:**

[**FitBit Fitness Tracker Data**](https://www.kaggle.com/datasets/arashnic/fitbit) (CC0: Public Domain, dataset made available through [Mobius](https://www.kaggle.com/arashnic)): This Kaggle data set contains personal fitness tracker from thirty fitbit users. Thirty eligible Fitbit users consented to the submission of personal tracker data, including minute-level output for physical activity, heart rate, and sleep monitoring. It includes information about daily activity, steps, and heart rate that can be used to explore users’ habits.

The data for this analysis comes from the [**FitBit Fitness Tracker Data**](https://www.kaggle.com/datasets/arashnic/fitbit) dataset provided by Bellabeat, which includes the following files: 

- `dailyActivity_merged.csv`: Contains daily activity data such as steps, distance, calories burned, and activity levels.
- `heartrate_seconds_merged.csv`: Contains heart rate data recorded every second.
- `hourlyCalories_merged.csv`: Contains hourly calorie burn data.
- `hourlyIntensities_merged.csv`: Contains hourly activity intensity data.
- `hourlySteps_merged.csv`: Contains hourly step count data.
- `minuteCaloriesNarrow_merged.csv`: Contains minute-by-minute calorie burn data.
- `minuteIntensitiesNarrow_merged.csv`: Contains minute-by-minute activity intensity data.
- `minuteMETsNarrow_merged.csv`: Contains minute-by-minute metabolic equivalent data.
- `minuteSleep_merged.csv`: Contains minute-by-minute sleep data.
- `minuteStepsNarrow_merged.csv`: Contains minute-by-minute step count data.
- `weightLogInfo_merged.csv`: Contains weight log information including weight, BMI, and fat percentage.

### SQL Preparation

These SQL commands will ensure that all datasets are free of missing values before proceeding with the analysis and rename the table names for more convenient use of the code.

**Code:** [Bellabeat SQL Preparation.sql](https://github.com/orestdubeniuk/Data-Analysis-Portfolio/blob/main/Bellabeat%20SQL%20Preparation.sql)

***

### Data Cleaning Process

**Code:** [Bellabeat SQL Data Cleaning.sql](https://github.com/orestdubeniuk/Data-Analysis-Portfolio/blob/main/Bellabeat%20SQL%20Data%20Cleaning.sql)
***
### SQL Data Summary

SQL Data Summary with Joins and Correcting DateTime:

**Code:** [Bellabeat SQL Data Summary.sql](https://github.com/orestdubeniuk/Data-Analysis-Portfolio/blob/main/Bellabeat%20SQL%20Data%20Summary.sql)

**Examples result:**

<img width="1296" alt="Screenshot 2024-06-19 at 17 27 53" src="https://github.com/orestdubeniuk/Data-Analysis-Portfolio/assets/173065503/6648bd1b-e446-42f0-abbc-3917d9b2d736">

<img width="1388" alt="Screenshot 2024-06-21 at 14 15 26" src="https://github.com/orestdubeniuk/Data-Analysis-Portfolio/assets/173065503/ebc02509-b151-46ee-8859-68bb20734a45">

***
### Visualisation with posit.cloud (R Programming)

**Code:** [Visualisation with R Programming.R](https://github.com/orestdubeniuk/Data-Analysis-Portfolio/blob/main/Visualisation%20with%20R%20Programming.R)

**Example result:** hourly_steps_hourly_calories data provides a visual representation of the average number of steps taken and the average number of calories burned per hour throughout the day.

![average_hourly_steps_calories](https://github.com/orestdubeniuk/Data-Analysis-Portfolio/assets/173065503/ea351662-aaca-43eb-9e6a-e9bd06fe5ca3)

***
**Insights:**

1. **Peak Activity Periods:** Users show higher activity levels during morning and evening hours. Marketing strategies can target these peak times with motivational messages and reminders.
2. **Heart Rate Insights:** There are significant fluctuations in heart rate throughout the day, suggesting opportunities for personalised fitness plans and stress management programs.
3. **Sleep Patterns:** Many users have irregular sleep patterns, indicating a need for features that promote better sleep hygiene and routines.
4. **Weight Management:** Consistent tracking of weight and BMI suggests users are engaged with fitness goals. Tailored content on nutrition and exercise could enhance user experience.






