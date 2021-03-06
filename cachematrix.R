## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <-NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        ## if the inverse was created, it will be returned
        if(!is.null(m)) {
                message("getting cahed data")
                return(m)
        }
        ## else, the inverse will be computed then returned
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
