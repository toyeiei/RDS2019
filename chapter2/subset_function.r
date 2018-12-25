# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP10

# how to use subset() function in R
# subset has 3 main arguments - dataframe, rows, columns

# filter only rows with hp <= 100
subset(mtcars, hp <= 100)

# filter more than one condition using AND (&)
subset(mtcars, hp <= 100 & am == 0)

# we can use OR operator |
subset(mtcars, carb == 2 | cyl == 4)

# select single column mpg 
subset(mtcars, hp <= 100 & am == 0, mpg)

# select more than one columns using c()
subset(mtcars, hp <= 100 & am == 0, c("mpg", "wt", "hp"))

# create a new dataframe from that subset
new_df <- subset(mtcars, hp <= 100 & am == 0, c("mpg", "wt", "hp"))
str(new_df)
head(new_df)
