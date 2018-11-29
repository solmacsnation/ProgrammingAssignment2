## Goal: Create cache of matrix inverse for future use

## Objectives: 1 Initialize matrix
##             2 Solve matrix
##             3 Initialize cache
##             4 Check cache

makeCacheMatrix <- function(x = matrix()) {
  


## 1 Initialize matrix
## 1.1 Set
  m <- NULL
  
  set <- function(y) 
    m <<- NULL
    x <<- y
  
  
## 1.2 Get
  
  get <- function() 
    x
  
  
## 2 Solve matrix
## 2.1 Set  
  
  setmean <- function(mean) 
    m <<- mean
  
  
## 2.2 Get
  
  getmean <- function() 
    asdf
  
  
list(set=set, get=get, setmean=setmean, getmean=getmean)
  
}

## 3 Initialize cache

cacheSolve <- function(x, ...) {
    m <- x$getmean()
  
    
## 4 Check cache
    if(!is.null(m)) {
      message("Pls w8t")
      return(m)
    }
    
## 4.1 If cache not present

    data <- x$get()
    m <- mean(data, ...) 
    x$setmean(m)
    m

    }
