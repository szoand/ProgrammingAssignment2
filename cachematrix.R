## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function 
## Based on the provided example, it creates a list of four functions for handling the matrix object and its inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse=getinverse)
}


## Write a short comment describing this function
## Based on the provided example, it checks the cache for a cached inverse, 
##and if it doesn't exists, or the matrix changed, calculates it, then return it


cacheSolve <- function(x, ...) {
  m <- x$getinverse()## Return a matrix that is the inverse of 'x'
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
  }
