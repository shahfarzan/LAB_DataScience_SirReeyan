# Load the dataset
data("Theoph")

# 1. Create the Linear Model (Dose predicted by Weight)
model <- lm(Dose ~ Wt, data = Theoph)

# 2. Visualize the Regression
plot(Theoph$Wt, Theoph$Dose, 
     main = "Linear Regression: Weight vs Dose",
     xlab = "Weight (kg)", ylab = "Dose (mg/kg)", 
     pch = 19, col = "blue")

# Add the regression line
abline(model, col = "red", lwd = 2)