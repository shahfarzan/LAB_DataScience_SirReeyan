# Load libraries
library(caret)
data("mtcars")

# Normalize the 'mpg' column
raw_mpg <- mtcars$mpg

# 1. Log Transformation
log_scaled <- log(raw_mpg)

# 2. Standard Scaling (Z-score)
z_scaled <- scale(raw_mpg)

# 3. Min-Max Scaling (Range 0-1)
process_minmax <- preProcess(as.data.frame(raw_mpg), method=c("range"))
minmax_scaled <- predict(process_minmax, as.data.frame(raw_mpg))

# 4. Compare results
summary(raw_mpg)        # Original range: 10.40 to 33.90
summary(log_scaled)     # Compressed range: 2.34 to 3.52
summary(z_scaled)       # Mean is 0, range centered around 0
summary(minmax_scaled)  # Strict range: 0.00 to 1.00

# Discussion:
# - Log transformation is best for reducing the impact of high outliers.
# - Standard scaling is useful when we need the mean to be 0 (Bell curve).
# - Min-Max scaling is the most readable as it squashes all values 
#   between 0 and 1, making it easy to compare different units.