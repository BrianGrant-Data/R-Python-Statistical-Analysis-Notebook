
# 1 -----------------------------------------------------------------------


N <- 10  
storage <- rep(NA, N)
storage

for (i in 1:N){
  storage[i] <- 5*i
  cat("i =", i, " and 5*i =", 5*i, " was saved in storage[", i, "]\n")
}

storage


# 2 -----------------------------------------------------------------------

N <- 1024 
storage <- rep(NA, N)
storage

for (i in seq(1, N, by=2)){
  storage[i] <- 5*i
  cat("i =", i, " and 5*i =", 5*i, " was saved in storage[", i, "]\n")
}

storage
