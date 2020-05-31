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