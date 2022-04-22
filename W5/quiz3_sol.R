---
title: "Pop-quiz 3 Solution"
author: "Kwan Bo Shim"
date: "4/21/2022"
subtitle: Generalized Linear Models and Extensions (2022 Spring/APSTA-GE 2044)
---


# Q1-Q2

MASS::polr(formula = health ~ I(sex == "Female") + inc, data = gss)

Coefficients:

                    	Value Std. Error t value
                    	
I(sex == "Female")TRUE 0.1125	0.09284   1.212

inc25-50K          	0.6840	0.12013   5.694

inc>50K            	1.2847	0.11503  11.168

Intercepts:

                	Value	Std. Error t value
                	
Poor|Fair        	-2.1767   0.1318    -16.5189

Fair|Very good   	-0.5097   0.1015	    -5.0200

Very good|Excellent   1.6075    0.1095	    14.6741


## Q1. Using the table result, what is the odds for "Excellent" health outcome for males (sex=="Male") with lowest income level (<25K)?




## Q2. Using the table result, what is P(excellent) for males (sex=="Male") with lowest income level (<25K)?





## Q3. Compute the probability of observing 5 counts assuming Y follows a Poisson distribution with parameter lambda equals 3.5.  



## Q4. Compute the variance of the Poisson distribution from Q4



## Q5. Select a FALSE statement

  - Over dispersion issue refers a situation when the median of the distribution failed to satisfy the model assumptions

  - In Poisson regression we assume that the mean equals the variance of the outcome, conditional on covariates

  - When value of scale parameter (V(Y)/E(Y)) is greater than 1, it is likely to have the over-dispersion issue.

  - Significance of model's effect can be changed due to the over-dispersion (or under-dispersion) issue


## Q6. What is a benefit of using Quasi-Poission model?

  - Quasi-Poission model has fewer parameters than regular Poisson regression model.
  
  - Quasi-Poission model allows more flexibility of choosing parameters with binomial distribution.
  
  - Quasi-likelihood allows us to include overdispersion in model.
  
  - Quasi-Poission model has a benefit of minimizing estimation errors.
  

