## Here are two function:
## makeCacheMatrix to cache a inverse matrix
## cachesolve to compute the inverse matrix created previously

## In this function I try to implement the code to create a matrix and cache the inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## In this function I try to implement the code to inverse the matrix previously created by function makeCacheMatrix

cacheSolve <- function(x, ...) {
        # Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setinverse(m)
        m		
}
