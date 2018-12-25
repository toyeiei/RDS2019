# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP40

# linear regression
# y = b0 + b1*x1 

data("mtcars")
glimpse(mtcars)

# build simple linear regression model
simple_lm <- lm(mpg ~ wt, data = mtcars)
print(simple_lm)
summary(simple_lm) # get all statistics from the model

# build multiple linear regression model
multi_lm <- lm(mpg ~ wt + hp + am, data = mtcars)
print(multi_lm)
summary(multi_lm)

# build full model using all X's
full_lm <- lm(mpg ~ ., data = mtcars)
print(full_lm)
summary(full_lm)

# make prediction
p <- predict(full_lm, newdata = mtcars)
print(p)

# compute RMSE (error)
# lower RMSE = lower error
rmse <- sqrt(mean((p - mtcars$mpg)**2))

# get the R-squared
# R-squared higher is better, ranging from 0-1
result <- summary(full_lm)
result$r.squared
result$adj.r.squared
