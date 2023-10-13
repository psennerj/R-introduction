#look up your working directory

getwd()

#change the directory to the path where you stored the melanoma datasets

setwd("C:/Users/JuliaPsenner/OneDrive - mainanalytics GmbH/R Kurs/R-Introduction")

#read in the dataset melanoma.txt as melanoma1

melanoma1 <- read.table(file = "melanoma.txt", 
                       header = TRUE, 
                       sep = " ", 
                       dec = ".")

#read in the dataset melanoma.csv as melanoma2

melanoma2 <- read.csv(file = "melanoma.csv")

#install and load package "haven" to work with sas datasets

install.packages("haven")
library("haven")

#read in dataset melanoma.sas7bdat as melanoma_sas

melanoma_sas <- read_sas("melanoma.sas7bdat")

#save the dataframe melanoma1 as melanoma1.txt

write.table(melanoma1,
            "melanoma1.txt",
            row.names = FALSE)

#save the dataframe melanoma2 as melanoma2.csv

write.csv(melanoma2,
          "melanoma2.csv",
          row.names = FALSE)

#install and load package "foreign" to work with sas datasets

install.packages("foreign")
library("foreign")

#save the dataframe melanoma_sas as melanoma_sas.csv and create a file melanoma_read_sas.sas which includes sas-code to read csv file.

write.foreign(df = melanoma_sas,
              datafile = "melanoma_sas.csv",
              codefile = "melanoma_read_sas.sas",
              package = c("SAS")) 

#write a simple function f1 which calculates the sum of 3 and 5

f1 <- function(){
  3+5
}
f1()

#write a function f2 which multiplies the input argument a by 9 and stores it into a new variable v make sure, v is also assigned outside the function

f2 <- function(a){
  v <<- a*9
}
#or
f2 <- function(a){
  assign(x='v', value = a*9, envir = .GlobalEnv)
}

f2(2)
v

