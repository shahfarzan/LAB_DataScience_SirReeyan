# Input Vector
age = c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
        52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

# Find levels of factor (unique ages)
age_factor <- factor(age)
print("Total number of staff per age:")
print(table(age_factor))

# Divide into 5 ranges using cut()
age_ranges <- cut(age, 
                  breaks = c(49, 52, 54, 56, 58, 60), 
                  labels = c("50-52", "52-54", "54-56", "56-58", "58-60"))

print("Total number of staff per age range:")
print(table(age_ranges))
