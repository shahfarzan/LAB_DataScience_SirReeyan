# Get user input
cat("Check whether an n digits number is Armstrong or not:\n")
cat("-------------------------------------------------------\n")
num <- as.integer(readline("Input an integer: "))

# Convert number to individual digits
digits <- as.numeric(unlist(strsplit(as.character(num), "")))

# Calculate sum of digits raised to power of 3 (as per lab example)
armstrong_sum <- sum(digits^3)

# Check if sum equals original number
if (armstrong_sum == num) {
  cat(num, "is an Armstrong number.\n")
} else {
  cat(num, "is not an Armstrong number.\n")
}
