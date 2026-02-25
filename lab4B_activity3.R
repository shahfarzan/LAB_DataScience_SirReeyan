# Array 1: 4 columns, 2 rows, 3 tables
# Data 1 to 24 to fill the 2*4*3 space
Array1 <- array(1:24, dim = c(2, 4, 3))

# Array 2: 2 columns, 3 rows, 5 tables
# Data 25 to 54 to fill the 3*2*5 space
Array2 <- array(25:54, dim = c(3, 2, 5))

# Print full arrays
print("Array1:")
print(Array1)
print("Array2:")
print(Array2)

# Specific Extractions
# 1. Second row of the second matrix of the first array
second_row_ext <- Array1[2, , 2]

# 2. Element in 3rd row, 3rd column of the first matrix of the second array
element_ext <- Array2[3, 2, 1]

# Display Summary
cat("\n'The second row of the second matrix of the array:'\n")
cat(second_row_ext, "\n")

cat("'The element in the 3rd row and 2nd column of the 1st matrix:'\n")
cat(element_ext, "\n")