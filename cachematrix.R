## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat_inv <- NULL
  set <- function(k){
    x <<- k
    mat_inv <<- NULL
  }
  get <- function() x
  set_MatInverse <- function(solveMatrix) mat_inv <<- solveMatrix
  get_MatInverse <- function() mat_inv
  list(set = set, get = get, set_MatInverse = set_MatInverse, get_MatInverse = get_MatInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mat_inv <- x$get_MatInverse()
  if(!is.null(mat_inv)){
    message("getting cached data")
    return(mat_inv)
  }
  data <- x$get()
  mat_inv <- solve(data)
  x$set_MatInverse(mat_inv)
  mat_inv     
}
