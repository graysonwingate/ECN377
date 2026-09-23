# 1  E[U | X] = 0, conditional mean E[Y | X = x]

# 9 - cov(x, y) / var(x)
cov <- 1
var <- 6
cov / var

# 10 - b0 = y - b1x
ybar <- 3
xbar <- 10
b1 <- 8/10
b0 <- ybar - b1 * xbar
b0

# 11 - 
x <- c(2, 7, 1)
y <- c(0, 7, 2)
b1 <- sum((x - mean(x)) * (y - mean(y))) /
  sum((x - mean(x))^2)
b1

# 12 - b0 = y - b1x
x <- c(3, 4, 5)
y <- c(8, 7, 1)
b1 <- sum((x - mean(x)) * (y - mean(y))) / 
  sum((x - mean(x))^2)
b0 <- mean(y) - b1 * mean(x)
b0

# 13 - y = b0 + b1x
b0 <- 6
b1 <- 5/10
x <- 12
yhat <- b0 + b1 * x
yhat

# 14 - predict at x = ?
xbar <- mean(x)
ybar <- mean(y)
b1 <- sum((x - xbar) * (y - ybar)) /
  sum((x - xbar)^2)
b0 <- ybar - b1 * xbar
yhat <- b0 + b1 * 4 
yhat

# 15 - expected colGPA at hsGPA
hsGPA <- 36/10 
colGPA_hat <- 14/10 + (8/10) * hsGPA
colGPA_hat

# 16 - education rises, wage change prediction
b1 <- 5/10
delta_educ <- 9
delta_wage <- b1 * delta_educ
delta_wage

# 17 - E[X] with probability distribution 
x <- c(5, 2, 0)
p <- c(0.2, 0.3, 0.5)
EX <- sum(x * p)
EX

# 18 - cov(X, Y) = E[XY] - E[X] * E[Y] with probability distribution
x <- c(5, 3, 2)
y <- c(4, 2, 2)
p <- c(0.2, 0.3, 0.5)
EX <- sum(x * p)
EY <- sum(y * p)
EXY <- sum(x * y * p)
covXY <- EXY - EX * EY
covXY

# 19 - b1 = cov(X, Y) / var(X) with probability distribution
x <- c(0, 0, 6)
y <- c(8, 8, 4)
p <- c(0.2, 0.3, 0.5)
EX <- sum(x * p)
EY <- sum(y * p)
EXY <- sum(x * y * p)
covXY <- EXY - EX * EY
varX <- sum(x^2 * p) - EX^2
beta1 <- covXY / varX
beta1

# 20 - sample covariance Sxy
x <- c(1, 6, 3)
y <- c(6, 3, 6)
xbar <- mean(x)
ybar <- mean(y)
Sxy <- sum((x-xbar) * (y - ybar)) / (length(x) - 1)
Sxy
