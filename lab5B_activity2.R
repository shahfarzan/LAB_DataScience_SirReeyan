# Get user input
n <- as.integer(readline("Input an integer: "))

# Loop to calculate cubes
for (i in 1:n) {
  cube_val <- i^3
  cat("Number is:", i, "and cube of the", i, "is :", cube_val, "\n")
}
