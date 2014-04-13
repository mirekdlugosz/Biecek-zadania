## @knitr funkcja.localMin

localMin <- function(data=NULL) {
  rows <- unique(
    unlist(
      apply(
        data, 2, function(x) 
          if (!is.na(as.numeric(x))) {
            match(x=min(x), x)
          }
      ), use.names=FALSE
    )
  )
  rows <- rows[order(rows, decreasing=FALSE)]
  data[rows, ]
}