## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   ig <- NULL
   set <- function(y) {
      x <<- y
      ig <<- NULL
   }
   get <- function() x
   setinverse <- function(inverse) ig <<- inverse
   getinverse <- function() ig
   list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   ig <- x$getinverse()
   if(!is.null(ig)) {
      message("getting cached data.")
      return(ig)
   }
   data <- x$get()
   ig <- solve(data)
   x$setinverse(ig)
   ig
}
