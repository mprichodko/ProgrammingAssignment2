##  `makeCacheMatrix` function creates a special "matrix" object that can cache 
## its inverse. `cacheSolve` function computes the inverse of the special "matrix" 
## returned by `makeCacheMatrix` above. If the inverse has already been calculated 
## (and the matrix has not changed), then `cacheSolve` should retrieve the inverse 
## from the cache.



## Function `makeCacheMatrix` creates a list containing of functions to:
## 1.  set the value of the matrix - getMatrix
## 2.  get the value of the matrix - setMatrix
## 3.  set the value of the invers of the matrix - setInvMatrix
## 4.  get the value of the invers of the matrix - getInvMatrix

makeCacheMatrix <- function(x=matrix()) {
  invMatrix <- NULL
  setMatrix <- function(y){
    x <<-  y
    invMatrix <<- NULL
  }
  getMatrix <- function() x
  setInvMatrix <- function(solve) invMatrix <<- solve
  getInvMatrix <- function() invMatrix
  list(setMatrix=setMatrix,getMatrix=getMatrix,
       setInvMatrix=setInvMatrix,getInvMatrix=getInvMatrix)
}



## The function `cacheSolve calculates` calculates the inverse of the special "matrix"
## created with the function `makeCacheMatrix`. First it checks if the inverse 
## has already been calculated. If so, it `get`s the inversed matrix from the
## cache and skips the computation. Otherwise, it calculates the inverse of
## the data and sets the value of the inversed matrix in the cache via 
## the `setInvMatrix` function.

cacheSolve <- function(x, ...) {
  invMatrix <- x$getInvMatrix()
  if(!is.null(invMatrix)) {
    message("getting cached data")
    return(invMatrix)
  }
  data <- x$getMatrix()
  invMatrix <- solve(data)
  x$setInvMatrix(invMatrix)
  invMatrix
}
