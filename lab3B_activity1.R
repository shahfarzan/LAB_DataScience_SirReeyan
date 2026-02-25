# Input vector of scores
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

# Define grading logic using cut()
grades <- cut(scores, 
              breaks = c(-Inf, 49, 59, 69, 79, 89, 100), 
              labels = c("F", "E", "D", "C", "B", "A"),
              right = TRUE)

# Count number of students per grade
grade_counts <- table(grades)

# Check pass/fail (>49 is a pass)
pass_status <- scores > 49

# Display Results
print("Number of students per grade:")
print(grade_counts)

print("Pass status for each student (TRUE = Pass):")
print(pass_status)