## @knitr wykres.biegunowy1.11

plot.polar <- function(c, limit=100) {
  t <- seq(0, limit, by=0.01)
  r <- 1 + sin(t)
  fi <- c * t
  x <- r * cos(fi)
  y <- r * sin(fi)
  
  plot(x, y, type="l", xlab="", ylab="",
       main=paste("Wykres funkcji w układzie biegunowym dla c = ", c))
}

lapply(c(1, 0.1, 2.2), plot.polar)