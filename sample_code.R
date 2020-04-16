library(readxl)
Sample <- read_excel("C:\\Users\\....\\R\\Data\\Sample.xlsx")
View(Sample)
myvars <- names(Sample)%in% c("score")
sample2 <- Sample[myvars]
View(sample2)
myvars2 <- c("score")
sample2 <- Sample[myvars2]
View(sample2)
sample3 <- Sample[myvars2]
View(sample2)
myvars <- names(Sample)%in% c("score")
sample2 <- Sample[myvars]
View(sample2)


# Installing Spark

packages <- c("tidyverse","readxl", "sqldf", "crosswalkr", "sparklyr") 
new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if (length(new_packages)) {
  install.packages(new_packages, lib= "home/cdsw/R")
}
invisible(lapply(packages, library, character.only=T))

.Rprofile
