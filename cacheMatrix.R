## Creates a special matrix object which can cache its inverse
makeCacheMatrix <- function( y = matrix() ) 
{
## The inverse property
i <- NULL
## Setting Matrix
 set <- function( matrix ) 
{
y <<- matrix
i <<- NULL
}

## Get the matrix 
get <- function() 
{
## Display matrix
y
}

## Set Matrix Inversion
setInverse <- function(inverse) 
{
i <<- inverse
}

## Getting the inverse of the matrix
getInverse <- function() 
{
## Returning inverse property
i
}

## List of functions
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}

## Write a short comment describing this function

## Computes the inversion of the matrix "makecachematrix"
## cachesolve will retrieve the inverse from cache.
cacheSolve <- function(x, ...) {

## Retrieves matrix that is the inverse of 'x'+
## Displays matrix - inverse of 'x'
y <- x$getInverse()

## Retrieves the inverse if its already defined
if( !is.null(y) ) {
message("returning cache")
return(y)
}

## to get matrix object
candy <- x$get()

## Computes matrix for the inverse
y <- solve(candy) %*% candy
## setting inverse of the object
x$setInverse(y)

## Display matrix data
y
}
