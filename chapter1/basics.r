# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP3-EP4 

# get working directory
getwd()
setwd("C:/Users/Desktop") # can change path to your working folder
dir() # list all files in working directory

# R as a calculator
1 + 1
4 - 2
2 * 2
4 / 2
2 ** 3 
5 %% 2 # modulo will return 1 for odd numbers
log(100)
exp(2)
sqrt(9) 

# create variables
x <- 200
y <- 300
print(x + y)

# another example of variable names
income_2018 <- 50000
pct_increase <- 0.20
income_2019 <- income_2018 * (1+pct_increase)

# vector
x <- c(100, 200, 300, 400, 500)
y <- c(5, 10, 15, 20, 25)
x * 3
x + x
x + y
