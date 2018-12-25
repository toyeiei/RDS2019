# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP39

# load data
library(dplyr)
data("mtcars")
glimpse(mtcars)

# create correlation matrix
cor_mat <- cor(mtcars)
print(cor_mat)

# install corrplot package
install.packages("corrplot")
library(corrplot)

# plot correlation matrix
corrplot(cor_mat)
corrplot(res, type = "upper")
corrplot(res, type = "upper", method = "color")

# add correlation coefficients
corrplot(res, type = "upper", method = "color", addCoef.col = "white")

# change font size using number.cex argument
corrplot(res, type = "upper", method = "color", addCoef.col = "white", number.cex = 0.8)
