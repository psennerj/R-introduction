#install package dplyr using the "install"-button

#you can also use the following code
install.packages("dplyr")

#load package dplyr

library("dplyr")

#get an overview of the package

help(package = "dplyr")

#get some basic information on the package try both functions mentioned in the presentation and investigate the difference

packageDescription("dplyr")

#or

library(help = "dplyr")

#choose a function of the package and get some information and the sourcecode of the function (eg. bind_rows)

bind_cols
#or
body(bind_rows)

#get a description and some help for the usage of the function

?bind_rows
#or
help("bind_rows")

#run the prepared example for the function

example("bind_rows")

#find out if there are any othe functions containing the string "bind"

apropos("bind")

#find out if there are any other documents containing the string "bind"

help.search("bind")

