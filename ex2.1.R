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


## Exercise 2.3 ##
n <- 1e4
scale <- 1.5e4
income <- round( rbeta(n=n, shape1=2, shape2=12) * scale, 2)

install.packages('ggplot2')
library(ggplot2)
# Plot the resulting curve
ggplot(data.frame(x = income), aes(x=x)) +
  geom_histogram(color = "#0065BD", fill = "#0065BD", alpha=0.5, bins = 100) +
  scale_x_continuous(breaks = seq(0, scale, 1e3)) + 
  labs(x = "Gross income", 
       y = "Counts") + 
  theme_minimal()

?rbeta
n <- 1e3
scale <- 1.5e3
income <- round( rbeta(n=1000, shape1 = 5, shape2 = 20) * scale, 2)

income_s <- sort(income)
group <- c("Lower 1%", "Lower 50%", "Top 10%", "Top 1%")
p <- c(.1, .5, .9, .99)

boundary <- round(income_s[p*n], 0)

low10_m <- mean( income_s[c(1:(.1*n))] )
low50_m <- mean( income_s[c(1:(.5*n))] )
top10_m <- mean( income_s[c((.9*n):n)] )
top1_m <- mean( income_s[c((.99*n):n)] )

means <-  round( c(low10_m, low50_m, top10_m, top1_m) , 0)

income_summary <- data.frame(group, boundary, means)
income_summary

##       group boundary means
## 1  Lower 1%      618   398
## 2 Lower 50%     1865  1073
## 3   Top 10%     4014  4979
## 4    Top 1%     6125  6737

###
