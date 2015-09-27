## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     
     #setting value for x
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     #getting value stored in x
     get <- function() x
     
     #setting value for solve.... not calculating inverse here..
     setsolve <- function(solve) m <<- solve
     
     #getting inverse of x
     getsolve <- function() m
     list(set = set, get = get,
          setsolve = setsolve,
          getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x) {
## Return a matrix that is the inverse of 'x'

     m <- x$getsolve()
     
     #if m value is not null, this function does not calculate inverse agian and returns value of m as inverse
     if(!is.null(m)) {
          message("Fetching from cached data. Not calculating inverse")
          return(m)
     }
     data <- x$get()
     m <- solve(data)
     x$setsolve(m)
     m
     }
