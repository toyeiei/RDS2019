# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP27

# skimr package
install.packages("skimr")
library(skimr)

# skim function computes useful statistics
skim(mtcars)
skim(mtcars, mpg, hp, wt)

# skim can be used with pipe operator
mtcars %>% skim()
mtcars %>% skim(mpg, hp, wt)

# skim grouped dataframe
mtcars %>%
  group_by(am) %>%
  skim(mpg, hp, wt)
