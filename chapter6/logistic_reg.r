# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP41

# logistic regression
# load dataset
install.packages("mlbench")
library(mlbench)
data("PimaIndiansDiabetes")
df <- PimaIndiansDiabetes

# review dataset
library(dplyr)
glimpse(df)

# any missing value
mean(complete.cases(df))

# target variable (that we want to predict)
table(df$diabetes) 

# build logistic regression model
logit_mod <- glm(diabetes ~ ., data = df, family = "binomial")
print(logit_mod)
summary(logit_mod)

# prediction, we use type = "response" to get probability y=1 ("pos")
p <- predict(logit_mod, newdata = df, type = "response")

# if p >= 0.5, then "pos"
predicted_classes <- ifelse(p >= 0.5, "pos", "neg")

# confusion matrix
table(predicted_classes, df$diabetes, dnn = c("Predicted", "Actual"))

# accuracy
mean(predicted_classes == df$diabetes)
