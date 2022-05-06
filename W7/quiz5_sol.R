---
title: "Pop-quiz 5 Solution"
author: "Kwan Bo Shim"
date: "5/5/2022"
output:
  pdf_document: default
  html_document: default
subtitle: Generalized Linear Models and Extensions (2022 Spring/APSTA-GE 2044)
---




# loading data
```{r}
# penguins is loaded in palmerpenguins
#install.packages("palmerpenguins")
library(palmerpenguins)
library(nnet)
library(MASS) 
# function
displayMN <- function(x,rrr=F,level=0.05) {
  coefs <- coef(x)
  se <- summary(x)$standard.errors
  z <- coefs/se
  p <- (1 - pnorm(abs(z), 0, 1)) * 2
  ci.lb <- qnorm(level/2)*se+coefs
  ci.ub <- qnorm(1-level/2)*se+coefs
  nlvls <- nrow(coefs)
  nvars <- ncol(coefs)
  rslt <- vector("list",length=nlvls)
  names(rslt) <- rownames(coefs)
  if (rrr) {
    coefs <- exp(coefs)
    ci.lb <- exp(ci.lb)
    ci.ub <- exp(ci.ub)
  }
  for (i in 1:nlvls) {
    rslt[[i]] <- cbind(t(coefs[i,,drop=F]),t(se[i,,drop=F]),t(z[i,,drop=F]),t(p[i,,drop=F]),t(ci.lb[i,,drop=F]),t(ci.ub[i,,drop=F]))
    colnames(rslt[[i]]) <- c("Estimate","Std. Error","z-value","Pr(>|z|)",paste0("lower",100-100*level),paste0("upper",100-100*level))
  }
  rslt
}
# penguin data 
msg <- apply(is.na(penguins[, c("species", "bill_length_mm", "bill_depth_mm")]),
    1, any)
penguins <- penguins[!msg, ]
```


# Part A - Multinomial logit model (Q1-Q2)

# Q1. Choose a right sentence that describes the effect for the predictors (bill_length_mm)




# Q2. Compute the confusion matrix for the model and report how many species do the models correctly predict overall (Please sum of all correct cases).




# Part B- Ordinal logit model

[Use following report]

 Call:
 polr(formula = Sat ~ Infl + Type, data = housing, weights = Freq)

 Coefficients:
                 Value Std. Error t value
                 
 ofit <- polr(Sat ~ Infl + Type, data = housing, weights = Freq)

 InflMedium     0.5484
 
 InflHigh       1.2373
 
 TypeApartment -0.5215
 
 TypeAtrium    -0.2894
 
 TypeTerrace   -1.0141


# Q3. Find a CORRECT Interpretation on the Infl coefficient as an odds ratio, being explicit about what is in the numerator and denominator of those odds.





# Part C - Models for count data

We will examine a German study in which the number of visits to the doctor is the outcome. The exposure (time) for each subject was the same, so it was number of visits in the last year (or similar). Several other
predictors were collected, including:

• age: age of subject

• educ: edcuation in years 

• married: 0/1

• badh: self-reported patient in bad health

• loginc: log annual income

• reform: whether the measure was made before or after a major reform.

• summer





 Call:
 pscl::zeroinfl(formula = numvisit ~ age + educ + married + badh + loginc +
     reform + summer | 1, data = drvisits, family = poisson())

 Pearson residuals:
 
     Min      1Q  Median      3Q     Max
     
 -1.4267 -1.0742 -0.4773  0.4220 14.0370

 Count model coefficients (poisson with log link):
 
              Estimate Std. Error z value Pr(>|z|)
              
 (Intercept)  0.249910   0.286474   0.872 0.383009
 
 age          0.004404
 
 educ        -0.024105
 
 married      0.059160
 
 badh         0.942177   0.031569  29.845  < 2e-16 ***
 
 loginc       0.121155   0.038028   3.186 0.001443 **
 
 reform      -0.110417   0.028124  -3.926 8.64e-05 ***
 
 summer       0.024333   0.042830   0.568 0.569954




# Q4.  Is there evidence of overdispersion (use deviance residuals and a chi-square test)

  
  
  
  
  
# Q5. Interpret the bad health coefficient along with the proportion of non-user predicted by the model.


  
  
  
