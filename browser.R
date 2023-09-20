
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
