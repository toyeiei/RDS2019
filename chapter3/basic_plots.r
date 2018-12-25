# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP11-EP16

# basic plots in R
# one variable - numeric
hist(mtcars$mpg)
boxplot(mtcars$hp)

# one variable - factor
t1 <- table(mtcars$am)
barplot(t1)

# two variables - numeric x numeric
plot(mtcars$hp, mtcars$mpg)
plot(mtcars$hp, mtcars$mpg, pch = 16) # change marker plot

# two variables - numeric x factor
boxplot(mtcars$mpg ~ mtcars$am)
boxplot(mtcars$mpg ~ mtcars$am, col = c("salmon","gold")) # add color to plot

# two variables - factor x factor
t2 <- table(mtcars$am, mtcars$gear)
barplot(t2)
barplot(t2, col = c("salmon", "gold")) # change colors
barplot(t2, col = c("salmon", "gold"), legend.text = T) # add legend
barplot(t2, col = c("salmon", "gold"), legend.text = T, horiz = T) # flip chart

# glimpse of ggplot2
install.packages("ggplot2") # install only once
library(ggplot2)
ggplot(mtcars, aes(hp, mpg)) +
  geom_point() +
  geom_smooth(method = "lm")
