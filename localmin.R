## @knitr funkcja.localMin

localMin <- function(data=NULL) {
  rows <- unique(
    unlist(
      lapply(
        data, function(x) {
          if (is.numeric(x)) {
            match(min(x), x)
          }
        }
      ), use.names=FALSE
    )
  )
  rows <- rows[order(rows, decreasing=FALSE)]
  data[rows, ]
}