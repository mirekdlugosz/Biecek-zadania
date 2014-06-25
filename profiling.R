## @knitr profiling.2.10

Rprof("profiler.out", interval = 0.01, memory.profiling=TRUE)
wyniki = NULL
for (i in 1:10000) {
  wektorX <- rnorm(20)
  wektorY <- rnorm(20)
  wyniki[i] <- cor(wektorX, wektorY)
}
Rprof(NULL)
pierwotna <- summaryRprof("profiler.out", memory="both")
print(paste("Pętlę wykonano w ciągu", 
            pierwotna$sampling.time, "sekundy"))
print("Najbardziej czasochłonne funkcje:")
print(pierwotna$by.self[1:10,])

Rprof("profiler.out", interval = 0.01, memory.profiling=TRUE)
N <- 10000
wyniki <- numeric(N)
input <- matrix(rnorm(N*40),ncol=40)
indx <- 1:20
indy <- 21:40

for (i in 0:(N-1)) {
  wyniki[i] <- .Call(stats:::C_cor, 
                     input[i, indx],
                     input[i, indy],
                     4L, FALSE)
}
Rprof(NULL)
poprawiona <- summaryRprof("profiler.out", memory="both")
unlink("profiler.out")

print(paste("Po poprawkach, wykonanie pętli zajmuje",
            poprawiona$sampling.time, "sekund"))
print("Pętla działa o tyle razy szybciej:")
print(pierwotna$sampling.time / poprawiona$sampling.time)