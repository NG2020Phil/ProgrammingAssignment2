## Put comments here that give an overall description of what your
## functions do
##  The following functions are used to save time when caching the inverse of large computations of data

## Write a short comment describing this function
##This function should create a matrix object that can cache its inverse

makeCachematrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() (inv)
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function
##This function should compute the inverse of the matrix returned by the makeCacheMatrix coding above.

cachemean <- function(x, ...)
  {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
  }
