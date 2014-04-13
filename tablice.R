## @knitr tablice1.2 

katy <- c(0, 30, 45, 60, 90)
radiany <- katy * (pi/180)

tablice.trygonometryczne <- data.frame(
  sinus = sin(radiany),
  cosinus = cos(radiany),
  tangens = tan(radiany),
  cotangens = 1/tan(radiany)
  )

tablice.trygonometryczne[5,c(3,4)] <- Inf # tangens kąta 90° nie istnieje
tablice.trygonometryczne <- as.data.frame(
  lapply(tablice.trygonometryczne, function(x) sprintf("%6.5f", x))
  )
row.names(tablice.trygonometryczne) <- katy

# Drukujemy tablice, abyśmy mieli co pokazać w raporcie
tablice.trygonometryczne
