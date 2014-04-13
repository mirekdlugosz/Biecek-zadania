## @knitr wykres.funkcji1.12

x <- seq(0,1,by=0.01)
y <- 2 * x^3 - x^2 + 3

curve(2 * x^3 - x^2 + 3, from=0, to=1)
pos <- match(c(0.2, 0.8), x)
points(x[pos], y[pos], pch=c(0,2), col=rainbow(10)[c(1,5)])
text(x[pos], y[pos]+0.075, labels=paste("[",x[pos], ", ", y[pos] ,"]", sep=""))