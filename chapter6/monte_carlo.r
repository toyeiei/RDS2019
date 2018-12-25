# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP38

# monte carlo simulation
# roll a die
sample(1:6, 1)

# there are two methods to do simulation
# 1. using for loop
# 2. using replicate() function

# roll a die 100 times by writing for-loop
result = vector("numeric")

set.seed(99)
for (i in 1:100) {
  result[i] <- sample(1:6, 1)
}

print(result)

# roll a die 100 times using replicate()
set.seed(99)
result <- replicate(100, {
  sample(1:6, 1)
})

print(result)

# roll a die one million times using replicate()
set.seed(99)
result <- replicate(1000000, {
  sample(1:6, 1)
})

print(result)

# plot bar chart
t1 <- table(result)
barplot(t1)
