#Calculate 1234 times 56

1234*56

#Calculate logarithm of 100

log(100)

#Create a numeric vector v1 which contains the numbers 1, 5, 0, 3, 8 and 300

v1 <- c(1, 5, 0, 3, 8, 300)

#Create a numeric vector v2 which contains all numbers from 0 to 9

v2 <- 0:9

#Create a vector v3 which contains all even number from 1 to 20

v3 <- seq(from=2, to = 20, by = 2)
v3 <- seq(2,20,2)

#Create a vector v4 which contains the number 3, 5 times

v4 <- rep(3, 5)

#Create a numerical vector v5 which contains the words "mainanalytics" and "Sulzbach"

v5 <- c("mainanalytics", "Sulzbach")
v5 <- c('mainanalytics', 'Sulzbach')

#create a vector v6 with some 0 and 1 (example: 0,1,0,0,0,1,1,1)
#Use v6 to generate a factor f1 with lables "yes" and "no" instead of 1 and 0
#Display the factor f1

v6 <- c(0,1,0,0,0,1,1,1)
f1 <- factor(v6, levels = c(0,1), labels = c('no', 'yes'))
f1

#Use v1 to generate a matrix m1 with 3 rows and 2 columns. 
#Display m1

m1 <- matrix(v1, nrow=3, ncol=2)
m1

#Create a 3x3 matrix m2 with 1 in the diagonal and 0 in the other fields (use only nrow parameter and not ncol)

m2 <- matrix(c(1,0,0,0,1,0,0,0,1), nrow=3)
m2

#Create a dataframe df1 with the columns "name", "age" and "sex" and the observations ('Eva', 31, 'f'), ('Peter', 42, 'm') and ('Hans', 17, 'm')

df1 <- data.frame(name = c('Eva','Peter','Hans'),
                  age = c(31, 42, 17),
                  sex = c('f', 'm', 'm'))

#Create a dataframe df2 out of the two vectors v2 and v3

df2 <- data.frame(v2,v3)

#Create a list l1 which contains v1, m1, df1 and the string "hello"

l1 <- list(v1, m1, df1, 'hello')

#Display the first and the last element of v1

v1[c(1,length(v1))]

#Display second, third and fourth element of v2

v2[2:4]

#Display first row of m1

m1[1,]

#Display second column of m2

m2[,2]

#Display first observation of df1

df1[1,]

#Display column age of df1 (use 3 different ways)

df1['age']
df1$age
df1[,2]

#Display 2nd element of the list l1

l1[2]

#2nd element of l1 is a matrix. Display 1st element of 2nd row of this matrix (->should be 5)
l1[[2]][2,1]
