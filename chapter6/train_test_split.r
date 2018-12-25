# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for split data into train / test sets
# assume we have a dataframe called 'df'
# training 80%, testing 20%

df <- mtcars

set.seed(99)
idx <- sample(nrow(df), 0.8*nrow(df))
train_df <- df[idx, ]
test_df <- df[-idx, ]

# build model with train_df
lm_mod <- lm(mpg ~ ., data = train_df)

# predict test_df
p <- predict(lm_mod, newdata = test_df)

# compute rmse
rmse <- sqrt(mean((p - test_df$mpg)**2))

# DONE!
