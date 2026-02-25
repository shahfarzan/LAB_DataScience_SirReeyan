# Get user input
year <- as.integer(readline("Input year: "))

# Selection logic for leap year
if ((year %% 4 == 0 && year %% 100 != 0) || (year %% 400 == 0)) {
  cat("Output:", year, "is a leap year.\n")
} else {
  cat("Output:", year, "is a not leap year.\n")
}
