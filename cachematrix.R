## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(yourmatrix = matrix()) {
	inversmat <- NULL
      set <- function(k) {
              yourmatrix <<- k
              inversmat <<- NULL
      }
      get <- function() yourmatrix  
      setinverse <- function(newinversmat) inversmat <<- newinversmat
      getinverse <- function() inversmat  
      list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(yourmatrix, ...) {
        ## Return a matrix that is the inverse of 'yourmatrix'
	inversm <- yourmatrix$getinverse()
      if(!is.null(inversm)) {
              message("getting cached data")
              return(inversmat)
      }
      data <- yourmatrix$get()
      inversm <- solve(data, ...)
      yourmatrix$setinverse(inversm)
      inversm
}
