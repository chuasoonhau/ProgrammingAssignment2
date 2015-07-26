## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Essentially for the makeCacheMatric function, it is emualting the example from the assignment description, except that I change the variable names to reflect that it is a setInverse function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) m <<- inverse
        getInverse <- function() m
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## Again, this is the same as the assignment example, except that I use the solve function to get the Inverse of the matrix x and return it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInverse(m)
        m
}
