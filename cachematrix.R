## Put comments here that give an overall description of what your
## functions do
## The function below let saves the inverse of a Matrix on Cache.


## Write a short comment describing this function

##The function makeCacheMatrix it´s a function that keeps a few functions in a list(Getters, setters, setinverse and getinverse), these functions
## have a free variables (y, inverse)
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## This function saves in cache the inverse of the matrix with the line: inv <- solve(data, ...) and let you work with that later.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
