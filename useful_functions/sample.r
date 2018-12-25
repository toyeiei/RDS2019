# Useful functions
# sample()

# randomly select a number from vector 1:100
sample(1:100, size = 1)

# randomly select 5 numbers from vector 1:100
sample(1:100, size = 5)

# select 20 numbers from vector 1:100 with replacement
sample(1:100, size = 20, replace = TRUE)

# bootstrap sampling
sample(1:100, size = 100, replace = TRUE)

# roll a die
sample(1:6, 1)

# roll two dices independently
sample(1:6, 2, replace = TRUE)

# we can set probability for the outcome with prob argument
sample(c(0,1), 100, replace = TRUE, prob = c(0.5, 0.5))

# 0 will have 30% chance and 1 will habe 70% chance
sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

# use sample() to randomly select rows from a dataframe
data("mtcars")
df <- mtcars
idx <- sample(nrow(df), round(0.5*nrow(df)))
small_df <- df[idx, ]
print(small_df)
nrow(small_df) # 16
