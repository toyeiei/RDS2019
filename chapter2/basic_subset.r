# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP9

# basic subset in R using [ ] 
# subset vector
numbers <- c(100, 200, 20, 55, 98, 1000)

# subset by position (index)
numbers[1] # 100
numbers[2] # 200
numbers[5] # 98
numbers[1:3] # 100, 200, 20
numbers[3:6] # 20, 55, 98, 1000

# subset by logics (TRUE, FALSE)
numbers >= 100 # TRUE, TRUE, FALSE, FALSE, FALSE, TRUE
numbers[numbers >= 100]
numbers[numbers == 20]

# subset by names
# create a vector with names
scores <- c(100, 88, 95)
names(scores) <- c("Joe", "Anna", "Mary")
print(scores)
scores["Joe"] # 100
scores["Anna"] # 88
scores["Mary"] # 95

# subset dataframe
# dataframe is a two-dimensions data structure
str(mtcars)
head(mtcars)
mtcars[1:10, 1:5] # return row 1-10, column 1-5
mtcars[1:10, ] # return row 1-10, all columns
mtcars[, 1:5] # return all rows, column 1-5
mtcars[1:10, "mpg"] # return row 1-10, column mpg
mtcars[1:10, c("mpg", "wt", "hp")] # return row 1-10, column mpg wt hp
