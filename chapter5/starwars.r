# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP31-EP35

# load dataset
library(dplyr)
data("starwars")

# review dataframe
glimpse(starwars)
head(starwars)
tail(starwars)

# EP31 any missing value?
mean(complete.cases(starwars))

# EP32 compute BMI
# BMI = weight / height ** 2
starwars %>%
  select(name, height, mass) %>%
  mutate(BMI = mass / (height/100)**2)
  
# EP33 filter only records with NA
starwars %>%
   select(-films, -vehicles, -starships) %>%
   filter(complete.cases(.))

# EP34 top 5 species in starwars
starwars %>%
   filter(!is.na(species)) %>%
   count(species, sort = T) %>%
   head(5)

sort(table(starwars$species), decreasing = T)[1:5] 

# EP35 count number of black hair color characters
starwars %>%
   count(hair_color, sort = T) %>%
   filter(hair_color == "black")

sum(starwars$hair_color == "black", na.rm = TRUE)
