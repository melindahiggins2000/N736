# ==================================
# Homework 06 - logistic regression
# 
# Melinda Higgins, PhD
# dated 11/25/2018
# ==================================

# ==================================
# we're be working with the 
# helpmkh dataset
# ==================================

library(tidyverse)
library(haven)

helpdat <- haven::read_spss("helpmkh.sav")

# ============================================
# For this homework we'll use the helpmkh dataset
#
# You will be working with the e2b variable
# Number of times in past 6 months entered a 
# detox program (collected at Baseline)
#
# For this logistic regression homework 6,
# I've provided the code below to capture the
# individuals who did NOT say they had entered a detox
# program in the 6 months preceeding baseline
# ============================================

helpdat$nodetox <- is.na(helpdat$e2b)

# check results - there are 239 NA's or missing values
# for e2b - these should now be 0's for nodetox
summary(helpdat$e2b)
summary(helpdat$nodetox)

# another way to check using table
# to get a 2-way table
# and include NA's in output
# check that the NA's for e2b are TRUE's for nodetox
table(helpdat$e2b, helpdat$nodetox, useNA = "ifany")

# For this logistic regression homework, you will
# use nodetox as your main outcome variable
# which is a logic variables coded FALSE and TRUE. 
# R interprets FALSE as 0 and TRUE as 1. A
# logic class type variable works fine 
# as an outcome in logistic regression.

# We'll use logistic regression to predict
# whether someone in a detox program or not (nodetox)
# prior to baseline using these variables
# age, female, pss_fr, pcs, mcs, and cesd.
# ============================================

h1 <- helpdat %>%
  select(nodetox, age, female, pss_fr,
         pcs, mcs, cesd)
