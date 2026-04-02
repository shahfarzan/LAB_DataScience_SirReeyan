# Load libraries and data
library(e1071)
library(forcats)
library(class)
library(caTools)
data("ChickWeight")

# Split data to Train and Test Data
split <- sample.split(ChickWeight, SplitRatio = 0.7)
train_cl <- subset(iris, split == "TRUE")
test_cl <- subset(iris, split == "FALSE")

# Feature Scaling
train_scale <- scale(train_cl[, 1:4])
test_scale <- scale(test_cl[, 1:4])

# KNN
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$Species,
                      k = 1)
print(classifier_knn)

#Confusion Matrix
cm <- table(test_cl$Species, classifier_knn)
print(cm)

#Accuracy
misClassError <- mean(classifier_knn != test_cl$Species)
print(paste('Accuracy =', 1-misClassError))