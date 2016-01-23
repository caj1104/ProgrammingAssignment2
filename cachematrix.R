## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#set the value of the matrix
2.get the value of the matrix
3.set the value of the inverse matrix
4.get the value of the inverse matrix


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


## Write a short comment describing this function

cacheSolve <- function(x) {
        inv <- x$getinv()
        if(!is.null(inv)){
                 message("getting cached data")
                 return(inv)
        }
        data<- x$get()
        inv<-solve(data)
        x$setinv( inv )
        inv
        
}        
