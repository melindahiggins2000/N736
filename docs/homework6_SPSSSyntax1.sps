* Encoding: UTF-8.
* ==================================
* Homework 06 - logistic regression
* 
* Melinda Higgins, PhD
* dated 11/25/2018
* ==================================

* ============================================
* For this homework we'll use the helpmkh dataset
*
* You will be working with the e2b variable
* Number of times in past 6 months entered a 
* detox program (collected at Baseline)
*
* For this logistic regression homework 6,
* I've provided the code below to capture the
* individuals who did NOT say they had entered a detox
* program in the 6 months preceeding baseline
* ============================================

* in SPSS use the MISSING() function to create
* a logical expression to capture the individuals
* who did NOT say they had entered a detox program
* prior to baseline. The TRUE's are coded 1 and 
* FALSE's are coded 0.

COMPUTE nodetox=MISSING(e2b).
EXECUTE.

* check the results using frequencies
* the number of system-missing for e2b
* should equal the number of 1's or TRUE's
* for the new variable nodetox.

FREQUENCIES VARIABLES=e2b nodetox
  /ORDER=ANALYSIS.
