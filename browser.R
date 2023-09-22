
# Function 1
function_1 <- function(a){
  browser()
  a + 5
}

# Function 2
function_2 <- function(b) {
  function_1(b)
}

function_2("s")

vec = c()
n=1
for (i in 1:10) {
  j= i^2
  n=n+1
  vec[i] = n
  if (i == 3) {
    browser()
  }
}
