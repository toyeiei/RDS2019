# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP17-EP20

# install new packages (need internet Wifi)
install.packages("dplyr")
library(dplyr)

# import csv file into RStudio
# file_name.csv must be in your working directory
df <- read.csv("file_name.csv") 

# review structure of dataframe
glimpse(df)
head(df)
tail(df)
summary(df)

# simple statistics with dataframe
glimpse(mtcars)
mean(mtcars$mpg)
median(mtcars$mpg)
sd(mtcars$mpg)
var(mtcars$mpg)
min(mtcars$mpg)
max(mtcars$mpg)
summary(mtcars$mpg)

# get standard .25 .50 .75 percentile for this variable
quantile(mtcars$mpg) 

# pearson correlation
cor(mtcars$hp, mtcars$mpg)

# correlation matrix (only works for numeric columns)
cor(mtcars)
