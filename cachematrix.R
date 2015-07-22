##These functions will take a matrix as input and invert the matrix.
##If the matrix has already been inverted, the function will get the cached value and return it

## This function will create a matrix which has functions that will
## set the matrix values, get the matrix values, set the inverse of the matrix
## and get the inverse of the matrix
makeCacheMatrix <- function(x = matrix())
{
   inv<-NULL
   set<-function(y)
   {
      x<<-y
      inv <<-NULL
   }
   get <- function() x
   setinv <- funvction(inverse) inv<<-inverse
   getinv <- function() inv
   list (set=set, get=get,
        setinv=setinv,
        getinv=getinv)
}

## This function will check to see if the matrix value has been inversed already and is cached.
## If it is cached it will retrieve and return the cached value.
## If the matrix has not yet been inverted, it will invert the matrix, save the value and return the inverted matrix
cacheSolve <- function(x, ...)
{
  inv<- x$getinv()
  if (!is.null(inv))
  {
     return(inv)
  }

  data <- x$get()
  inv <-solve(data,...)
  x$setinv(inv)
  inv
}