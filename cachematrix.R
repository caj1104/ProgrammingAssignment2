## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse matrix
## get the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL
        set<- function(y){
                x<<-y
                inv<<-NULL
        }        
        get<-function() x
        setinv<-function(inv_matrix) inv<<-inv_matrix
        getinv<-function() inv
        list(set=set , get=get , getinv=getinv ,
             setinv=setinv )
}


## This function computes the inverse of the special "matrix" created by  
## makeCacheMatrix above. If the inverse has already been calculated (and the  
## matrix has not changed), then it should retrieve the inverse from the cache. 


cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)){
                 message("getting cached data")
                 return(inv)
        }
        data<- x$get()
        inv<-solve(data, ...)
        x$setinv(inv)
        inv
        
}        
