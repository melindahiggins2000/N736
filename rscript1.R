library(tidyverse)

# this tidy approach
# filters out only the rows
# for which age > 18 is TRUE
# this gets rid of the row for the 16 yr old
# and removes the missing data rows
newdata <- moredata %>%
  filter(age>18)

# running this logic statement
# to select the rows you want
moredata$age > 18

# suppose make a histogram of age
moredata %>%
  filter(age>18) %>%
  select(age) %>%
  ggplot(aes(age)) +
    geom_histogram()



