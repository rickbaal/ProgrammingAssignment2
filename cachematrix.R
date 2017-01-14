## Put comments here that give an overall description of what your
## functions do

## set the value of the matrix
## get the value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get = function() x
  setinverse = function(solve) m <<- solve 
  getinverse = function() m
  list(set=set, get=get, 
       setinverse=setinverse, 
       getinverse=getinverse)
}


## calculate the inverse

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  
  m
}
