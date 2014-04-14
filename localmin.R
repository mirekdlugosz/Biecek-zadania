## @knitr funkcja.localMin

localMin <- function(data=NULL) {
  rows <- unique(
    vapply(
      data, function(x) {
        ifelse(is.numeric(x), match(min(x), x), 0)
      },
      USE.NAMES=FALSE, FUN.VALUE=numeric(1)
    )
  )
  data[sort(rows, decreasing=FALSE), ]
}