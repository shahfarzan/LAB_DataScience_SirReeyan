# SETUP & IMPORT
library(dplyr)
library(xlsx)

# Set working directory and import
setwd('/Users/aishah/Desktop/JAN26/Data Science/')
titanic <- read.csv('titanic.csv')

# CLEANING
sum(is.na(titanic))

# Remove all rows with empty/NA cells
titanic_clean <- na.omit(titanic)

# 3. INSIGHTS & FILTERING
# Insight 1: Filtering by multiple conditions (Cherbourg + Survived)
cherbourg_survivors <- filter(titanic_clean, embark_town == 'Cherbourg' & survived == 1)
cherbourg_rate <- (nrow(cherbourg_survivors) / nrow(filter(titanic_clean, embark_town == 'Cherbourg'))) * 100

# Insight 2: Percentage of Third Class
third_class_count <- nrow(filter(titanic_clean, class == 'Third'))
third_class_pct <- (third_class_count / nrow(titanic_clean)) * 100

# Insight 3: Sorting by Fare (Descending)
titanic_sorted <- arrange(titanic_clean, desc(fare))

# 4. DISPLAY & EXPORT
str(titanic_clean)
dim(titanic_clean)

# Print results to console
cat("Observation 1:", round(cherbourg_rate, 2), "% from Cherbourg survived.\n")
cat("Observation 2:", round(third_class_pct, 2), "% are from Third Class.\n")

# Save cleaned data to CSV
write.csv(titanic_sorted, "titanic_report.csv")