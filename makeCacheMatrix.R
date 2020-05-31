## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

