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

