myname <- "Tao He"

set.seed(2022)
space <- c("a","a","a","b","b","c")
simulate <- sample(space, 1000, replace = TRUE)
result <- table(simulate)


prA <- sum(simulate == "a")/1000
prB <- sum(simulate == "b")/1000
prC <- sum(simulate == "c")/1000
sum_pr <- prA + prB + prC
  
# width <- c(1/2, 1/3, 1/6)
# barplot(height = result, width = width)
