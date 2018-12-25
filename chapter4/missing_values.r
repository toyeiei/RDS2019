# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP28-EP30

# missing value in R shown as NA
x <- c(100, 200, 300, 400, 500, NA)
is.na(x) # FALSE FALSE FALSE FALSE FALSE TRUE
mean(x) # this will not work because there is NA (unknown value)
mean(x, na.rm = TRUE)

# remove NA from vector x
x[!is.na(x)]

# check if any missing value in our dataframe
complete.cases(mtcars)
mean(complete.cases(mtcars)) # 1 = complete dataframe i.e. no NA

# if there is NA in our dataframe
# we can choose to remove or replace NA
# create a test dataframe
test_df <- data.frame(names = c("Joe", "Anna", "Mary"),
                      scores = c(85, NA, 90))

# 1. remove rows with missing values
clean_df <- test_df[complete.cases(test_df), ]

# 2. replace NA - statistician calls this technique "imputation"
# replace NA with 100
test_df$scores[is.na(test_df$scores)] <- 100

# replace NA with mean 
test_df$scores[is.na(test_df$scores)] <- mean(test_df$scores, na.rm = TRUE)

# replace NA with median
test_df$scores[is.na(test_df$scores)] <- median(test_df$scores, na.rm = TRUE)

# export dataframe as csv file
# use write.csv() function to export df
write.csv(df, "df.csv") 
getwd()
dir() # df.csv will be in our working directory
