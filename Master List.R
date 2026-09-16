# E[aX + b] = aE[X] + b
EX <- 5
a <- 3
b <- 3
results <- a * EX + b
results

# E[aX + bY] = aE[X] + bE[Y] 
EX <- 8
EY <- 3
a <- 2
b <- 2
results <- a * EX + b * EY
results

# E[aX + bY -c] = aE[X] + bE[Y] - c
EX <- 5
EY <- 8
a <- 4
b <- 3
c <- 4
results <- (a * EX) + (b * EY) - c
results

# Var(X) = E[X^2] - (E[X])^2
EX <- 6
EX2 <- 41
results <- EX2 - (EX)^2
results

# Var(aX + b) = a^2Var(X) 
varx <- 8
a <- 2
results <- a^2 * varx
results

# sd(x) = sqrt(Var(X)) 
varx <- 8
results <- sqrt(varx)
results

# Var(X + Y) = Var(X) + Var(Y) 
varx <- 2
vary <- 2
results <- varx + vary
results

# Cov(X,Y) = E[XY] - E[X] * E[Y]
EXY <- 26
EX <- 4
EY <- 5
results <- EXY - EX * EY
results

# Cov(X,Y) = E[XY] - E[X] * E[Y]
x <- c(2, 3, 1)
y <- c(2, 1, 3)
EX <- mean(x)
EY <- mean(y)
EXY <- mean(x * y)
covXY <- EXY - EX * EY
covXY

# Cov(a1X + b1, a2Y + b2) = a1*a2*Cov(X,Y) 
covXY <- 0
a1 <- 3
a2 <- 5
results <- a1 * a2 * covXY
results

# Cor(X,Y) = Cov(X,Y) / (sd(X) * sd(Y)) 
covXY <- -2
sdx <- 3
sdy <- 2
results <- covXY / (sdx * sdy)
results

# 20 - Var(aX + bY) = a^2 * var(X) * var(Y) + 2*a*b*cov(XY)
varx <- 6
vary <- 2
covXY <- 0
a <- 1
b <- 1
results <- a^2 * varx + b^2 * vary + 2 * a * b * covXY
results

# E[Y | X = x] 
Y <- c(8, 5, 0, 11)
EY_given_x <- mean(Y)
EY_given_x

# E[Y | X = x]
Y <- c(1, 6, 1)
p <- c(0.2, 0.3, 0.5)
EY_given_x <- sum(Y * p)

# E[aY + b | X = x] = aE[Y | X = x] + b
EY_given_x <- 7
a <- 2
b <- 3
results <- a * EY_given_x + b
results