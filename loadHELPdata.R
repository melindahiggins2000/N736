# =====================================
#
# loading the HELP dataset with formatting 
# and lebeling - the codebook has been
# applied - see helpmkh.*
#
# dated 09/25/2018
# Melinda Higgins, PhD.
#
# =====================================

library(tidyverse)
library(haven)

help.spss <- haven::read_spss("helpmkh.sav")

# the "labelled" variables with "codebook"
# come in as a "labelled" class
# with attributes which include labels
attributes(help.spss$female)
class(help.spss$female)
table(help.spss$female)

# to see/use the labels, you can "coerce"
# these labelled variables into factors
# using the as_factor() function in haven
table(as_factor(help.spss$female))
plot(as_factor(help.spss$female),
     main="Frequencies of Gender")

# racegrp is a character variable
# which works fine for table
# but still need as_factor() for plot
table(help.spss$racegrp)
plot(as_factor(help.spss$racegrp),
     main = attributes(help.spss$racegrp)$label)
