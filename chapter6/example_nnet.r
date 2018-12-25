# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP42

# install packages
install.packages(c("nnet", "NeuralNetTools"))
library(nnet)
library(NeuralNetTools)

# dataset
library(dplyr)
data("iris")
glimpse(iris)

# target variable we want to predict
table(iris$Species)

# build one hidden layer neural net model
# size argument is the number of neuron in hidden layer
set.seed(99)
nn_mod <- nnet(Species ~ ., data = iris, size = 4)

# plot neural net
plotnet(nn_mod)

# prediction
p <- predict(nn_mod, newdata = iris, type = "class")

# confusion matrix
table(p, iris$Species, dnn = c("predicted", "actual"))

# accuracy
mean(p == iris$Species)
