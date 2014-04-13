## @knitr funkcje1.10

poczatek <- function(thing=NULL, k=NULL) {
  UseMethod("poczatek")
}

poczatek.default <- function(thing=NULL, k=NULL) {
  return(thing[1:k])
}
poczatek.matrix <- function(thing=NULL, k=NULL) {
  return(thing[1:k, 1:k]) 
}

poczatek(seq(1,100), 4)
poczatek(matrix(seq(1,100), ncol=10), 4)