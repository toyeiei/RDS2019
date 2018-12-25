# Useful functions
# ifelse()

scores <- c(90, 55, 80, 85, 92)

# if scores >= 85, then 'passed' else 'failed'
ifelse(scores >= 85, 'passed', 'failed')

# assign result in a new vector
grades <- ifelse(scores >= 85, 'passed', 'failed')
grades <- as.factor(grades)
table(grades)

# use ifelse() to clean NA in a vector
scores <- c(90, 55, 80, 85, 92, NA, 100)

# replace NA with mean
clean_scores <- ifelse(is.na(scores), mean(scores, na.rm=TRUE), scores)

# replace NA with median
clean_scores <- ifelse(is.na(scores), median(scores, na.rm=TRUE), scores)
