## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	invs <- NULL
  	set <- function(y) {
    	x <<- y
    	m <<- NULL
  	}
  	get <- function() x
  	setinverse <- function(i) invs <<- i
  	getinverse <- function() invs
  	list(set = set, get = get,
    	setinverse = setinverse,
       	getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
  	if(!is.null(m)) {
    		message("getting cached data")
    		return(m)
  	}
  	data <- x$get()
  	i <- solve(a, ...)
  	x$setinverse(i)
  	i
}
