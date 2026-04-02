# Load libraries
library(dplyr)
setwd('/Users/aishah/Desktop/JAN26/Data Science/')

# Import and clean
titanic <- read.csv('titanic.csv')
titanic_clean <- na.omit(titanic)

# 1. Bar Chart: Count of survivors vs non-survivors
survival_counts <- table(titanic_clean$alive)
barplot(survival_counts, 
        main = "Passenger Survival Count", 
        col = c("red", "green"), 
        xlab = "Survived", 
        ylab = "Number of Passengers")

# 2. Box Plot: Fare distribution by Class
boxplot(fare ~ class, data = titanic_clean, 
        main = "Fare Distribution by Class", 
        xlab = "Ticket Class", 
        ylab = "Fare ($)", 
        col = "orange")

