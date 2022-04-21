## My functions create special matrix that store its inverse in "cache"
## and can calculate inverse if its not calculated

##Function creates a matrix object that can cache its inverse 

makeCacheMatrix <- function(yourmatrix = matrix()) {
	## initialize inverse
      inversmat <- NULL
	## set values of the matrix
      set <- function(k) {
              yourmatrix <<- k
              inversmat <<- NULL
      }
	## get function for matrix
      get <- function() yourmatrix  	
	## set new inverse for inverse
      setinverse <- function(newinversmat) inversmat <<- newinversmat
	## get function for inverse
      getinverse <- function() inversmat  
	## return a list of the methods
      list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


#This function calculates inverse matrix and if it's been already calculated and hasn't changed, 
##it takes the inverse from the cache

cacheSolve <- function(yourmatrix, ...) {
        ## Return a matrix that is the inverse of 'yourmatrix'
      inversm <- yourmatrix$getinverse()
	## check are your matrix has alredy computed inverse
      if(!is.null(inversm)) {	      
              message("getting cached data")
              return(inversmat)
      }
	## Get our matrix 
      data <- yourmatrix$get()
	## find inverse of matrix and set to matrix
      inversm <- solve(data, ...)
      yourmatrix$setinverse(inversm)
	## Return the inverse matrix
      inversm
}
