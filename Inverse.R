># Solved Assignment
 # The following function calculates the inverse of a "special" matrix created with 
> # makeCacheMatrix
> cacheSolve <- function(y, ...) {
+     # get the cached value
+     inverse <- y$getInverse()
+     # if a cached value exists return it
+     if(!is.null(inverse)) {
+         message("getting cached data")
+         return(inverse)
+     }
+     # otherwise get the matrix, caclulate the inverse and store it in
+     # the cache
+     data <- y$getMatrix()
+     inverse <- solve(data)
+     y$cacheInverse(inverse)
+     
+     # return the inverse
+     inverse
+ }
> a <- makeCacheMatrix( matrix(c(1,2,12,13), nrow = 2, ncol = 2) )
> summary(a)
             Length Class  Mode    
setMatrix    1      -none- function
getMatrix    1      -none- function
cacheInverse 1      -none- function
getInverse   1      -none- function
> a$getMatrix()
     [,1] [,2]
[1,]    1   12
[2,]    2   13
> cacheSolve(a)
           [,1]        [,2]
[1,] -1.1818182  1.09090909
[2,]  0.1818182 -0.09090909
> # the 2nd time we run the function,we get the cached value
> cacheSolve(a)
getting cached data
           [,1]        [,2]
[1,] -1.1818182  1.09090909
[2,]  0.1818182 -0.09090909