## Exercise 2.1 ##

x <- runif(100, 1, 100)
x
mean_x <- round(mean(x), 2)
mean_x
?runif
# generates random deviates of the uniform distribution
# runif(n, min, max)
# the mean_x change because of x value 
set.seed(100)


## Exercise 2.2 ##
# 1. vector x that entails all integers between 1 and 1000
x <- (1:1000)
x <- seq(1,1000,1)
y <- 1000 - x
y
y <- x+y
y


## 