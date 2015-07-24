## Put comments here that give an overall description of what your
## functions do   ---This fuction caches the inverse of a matrix. It creates a wrapper to hold the matrix and properties of
## the matrix, i.e. its inverse

## Write a short comment describing this function. This creates a "wrapper" for a matrix of interest containing the 
##matrix inverse (if calculated), functions to return the matrix and a function to cache the inverse if it has been calculated
###using the next function

makeCacheMatrix <- function(x = matrix()) {      
	
	inv<-NULL
	
	return.matrix<-function() x
	getinv<-function() inv
	setinv<-function(new.inv) {inv<<- new.inv }
	
	list(return.matrix=return.matrix,getinv=getinv,setinv=setinv)
	}
	
	


## Write a short comment describing this function---This function uses the "wrapped matrix of interest", i.e. the above function 
#with the matrix of interest as the formal argument. It will first look to see if the inverse is available in the "wrapper".
#If it is not there, i.e. it is NULL, it will calculate the inverse and it will subsequently store it in the above wrapper for
#future access.

	cacheSolve <- function(wrapped.matrix,...) {

inverse<- wrapped.matrix$getinv()        

  if(!is.null(inverse)){ message("getting cached matrix")        
        	return(inverse)	}

        
        matrix<-wrapped.matrix$return.matrix()
        new.inverse<-solve(matrix,...)
        wrapped.matrix$setinv(new.inverse)
new.inverse        
        
}


