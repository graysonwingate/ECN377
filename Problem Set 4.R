# 8
EX <- 5
a <- 3
b <- 3
results <- a * EX + b
results

# 9
EX <- 8
EY <- 3
a <- 2
b <- 2
results <- a * EX + b * EY
results

# 10
EX <- 5
EY <- 8
a <- 4
b <- 3
c <- 4
results <- (a * EX) + (b * EY) - c
results

# 11
EX <- 6
EX2 <- 41
results <- EX2 - (EX)^2
results

# 12
varx <- 8
a <- 2
results <- a^2 * varx
results

# 13
varx <- 8
results <- sqrt(varx)
results

# 14 
varx <- 2
vary <- 2
results <- varx + vary
results

# 15
EXY <- 26
EX <- 4
EY <- 5
results <- EXY - EX * EY
results

# 16
x <- c(2, 3, 1)
y <- c(2, 1, 3)
EX <- mean(x)
EY <- mean(y)
EXY <- mean(x * y)
covXY <- EXY - EX * EY
covXY

# 17
covXY <- 0
a1 <- 3
a2 <- 5
results <- a1 * a2 * covXY
results

# 18
covXY <- -2
sdx <- 3
sdy <- 2
results <- covXY / (sdx * sdy)
results

# 19
varx <- 6
vary <- 5
covXY <- 0
a <- 3
b <- 3
results <- a^2 * varx + b^2 * vary + 2 * a * b * covXY
results

# 20
Y <- c(8, 5, 0, 11)
EY_given_x <- mean(Y)
EY_given_x

# 21
Y <- c(1, 6, 1)
p <- c(0.2, 0.3, 0.5)
EY_given_x <- sum(Y * p)

# 22
EY_given_x <- 7
a <- 2
b <- 3
results <- a * EY_given_x + b
results
