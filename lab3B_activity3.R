# Append Physics scores to the previous record
student_records$chemistry <- student_records$scores # From Activity 2
student_records$physics   <- c(89, 86, 65, 52, 60, 67, 40, 77, 90, 61)

# Count failures (<= 49)
fail_chem    <- sum(student_records$chemistry <= 49)
fail_physics <- sum(student_records$physics <= 49)

# Find highest score for both
best_chem_score <- max(student_records$chemistry)
best_phys_score <- max(student_records$physics)

# Find names of top performers
top_chem_student <- student_records$names[which(student_records$chemistry == best_chem_score)]
top_phys_student <- student_records$names[which(student_records$physics == best_phys_score)]

# Display Summary
cat("Students failing Chemistry:", fail_chem, "\n")
cat("Students failing Physics:", fail_physics, "\n")
cat("Highest Chemistry Score:", best_chem_score, "(By:", paste(top_chem_student, collapse = ", "), ")\n")
cat("Highest Physics Score:", best_phys_score, "(By:", paste(top_phys_student, collapse = ", "), ")\n")