# Get user input
weight <- as.numeric(readline("Enter weight (kg): "))
height <- as.numeric(readline("Enter height (m): "))

# Calculate BMI
bmi <- weight / (height^2)

# Logical checks for status
is_underweight <- bmi <= 18.4
is_normal      <- bmi >= 18.5 & bmi <= 24.9
is_overweight  <- bmi >= 25.0 & bmi <= 39.9
is_obese       <- bmi >= 40.0

# Display output
cat("Underweight:", is_underweight, "\n")
cat("Normal:", is_normal, "\n")
cat("Overweight:", is_overweight, "\n")
cat("Obese:", is_obese, "\n")