# browser() in nested functions

# Function 1
function_1 <- function(a){
  #browser()
  a + 5
}

# Function 2
function_2 <- function(b) {
  function_1(b)
}

function_2("s")


# browser() in loops

vec = c()
x=1
for (i in 1:10) {
  j= i^2
  x=x+1
  vec[i] = x
  if (i == 3) {
    browser()
  }
}
