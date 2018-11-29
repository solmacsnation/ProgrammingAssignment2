## Goal: Create cache of matrix inverse for future use

## Objectives: 1 Initialize matrix
##             2 Solve matrix
##             3 Initialize cache
##             4 Check cache

makeCacheMatrix <- function(x = matrix()) {
  


## 1 Initialize matrix
## 1.1 Set
  asdf <- NULL
  
  set.matrix <- function(y) 
    asdf <<- NULL
    x <<- y
  
  
## 1.2 Get
  
  get.matrix <- function() 
    x
  
  
## 2 Solve matrix
## 2.1 Set  
  
  set.solve <- function(solve) 
    asdf <<- solve
  
  
## 2.2 Get
  
  get.solve <- function() 
    asdf
  
  
list(set.matrix=set.matrix, get.matrix=get.matrix, 
     set.solve=set.solve, get.solve=get.solve)
  
}

## 3 Initialize cache

cacheSolve <- function(x, ...) {
    asdf <- x$get.solve()
  
    
## 4 Check cache
    if(!is.null(asdf)) {
      message("Pls w8t")
      return(asdf)
    }
    
## 4.1 If cache not present

    matrix <- x$get.matrix()
    asdf <- solve(matrix, ...) 
    x$set.solve(asdf)
    asdf

    }
