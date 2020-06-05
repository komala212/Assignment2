## The following 2 functions are created to cache the inverse of the matrix to avoid recalculation
## makeCache Matrix funtion is used to create a special matrix which can do 4 tasks listed below
## Set the value of the matrix
## Get the value of the matrix
## Set the value of the matrix inverse
## Get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve is use to calculate the inverse of the matrix. 
## Also it checks whether the inverse of the same matrix is calculated before using the above function 
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

