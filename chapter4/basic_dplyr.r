# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP21-EP26

# attach package dplyr in RStudio environment
library(dplyr)

# there are 5 main verbs in dplyr
# this is how we do data wrangling in R :)
# select, filter, arrange, mutate, summarise

# select columns
select(mtcars, 1:5) # select column 1 to 5
select(mtcars, mpg, wt, hp) # select columns mpg wt hp
select(mtcars, -mpg, -wt, -hp) # select all columns, except mpg wt hp

# filter rows
filter(mtcars, hp <= 200)
filter(mtcars, hp <= 200 & am == 0) # AND
filter(mtcars, gear == 3 | am == 0) # OR

# pipe operator
# we use %>% to chain code in R
mtcars %>%
  select(mpg, wt, hp) %>%
  filter(hp <= 100)

# arrange, sort rows
arrange(mtcars, hp) # ascending order
arrange(mtcars, desc(hp)) # descending order

# mutate to create new variables
mutate(mtcars, hp_double = hp * 2, 
               hp_square = hp ** 2)

# summarise statistics
summarise(mtcars, avg_hp = mean(hp),
                  sd_hp = sd(hp),
                  n = n())
                  
# group_by() used with summarise()
# grouped dataframe by a factor variable
mtcars %>%
  group_by(factor(am)) %>%
  summarise(avg_mpg = mean(mpg),
            sd_mpg = sd(mpg),
            n = n())
