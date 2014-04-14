## @knitr wektor-symetryczny1.15

symetryczny <- c(1:20, rep(0, 10), (1:20)*2)
symetryczny <- c(symetryczny, rev(symetryczny))

is.symmetrical <- function(x=NULL) {
  # Algorytm weryfikowania symetryczności wektoru:
  #   1. Tworzymy odwrotność wektoru x, nazwaną y
  #   2. Porównujemy kolejne elementy wektorów x oraz y
  #   3. Pierwszy negatywny wynik porównania świadczy o tym, 
  #      że wektor nie jest symetryczny
  # Tutaj tworzymy wektor wartości logicznych (wyników porównania) i sprawdzamy, 
  # czy wszystkie są równe TRUE. Jeżeli tak, wynikiem będzie TRUE. W
  # przeciwnym wypadku wynikiem będzie FALSE. Jest to o tyle wygodne, że nie
  # trzeba dodatkowo opakowywać zwracanych wartości.
  all( x == rev(x) )
}