# Orest Dubeniuk — Data Analyst Portfolio

Showcasing my data analysis projects, including data cleaning, visualization, and insights.
## About
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

