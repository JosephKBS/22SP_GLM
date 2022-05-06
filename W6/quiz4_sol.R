# title: "Pop-Quiz 4 Solution"
# subtitle: "Generalized Linear Models and Extensions (2022 Spring / APSTA-GE 2044)"
# author: "Kwan Bo Shim"
# date: "4/26/2022"

# Q1. In order to run the Poisson regression using 'glm' function in R, what 'LINK' function should you use?

**link = 'log'**


# Q2. Using the table result, what is the effect associated with marriage status (marSingle==1)?


round( exp(-0.155243), 2 )


# Q3. Calculate the expected number of papers published during the last three years of PhD for a married female student with 1 children under 6, whose mentor has 20 publications and the phd program prestige score being 2.

```{r}
intercept <- 0.459860
fem <- -0.224594
Single <- -0.155243 
kid5 <- -0.184883
phd <- 0.012823
ment <- 0.025543

pred <- exp( intercept + fem*1 + Single*0 + kid5*1 + phd*2 + ment*20 )
round(pred, 2)
```



# Q4. [Please select the right value for the blank] For every additional paper written by the mentor in the three year period, we expect _____ times the odds of being in the non-production group. 

```{r}
inv_to_prob <- function(x ){
  return( 1/ (1 + exp( -x) ) )
}
prob_to_odd <- function(x){
  return( x / (1-x) )
}

kid <- 0.217100

# 1.
round( prob_to_odd( inv_to_prob( kid )),2)

# 2. simple
round(exp(kid),2)
```


# Q5. ZIP Poisson model has developed to deal with "excess zeros" issue, a form of over-dispersion. Compute the probability of "zero" in the model. You should use R (predict command) or Lab 3

```{r message=FALSE, warning=FALSE}
# load data -> make sure you have them
articles <- read.csv("art.csv")

# ZIP model
library(pscl)
zip_covariates <- zeroinfl(art~fem+mar+kid5+phd+ment|fem+mar+kid5+phd+ment,
                           data = articles)
# prediction
predicted_counts <- predict(zip_covariates, type = "prob")
round( mean( predicted_counts[,1] ),2)

```





Q6.[BONUS] What is the way in which the ZIP Poisson model computes the probability of "zero" in the model?

** **
