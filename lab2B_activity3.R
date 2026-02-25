# Get user inputs
name <- readline("Enter name: ")
phone <- readline("Enter phone number: ")

# Format Name to Uppercase
name_up <- toupper(name)

# Mask Phone Number (Keep first 3, middle x, last 4)
first_3 <- substr(phone, 1, 3)
last_4  <- substr(phone, nchar(phone) - 3, nchar(phone))

# Display Output
cat("Hi,", name_up, ". A verification code has been sent to ", first_3, "-xxxxx", last_4, "\n")