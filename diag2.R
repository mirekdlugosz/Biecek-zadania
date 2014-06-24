## @knitr diagoffset2.14

diag2 <- function(x, offset=0) {
  if (! is.matrix(x))
    stop("x must be matrix")
  
  if (offset==0)
    return(diag(x))
  
  # przekątna POD główną
  if (offset < 0) {
    if (offset > nrow(x))
      return(NA)
    
    return(diag(x[-1:offset,,drop=FALSE]))
  }
  
  # przekątna NAD główną
  if (offset > 0) {
    if (offset > ncol(x))
      return(NA)
   
    return(diag(x[,-1:-offset,drop=FALSE]))
  }
}

diag2(matrix(1:16, ncol=4), 2)
diag2(matrix(1:12, ncol=3), -2)