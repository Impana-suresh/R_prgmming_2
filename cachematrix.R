funs <- MatrixCache()
funs$set(matrix(1:4, 2))
funs$get()




funs$setInverse()
funs$getInverse()





MatrixCache <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  
  
  setInverse <- function() inverse <<- solve(x) #calculate the inverse
  getInverse <- function() inverse
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}








