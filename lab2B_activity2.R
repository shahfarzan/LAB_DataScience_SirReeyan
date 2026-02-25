# Get user inputs
str1 <- readline("Enter string 1: ")
str2 <- readline("Enter string 2: ")

# Compare after converting both to lowercase
is_similar <- toupper(str1) == toupper(str2)

# Display result
cat("This program compare 2 strings. Both inputs are similar:", is_similar, "\n")