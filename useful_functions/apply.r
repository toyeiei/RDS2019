# Useful Functions
# apply()

# load dataset
data("mtcars")
str(mtcars)

# use apply to compute statistics for all columns
# 2 mean column-wise
apply(mtcars, 2, mean)
apply(mtcars, 2, sd)
apply(mtcars, 2, median)

# 1 mean row-wise
# row-wise is not very common, but good to know :)
apply(mtcars, 1, mean)
apply(mtcars, 1, sd)
apply(mtcars, 1, median)

# change column am to factor with labels
# 0 = Auto, 1 = Manual
mtcars$am <- factor(mtcars$am, labels = c("Auto", "Manual"))
table(mtcars$am)

# compute statistics by groups (Auto vs. Manual)
# using tapply()
tapply(mtcars$mpg, mtcars$am, mean)
tapply(mtcars$mpg, mtcars$am, median)
