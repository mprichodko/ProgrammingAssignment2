## Write a short comment describing this function

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