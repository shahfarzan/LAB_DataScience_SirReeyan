# Input vector
V1 = c(2,3,1,5,4,6,8,7,9)

# Create 3x3 Matrix-1 (Filling by row to keep it simple)
Matrix1 <- matrix(V1, nrow = 3, ncol = 3, byrow = TRUE)
colnames(Matrix1) <- c("C1", "C2", "C3")
rownames(Matrix1) <- c("R1", "R2", "R3")

# Transpose to create Matrix-2
Matrix2 <- t(Matrix1)

# Arithmetic Operations
add_m      <- Matrix1 + Matrix2
subtract_m <- Matrix1 - Matrix2
multiply_m <- Matrix1 * Matrix2  # Element-wise multiplication
divide_m   <- Matrix1 / Matrix2

# Display results
print("Matrix 1:")
print(Matrix1)
print("Matrix 2 (Transpose):")
print(Matrix2)
print("Addition Result:")
print(add_m)