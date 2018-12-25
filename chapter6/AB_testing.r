# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for EP37

# AB testing simulation
set.seed(99)
controls <- sample(c(0,1), 100, replace = TRUE)
set.seed(99)
tests <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

mean(controls)
mean(tests)

# significance testing
var_result <- var.test(controls, tests)
test_result <- t.test(controls, tests, var.equal = TRUE)

# if p-value <= 0.5, then the difference is significant
test_result$p.value
ifelse(test_result$p.value <= 0.5, "Sig", "Not Sig")
