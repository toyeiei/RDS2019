# Getting Started with R
# https://datarockie.com

# our facebook page
# https://www.facebook.com/datarockie

# example code for split data into train / test sets
# assume we have a dataframe called 'df'

set.seed(99)
idx <- sample(nrow(df), 0.8*nrow(df))
train_df <- df[idx, ]
test_df <- df[-idx, ]

nrow(train_df)
nrow(test_df)
