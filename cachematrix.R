## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeVector <- function(x = numeric()) {
    m <- NULL
    set <- function(y) {
              x <<- y
              m <<- NULL
        }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
              setmean = setmean,
              getmean = getmean)
}



cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                  message("getting cached data")
                  return(m)
          }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
        m
}


makeCacheMatrix <- function( m = matrix() ) {
          i <- NULL
  set <- function( matrix ) {
               m <<- matrix
               i <<- NULL
  }
  
  get <- function() {
          	m
  }
  
  setInverse <- function(inverse) {
            i <<- inverse
  }
  
  getInverse <- function() {
            i
  }
  
  list(set = set, get = get,
                setInverse = setInverse,
                getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
    
  if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }
    
  data <- x$get()
      
  m <- solve(data) %*% data
        
  x$setInverse(m)
        
  m
}


