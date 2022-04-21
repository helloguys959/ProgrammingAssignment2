## My functions create special matrix that store its inverse in "cache"
## and can calculate inverse if its not calculated

##Function creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(yourmatrix = matrix()) {
	inversmat <- NULL
      set <- function(k) {
	      ## set values of the vector
              yourmatrix <<- k
              inversmat <<- NULL
      }
      get <- function() yourmatrix  
	## get function for matrix
      setinverse <- function(newinversmat) inversmat <<- newinversmat
	## set new inverse for matrix
      getinverse <- function() inversmat  
	## get inverse
      list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


#this function calculates inverse matrix and if it's been already calculated and hasn't changed, 
##it takes the inverse from the cache

cacheSolve <- function(yourmatrix, ...) {
      ## Return a matrix that is the inverse of 'yourmatrix'
      inversm <- yourmatrix$getinverse()
      if(!is.null(inversm)) {
	      ## check are your matrix has alredy computed inverse
              message("getting cached data")
              return(inversmat)
      }
      data <- yourmatrix$get()
      inversm <- solve(data, ...)
      ## find inverse of matrix and store it to cache
      yourmatrix$setinverse(inversm)
      inversm
}
