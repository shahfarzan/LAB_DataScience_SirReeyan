# Task 1: Create the initial data frame
exam_data <- data.frame(
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2)
)

print(exam_data)

# Task 2: Add 'qualify' column
exam_data$qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")

# Task 3: Add new row for 'Emily'
new_row <- data.frame(
  name = "Emily",
  score = 14.5,
  attempts = 1,
  qualify = "yes"
)

exam_data <- rbind(exam_data, new_row)
print(exam_data)

# Task 4: Display structure and summary
str(exam_data)
print(dim(exam_data))

# Insight Improvement: Change 'qualify' to factor to get a better summary
exam_data$qualify <- as.factor(exam_data$qualify)
summary(exam_data)

# Observation/Insight:
# 1. The dataset contains 8 observations and 4 variables.
# 2. By converting 'qualify' to a factor, the summary now shows the frequency 
#    of qualification (e.g., 4 'yes', 4 'no').
# 3. The average (mean) score can now be easily identified from the summary.