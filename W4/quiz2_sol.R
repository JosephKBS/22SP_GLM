# title: "Quiz 2 Solution"
# subtitle: "Generalized Linear Models and Extensions (2022 Spring / APSTA-GE 2044)"
# author: "Kwan Bo Shim"
# date: "4/15/2022"


# Use the following outcome table to solve the problem (Q1-Q2)

data.frame( Grading = c("Neither","A on HW", "A on exam", "Both"),
            freq = c(28,18,13,11),
            percent = c(40.00, 25.71, 18.57, 15.71)
)

# --------------------------------------------------------------------------
# Q1. Compute odds for each outcomes. Select ALL correct options. 







# --------------------------------------------------------------------------
# Q2. Compute probabilities from odds. Select ALL correct options. 




# --------------------------------------------------------------------------
# Use the results to solve the problem (Q3)

We run a multinomial logit model in R without covariates and coefficients are as follows:

Call:
nnet::multinom(formula = LBW ~ 1, data = birthweight)

Coefficients:
              (intercept)
              
BMI           -1.6    

Age           -3.1

SMOKE         -1.72  

DRUG          -0.93
       
We assume that reference variable as "None", and P("None") is 0.2


# --------------------------------------------------------------------------
# Q3. Compute the odds ratio for each variable. Please select ALL correct options. (You can either use calculator or R)




# --------------------------------------------------------------------------
# Q4. Select FALSE description about Information Criteria (IC)



