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

neither <- 28/70
hw <- 18/70
exam <- 13 / 70
both <- 11/70
odd.nei <- neither / neither
odd.hw <- hw / neither
odd.exam <- exam / neither
odd.both <- both/neither
cat("Odds for A on Neither :", round( odd.nei, 2) , 
      "Odds for A on HW :", round( odd.hw, 2) , 
      "Odds for A on exam :", round( odd.exam, 2) , 
      "Odds for A on Both :", round( odd.both, 2) , sep="\n")





# --------------------------------------------------------------------------
# Q2. Compute probabilities from odds. Select ALL correct options. 

ph <- odd.hw / (1 + odd.hw + odd.exam + odd.both)
pe <- odd.exam / (1 + odd.hw + odd.exam + odd.both)
pb <- odd.both / (1 + odd.hw + odd.exam + odd.both)
cat("Prob of odds for HW :", round( ph, 2) , 
    "Prob of odds for exam :", round( pe, 2) , 
    "Prob of odds for Both :", round( pb, 2) , sep="\n")


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

bmi <- -1.6
age <- -3.1
smoke <- -1.72
drug <- -0.93
cat( "Odds ratio for BMI :",  round( exp(bmi), 2), 
     "Odds ratio for AGE :",   round( exp(age), 2), 
     "Odds ratio for SMOKE :",   round( exp(smoke), 2), 
     "Odds ratio for DRUG :",  round( exp(drug), 2) , 
     sep="\n")


# --------------------------------------------------------------------------
# Q4. Select FALSE description about Information Criteria (IC)

* We can make comparison for nested-models using the Information Criteria.
* BIC gives parsimonious models
* AIC prefers the more complex model and seeks to improve predictive performance
* BIC prefers more simpler model and penalizes the additional terms.
* **When models are not nested, we can use likelihood based model selection criterion.**
* p is the number of predictors in the model (in the equation for AIC or BIC)



