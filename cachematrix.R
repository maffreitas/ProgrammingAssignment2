## Here are two function:
## makeCacheMatrix to cache a inverse matrix
## cachesolve to compute the inverse matrix created previously


## Usage example:
##
# > source("ProgrammingAssignment2/cachematrix.R")
# > my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))
# > cacheSolve(my_matrix)
     # [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5

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
        list(set = set,  ##   - set the value of the matrix
		     get = get,  ##   - get the value of the matrix
             setinverse = setinverse,  ##   - set the value of the inverse matrix
             getinverse = getinverse)  ##   - get the value of the inverse matrix
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
        m <- solve(data, ...)
        x$setinverse(m)
        m		
}
