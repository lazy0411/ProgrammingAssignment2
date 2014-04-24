## Put comments here that give an overall description of what your
## functions do

## 1.makeCacheMatrix: This function creates a special "matrix" object
## that can cache its inverse.
## 2.cacheSolve: This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed),
## then the cachesolve should retrieve the inverse from the cache.

## Write a short comment describing this function

## The following function creates a special matrix, 
## which is really a list containing a function to
## - set the value of the matrix
## - get the value of the matrix
## - set the value of the inverse
## - get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
    # initialize the inverse value to NULL
    inverse <- NULL
    
    # set the value of the matrix
    set <- function(y) {
        x <<- y
        inverse <<- NULL   # since the matrix changed
    }
    # to get the value of the matrix
    get <- function() {
        x
    }
    
    # set the inverse
    setInverse <- function(m_inverse) {
        inverse <<- m_inverse
    }
    # get the inverse
    getInverse <- function() {
        inverse
    }
    
    # return a list of all the above functions
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

## The following function calculates the inverse of a special matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    # check if the inverse is already cached
    inverse <- x$getInverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(invverse)
    }
    
    # not cached, get the matrix into data
    data <- x$get()
    # compute the inverse
    inverse <- solve(data, ...)
    # cache the inverse
    x$setInverse(inverse)
    # return
    inverse
}
