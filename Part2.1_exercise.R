#read in the dataset melanoma.txt as melanoma



#read in the datasets melanomaA.csv and melanomaB.csv as melanomaA and melanomaB



#find out the columnnames and the rownames of the dataset melanoma



#load package dplyr



#change columnname "status" to "censor"
#with basic R



#with function rename of package dplyr



#add a new column with random numbers to the dataset (3 different approaches- use a different columnname in every aproach to avoid duplicate columns)



#delet the columns you just created



#add an observation to the dataset



#remove the last observation



#sort the dataset by variable sex and descending age
#with basic R



#sort the dataset by ulcer and descending year
#with the function arrange of the dplyr package



#select all observations where ulcer is 0 and age is less or equal 40
#with basic R


#with function filter of package dplyr


#join the datasets melanomaA and melanomaB on the variable x with a full join
#with basic R



#with functions of the package dplyr



#join the datasets with an inner join, on the variables x1 and x2
#with basic R



#with functions of the package dplyr 
#(hint: use help(inner_join))



#use the following code to create an example dataset 
#the dataset contains the name of 3 cities and their avarage temperature in winter and summer

data1_w <- data.frame(city = c("Paris", "Rom", "Oslo"), 
                      winter = c(3, 11, -2), 
                      summer = c(19, 30, 18)) 

#install and load package tidyr


# rearrange the dataset with one column "city", one column "season" and one column "temperature" 



#use the following code to create a new eample dataset

set.seed(10)
data2_w <- data.frame(id = 1:4, 
                      trt = sample(rep(c('control', 'treatment'), each = 2)), 
                      work.T1 = runif(4), home.T1 = runif(4), 
                      work.T2 = runif(4), home.T2 = runif(4)) 

#create a long dataset with the variables "id" and "trt", the variables with suffix "-.T1" or "-.T2" should be displayed into a variable "key"
# values should be displayed in a variable "time"



#separate variable "key" of data2_l at the "." into the variables "location" and "T"



#use data1_l to create data1_w again (use a new datasetname to compare it with the original)



#use function unite, to create data2_l out of data2_l1 again



#create data2_w again out of data2_l2


