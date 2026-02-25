# Create the student record list
student_records <- list(
  names = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", 
            "Larson", "Holland", "Paul", "Simu", "Renner"),
  scores = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)

# Calculations
high_score <- max(student_records$scores)
low_score  <- min(student_records$scores)
avg_score  <- mean(student_records$scores)

# Find the names associated with high/low scores
top_students <- student_records$names[which(student_records$scores == high_score)]
bot_students <- student_records$names[which(student_records$scores == low_score)]

# Output formatted exactly like the sample
cat("Highest Score:", high_score, "\n")
cat("Lowest Score:", low_score, "\n")
cat("Average Score:", avg_score, "\n")
cat("Student with highest score:", paste(top_students, collapse = ", "), "\n")
cat("Student with lowest score:", paste(bot_students, collapse = ", "), "\n")