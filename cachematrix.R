#    set the value of the matrix
#    get the value of the matrix
#    set the inverse of the matrix
#    get the inverse of the matrix

## create a list which is a function to perform above operations

makeCacheMatrix <- function(x = matrix())
{
    m <- NULL
    set <- function(y)
    {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setInversenMRueter
     Unwatch <- function(inverse) m <<- inverse
    getInverse <- function() m

    list(set = set, get = get, setInverse = setInverse,  getInverse = getInverse)
}

## looks to see if inverse matrix of x has already been created,
## if so gets and returns
## if not, calculates and returns

cacheSolve <- function(x, ...)
{
    m <- x$getInverse()
    if(!is.null(m))
    {
        message("getting cached data")
        return(m)
    }

    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)

    ## Return a matrix that is the inverse of 'x'
    m
}
