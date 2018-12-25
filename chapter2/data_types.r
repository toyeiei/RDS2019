# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP5-EP7
# there are four main data types in R
# numeric, character, logical, factor

# data types - numeric
scores <- c(92, 80, 85)
class(scores)
length(scores)

# data types - character
my_friends <- c("Joe", "Anna", "Mary")
class(my_friends)
length(my_friends)

# data types - logical 
10 == 10 # TRUE
10 != 20 # TRUE
5 > 10 # FALSE
5 < 2 # FALSE
5 >= 2 # TRUE
5 <= 20 # TRUE
"hello" == "Hello" # FALSE

# data types - factor
animals <- c("Dog", "Dog", "Cat", "Cat", "Hippo")
genders <- c("Male", "Female", "Female")
class(animals)
class(genders)

animals <- as.factor(animals) # change class
genders <- as.factor(genders)
class(animals)
class(genders)

table(animals) # count frequency
table(genders)
