# You will need to install the readxl package
# if you do not already have it
library(readxl)

# This line of code assumes that the XLSX datafile
# "Dataset_02_fixq2.xlsx" is in the SAME directory
# as this R script.
DataHmwk1 <- read_excel("Dataset_02_fixq2.xlsx")

# view the dataset
View(DataHmwk1)