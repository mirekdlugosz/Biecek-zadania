## @knitr wektor-symetryczny1.15

symetryczny <- c(1:20, rep(0, 10), (1:20)*2)
symetryczny <- c(symetryczny, rev(symetryczny))

is.symmetrical <- function(x=NULL) {
  # Algorytm weryfikowania symetryczności wektoru:
  #   1. Tworzymy odwrotność wektoru x, nazwaną y
  #   2. Porównujemy kolejne elementy wektorów x oraz y
  #   3. Pierwszy negatywny wynik porównania świadczy o tym, 
  #      że wektor nie jest symetryczny
  # Tutaj tworzymy wektor wartości logicznych (wyników porównania) i poszukujemy
  # w nim wartości FALSE. Funkcja match zwróci NA, gdy jej nie znajdzie, 
  # więc ostatecznie wszystko sprowadza się do sprawdzenia, czy wynikiem działania
  # jest NA
  if (is.na(match(FALSE, x == rev(x)))) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}