###
myname <- "Tao He"

set.seed(2022)

large_t <- NULL
small_t <- NULL

for(i in 1:1000){
  
  large_hosp <- rbinom(n = 365, size = 45, prob = 0.5)
  
  large_t <- c(large_t, length(which(large_hosp > 0.6*45)))
  
  small_hosp <- rbinom(n = 365, size = 15, prob = 0.5)
  
  small_t <- c(small_t, length(which(large_hosp > 0.6*15)))
  
  i <- i+1
  
}

hist(large_t)

length(large_t)
mean(large_t)
sd(large_t)

hist(small_t)

length(small_t)
mean(small_t)
sd(small_t)

mean_l <- mean(large_t)
sd_l <- sd(large_t)

mean_s <- mean(small_t)
sd_s <- mean(small_t)






