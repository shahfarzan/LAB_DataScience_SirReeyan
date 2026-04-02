# Load libraries
library(reshape2)
library(ggplot2)

# Load dataset and check numerical columns
data("ToothGrowth")
numerical_data <- ToothGrowth[, c("len", "dose")]

# 1. Compute correlation matrix
corr_mat <- round(cor(numerical_data), 2)
print(corr_mat)

# 2. Reshape for heatmap (Lab 9a, 2.1)
melted_corr <- melt(corr_mat)

# 3. Plot Heatmap
ggplot(data = melted_corr, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() + 
  geom_text(aes(label = value), color = "white") +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0) +
  main = "Correlation Heatmap: ToothGrowth"

# Insight:
# There is a strong positive correlation (0.8) between 'dose' and 'len'. 
# This suggests that increasing the vitamin C dose directly leads to 
# increased tooth growth in guinea pigs.