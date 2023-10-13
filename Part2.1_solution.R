#read in the dataset melanoma.txt as melanoma

melanoma <- read.table(file = "melanoma.txt", 
                        header = TRUE, 
                        sep = " ", 
                        dec = ".")

#read in the datasets melanomaA.csv and melanomaB.csv as melanomaA and melanomaB

melanomaA <- read.csv(file = "melanomaA.csv", 
                       header = TRUE, 
                       sep = ",", 
                       dec = ".")

melanomaB <- read.csv(file = "melanomaB.csv", 
                      header = TRUE, 
                      sep = ",", 
                      dec = ".")

#find out the columnnames and the rownames of the dataset melanoma

colnames(melanoma)
rownames(melanoma)

#load package dplyr

library("dplyr")

#change columnname "status" to "censor"
#with basic R

colnames(melanoma)[which(colnames(melanoma) == 'status')] <- 'censor'

#with function rename of package dplyr

melanoma <- rename(melanoma, replace = c('status' = 'censor'))

#add a new column with random numbers to the dataset (3 different approaches- use a different columnname in every aproach to avoid duplicate columns)

melanoma$RandomVar1 <- runif(205)
#or
melanoma <- cbind(melanoma, RandomVar2 = runif(205))
#or
melanoma <- mutate(melanoma, RandomVar3 = runif(205))

#delet the columns you just created

melanoma$RandomVar1 <- NULL
#or
melanoma <- melanoma[- which(colnames(melanoma) == 'RandomVar2')]
#or
melanoma <- select(melanoma, -('RandomVar3'))

#add an observation to the dataset

melanoma <- rbind(melanoma, c(206,206,201,3,0,55,1970,1,0))

#remove the last observation

melanoma <- melanoma[-206,]

#sort the dataset by variable sex and descending age
#with basic R

melanoma_sort_1 <- melanoma[order(melanoma$sex, -melanoma$age),]

#sort the dataset by ulcer and descending year
#with the function arrange of the dplyr package

melanoma_sort_2 <- arrange(melanoma, ulcer, desc(year))

#select all observations where ulcer is 0 and age is less or equal 40
#with basic R

melanoma_subset_1 <- melanoma[melanoma$ulcer == 0 & melanoma$age <= 40, ] 
#or
melanoma_subset_2 <- subset(melanoma, (melanoma$ulcer == 0 & melanoma$age <= 40))
#with function filter of package dplyr
melanoma_subset <- filter(melanoma, ulcer == 0, age <= 40)

#join the datasets melanomaA and melanomaB on the variable x with a full join
#with basic R

melanomaC1 <- merge(x = melanomaA, y = melanomaB,
                   by='X', all = TRUE)

#with functions of the package dplyr

melanomaC2 <- full_join(x=melanomaA, y=melanomaB,by='X')

#join the datasets with an inner join, on the variables x1 and x2
#with basic R

melanomaC3 <- merge(x = melanomaA, y = melanomaB,
                   by.x = 'X1', by.y = 'X2', all = FALSE)

#with functions of the package dplyr 
#(hint: use help(inner_join))

melanomaC4 <- inner_join(x=melanomaA, y=melanomaB,by=join_by('X1'=='X2'))

#use the following code to create an example dataset 
#the dataset contains the name of 3 cities and their avarage temperature in winter and summer

data1_w <- data.frame(city = c("Paris", "Rom", "Oslo"), 
                      winter = c(3, 11, -2), 
                      summer = c(19, 30, 18)) 

#install and load package tidyr

install.packages("tidyr")
library(tidyr) 

# rearrange the dataset with one column "city", one column "season" and one column "temperature" 

data1_l <- gather(data = data1_w, key = season, value = temperature, winter, summer)

#use the following code to create a new eample dataset

set.seed(10)
data2_w <- data.frame(id = 1:4, 
                      trt = sample(rep(c('control', 'treatment'), each = 2)), 
                      work.T1 = runif(4), home.T1 = runif(4), 
                      work.T2 = runif(4), home.T2 = runif(4)) 

#create a long dataset with the variables "id" and "trt", the variables with suffix "-.T1" or "-.T2" should be displayed into a variable "key"
# values should be displayed in a variable "time"

data2_l <- gather(data = data2_w, key = key, value = time, -id, -trt)

#separate variable "key" of data2_l at the "." into the variables "location" and "T"

data2_l1 <- separate(data = data2_l, col = key, into = c("location", "T"), sep = "\\.")

#use data1_l to create data1_w again (use a new datasetname to compare it with the original)

data1_w1 <- spread(data=data1_l, key=season, value=temperature)

#use function unite, to create data2_l out of data2_l1 again

data2_l2 <- unite(data = data2_l1, col = key, 'location', 'T', sep = '.') 

#create data2_w again out of data2_l2

data2_w1 <- spread(data = data2_l2, key = key, value = time)

