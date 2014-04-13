## @knitr wykres.biegunowy1.11
helper.t <- seq(0, 90, length.out=1000)
cs <- c(1, 0.1, 2.2)

for (i in seq_along(cs)) {
  plot(-2:2, -2:2, type="n", xlab="", ylab="",
       main=paste("Wykres funkcji w układzie biegunowym dla c =", cs[i]))
  lines(
    (1+sin(helper.t)) * cos(cs[i]*helper.t),
    (1+sin(helper.t)) * sin(cs[i]*helper.t),
    type="l"
  )
}