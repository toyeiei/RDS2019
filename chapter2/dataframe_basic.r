# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP8

# create a dataframe
students <- c("Joe", "Anna", "Mary", "David", "Hannah")
scores <- c(99, 78, 90, 85, 79)
grades <- c("A", "C", "A", "B", "C")

df <- data.frame(students, scores, grades)
print(df)

# review structure of dataframe
str(df)
summary(df)
