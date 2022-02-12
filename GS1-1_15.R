myname <- "Tao He"

set.seed(2022)

# 82 games, each players 20 shots, 1000 players
num_games <- 82
num_shots <- 20
num_players <- 1000

# simulation

h5 <- data.frame()

for(i in 1:num_players){
  
  for(j in 1:num_games){
    
    x <- sample(0:1, num_shots, rep = T)
    
    xr = rle(x)
    
    h5[j,i] = sum((xr$lengths >= 5) & (xr$values == 1))
    
  }
}

h5[h5 > 0] <- 1

h5 <- apply(h5, 2, mean)

prop5_82_mean <- mean(h5)

prop5_82_sd <- sd(h5)

# much shorted season with 10 games

new_num_games <- 10

new_h5 <- data.frame()

for(i in 1:num_players){
  
  for(j in 1:new_num_games){
    
    x <- sample(0:1, num_shots, rep = T)
    
    xr = rle(x)
    
    new_h5[j,i] = sum((xr$lengths >= 5) & (xr$values == 1))

  }
}

new_h5[new_h5 > 0] <- 1

new_h5 <- apply(new_h5, 2, mean)

prop5_10_mean <- mean(new_h5)

prop5_10_sd <- sd(new_h5)
