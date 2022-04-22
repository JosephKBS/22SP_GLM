# Quiz 1 Solution
# Author: Kwan Bo Shim


# table for Q1-Q2
# We use "birthwt.dta", the birth weight dataset from handouts 1 & 2. (LBW is coded to indicate lower birth weight, defined to be TRUE (or 1) if birth weight is less than 2500, FALSE (or 0) if Not. The variable PREM means History of premature labor.)



# Q1. Compute the odds conditional on a subject with PREM>0

# 41/118=0.35
# 118/41=2.87
# 18/12=1.5
# 12/18=0.67

# Q2. Compute the odds ratio comparing the odds of the event (LBW) for subjects with the PREM risk factor versus subjects without that risk factor.

# 2.87/1.5 = 1.91
# 2.87/0.35 = 8.2
# 1.5/0.67 = 2.23
# 1.5/0.35 = 4.32

# Q3. The ROC curve is constructed from a dataset with three columns. What are those columns:

# Sample size, effect size and p-value
# Goodness of Fit, log likelihood and likelihood ratio.
# Threshold for prediction, sensitivity, and specificity
# Accuracy, sensitivity, and specificity
# Accuracy, loss and f1 score

