# Calling recover
options(error = recover)

# Function 1
function_1 <- function(a){
  a + 5
}

# Function 2
function_2 <- function(b) {
  function_1(b)
}

# Function 2
function_3 <- function(c) {
  x <- 3
  y <- 4
  function_2(c)
}

# Calling function
function_3("s")
