## @knitr moneyindeks2.9

library(XML)

money.pl.tree <- htmlTreeParse("moneypl-index.html", useInternalNodes=TRUE)
money.pl.raw.data <- unlist(
    xpathApply(money.pl.tree, '//*[@id="tgpw"]/tr[not(@class)]', xmlValue)
  )

money.pl.index <- setNames(
    as.data.frame(do.call(rbind, 
                  strsplit(money.pl.raw.data, "[[:space:]]+")[1:4])
                  ),
    c("Indeks", "Wartość", "Zmiana")
  )
money.pl.index