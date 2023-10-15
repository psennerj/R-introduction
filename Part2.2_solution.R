#read in dataset iris.csv

iris <- read.csv(file = "iris.csv",
                 na.strings = c(" ", "."))

#check which elements of the variable "Petal.Width" are missing

is.na(iris$Petal.Width)

#drop all observations which contain missing values

iris_CompleteCase <- na.omit(iris) 

#calculate mean of iris$Petal.Length

mean(iris$Petal.Length)

#if the output of the function is NA, use the na.rm variable to avoid missing values within the calculation

mean(iris$Petal.Length, na.rm = TRUE)

#use the following code to create a list of matrices

l <- list(m1 = matrix(1:9, 3), 
          m2 = matrix(seq(1, 18, by = 2)))

#have a look at both matrices
l[1]
l[2]

#calculate the mean of both matrices by using a for loop (note: you have to initialize the outputvector)

res <- 0
for(i in 1:2){
  res[i] <- mean(l[[i]]) 
}

#calculate the mean using lapply()

res1 <- lapply(l,mean)
