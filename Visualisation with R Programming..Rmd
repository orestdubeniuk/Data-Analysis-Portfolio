# hourly_steps_hourly_calories data provides a visual representation of the average number of steps taken and the average number of calories burned per hour throughout the day.


# Load necessary libraries
library(tidyverse)
library(lubridate)

# Load the CSV file
hourly_steps_hourly_calories <- read_csv("hourly_steps_hourly_calories.csv")

# Convert Date to Date type and Hour to numeric type
hourly_steps_hourly_calories <- hourly_steps_hourly_calories %>%
  mutate(Date = as.Date(Date, format="%Y-%m-%d"),
         Hour = as.integer(Hour))

# Plot average hourly steps and calories
ggplot(hourly_steps_hourly_calories, aes(x = Hour)) +
  geom_line(aes(y = AverageHourlySteps, color = "AverageHourlySteps")) +
  geom_line(aes(y = AverageHourlyCalories, color = "AverageHourlyCalories")) +
  labs(title = "Average Hourly Steps and Calories",
       x = "Hour of Day",
       y = "Average Value",
       color = "Legend") +
  theme_minimal()

--

# Load necessary libraries
library(tidyverse)
library(lubridate)

# Load the CSV file
daily_act_hourly_steps <- read_csv("daily_act_hourly_steps.csv")

# Convert ActivityDate to Date type
daily_act_hourly_steps <- daily_act_hourly_steps %>%
  mutate(ActivityDate = as.Date(ActivityDate, format="%m/%d/%Y"))

# Plot average hourly steps per day
ggplot(daily_act_hourly_steps, aes(x = ActivityDate, y = AverageHourlySteps)) +
  geom_line(color = "blue") +
  labs(title = "Average Hourly Steps per Day",
       x = "Date",
       y = "Average Hourly Steps") +
  theme_minimal()


