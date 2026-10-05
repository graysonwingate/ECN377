                              ## Problem Set 2 

# 11 - y = b0 + b1 * x, a change gives deltaY = b1 * deltax
b0 <- 15
b1 <- 8
deltax <- 3
deltay <- b1 * deltax
deltay

# 12 - y = b0 + b1 * x
b0 <- 1
b1 <- 7
x <- 8
y <- b0 + b1 * x 
y

# 13 - deltay = b1 * deltax1 + b2 * deltax2 
b0 <- 18
b1 <- 9
b2 <- 2
deltax1 <- 4
deltax2 <- 0
deltay <- b1 * deltax1 + b2 * deltax2
deltay

# 15 - slope b1 = deltay / deltax 
deltax <- 3
deltay <- 27
b1 <- deltay / deltax
b1

# 16 - percent change = (xnew - xold) / xold * 100
pchange <- (78 - 41) / 41
pchange

# 18 - sample variance Sx^2 
x <- c(1, 7, 4)
var(x)

# 19 - sample standard deviation Sx
x <- c(9, 2, 7)
sd(x)

# 20 - sample covariance Sxy 
x <- c(1, 4, 6)
y <- c(4, 3, 3)
cov(x, y)

                              ## Problem Set 3 

# 8 - sample mean of xbar
x <- c(7, 8, 6)
mean(x)

# 9 - sample variance Sx^2 
x <- c(0, 8, 0)
var(x)

# 10 - sample standard deviation Sx
x <- c(6, 6, 6)
sd(x)

# 11 - sample covariance Sxy 
x <- c(3, 6, 2)
y <- c(3, 0, 6)
cov(x, y)

# 12 - sample correlation
sxy <- 0
sx <- 3
sy <- 5
p <- sxy / (sx * sy)
p

# 13 - sample correlation
x <- c(5, 8, 6)
y <- c(5, 5, 2)
cor(x, y)

# 14 - E[X] and probability 
x <- c(7, 6)
p <- c(0.5, 0.5)
sum(x * p)

# 15 - E[X^2] 
x <- c(8, 4)
p <- c(0.5, 0.5)
sum(x^2 * p)

# 16 - E[X] and random variable X
x <- c(4, 3, 4)
p <- c(1/3, 1/3, 1/3)
sum(x* p)

# 17 - E[X^2] and X
x <- c(6, 6, 8)
p <- c(1/3, 1/3, 1/3)
sum(x^2 * p)

# 18 - E[X] with different probabilities
x <- c(2, 3)
p <- c(5/10, 5/10)
sum(x * p)

# 19 - E[X^2] 
x <- c(10, 4)
p <- c(6/10, 4/10)
sum(x^2 * p)

# 20 - E[X]
x <- c(9, 5, 5)
p <- c(0.2, 0.5, 0.3)
sum(x * p)

# 21 - E[X^2]
x <- c(4, 9, 3)
p <- c(0.2, 0.5, 0.3)
sum(x^2 * p)

                              ## Problem Set 4 

# 8 - expectation is linear, find E[aX + b] 
EX <- 5
a <- 3
b <- 3
results <- a * EX + b
results

# 9 - Find E[aX + bY] = aE[X] + bE[Y]
EX <- 8
EY <- 3
a <- 2
b <- 2
results <- a * EX + b * EY
results

# 10 - find E[aX + bY - c] = aE[X] + bE[Y] - c
EX <- 5
EY <- 8
a <- 4
b <- 3
c <- 4
results <- (a * EX) + (b * EY) - c
results

# 11 - find Var(X) = E[X^2] - (E[X])^2 
EX <- 6
EX2 <- 41
results <- EX2 - (EX)^2
results

# 12 - Var(aX + b) = a^2Var(X) 
varx <- 8
a <- 2
results <- a^2 * varx
results

# 13 - sd(X) = sqrt(Var(X)) 
varx <- 8
results <- sqrt(varx)
results

# 14 - Var(X + Y) = Var(X) + Var(Y) 
varx <- 2
vary <- 2
results <- varx + vary
results

# 15 - COV(X, Y) = E[XY] - E[X] * E[Y] 
EXY <- 26
EX <- 4
EY <- 5
results <- EXY - EX * EY
results

# 16 - Cov(X, Y) = E[XY] - E[X] * E[Y] 
x <- c(2, 3, 1)
y <- c(2, 1, 3)
EX <- mean(x)
EY <- mean(y)
EXY <- mean(x * y)
covXY <- EXY - EX * EY
covXY

# 17 - covariance property: Cov(a1X + b1, a2Y + b2) = a1a2 * Cov(X, Y)
covXY <- 0
a1 <- 3
a2 <- 5
results <- a1 * a2 * covXY
results

# 18 - Cor(X, Y) = Cov(X, Y) / (sd(X) * sd(Y)) 
covXY <- -2
sdx <- 3
sdy <- 2
results <- covXY / (sdx * sdy)
results

# 19 - Var and Cov combine
varx <- 6
vary <- 5
covXY <- 0
a <- 3
b <- 3
results <- a^2 * varx + b^2 * vary + 2 * a * b * covXY
results

# 20 - find E[Y | X = x], the subgroup average
Y <- c(8, 5, 0, 11)
EY_given_x <- mean(Y)
EY_given_x

# 21 - given X = x, find E[Y | X = x] 
Y <- c(1, 6, 1)
p <- c(0.2, 0.3, 0.5)
EY_given_x <- sum(Y * p)

# 22 - conditional expectation also linear, a * EY_given_x + b 
EY_given_x <- 7
a <- 2
b <- 3
results <- a * EY_given_x + b
results

                              ## Problem Set 5

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

                              ## Problem Set 6

# 1 - In OLS, Yhat = B0bat + B1hat * Xi = PREDICTION of Y at Xi

# 2 - Uihat = Yi - Yihat

# 4 - R^2 is fraction of sample variation in Y explained by X 

# 3 - Positive Residual means OLS: under-predicted Yi (actual > fitted)

# 5 - SST = SSE + SSR 

# 7 - R^2 close to 0 means OLS line explains little of variation in Y

# 8 - OLS always on regression line 

# 9 - OLS Slope B1 
x <- c(2, 3, 5)
y <- c(3, 1, 6)
sum((x-mean(x))*(y - mean(y))) / sum((x - mean(x))^2)
# OR
model <- lm(y ~ x)
model

# 10 - OLS Intercept B0hat = Ybar - B1hat * Xbar 
x <- c(8, 8, 2)
y <- c(2, 3, 4)
b1 <- sum((x - mean(x)) * (y - mean(y))) / sum((x - mean(x))^2)
b0 <- mean(y) - b1 * mean(x)
b0

# 11 - OLS line yhat = B0hat + B1hat * x 
x <- c(5, 6, 8)
y <- c(0, 6, 8)
b1 <- sum((x - mean(x)) * (y - mean(y))) / sum((x - mean(x))^2)
b0 <- mean(y) - b1 * mean(x)
yhat <- b0 + b1 * 3 
yhat

# 12 - fitted value of yhat at x
x <- 6
yhat <- 7 + 8/10 * x
yhat

# 13 - uhat = y - yhat (residual)
x <- 12
y <- 19
yhat <- 1 + 8/10 * x
uhat <- y - yhat
uhat

# 14 - deltayhat - B1hat * deltax (fitted slope)
B1hat <- 8/10
deltax <- 7
deltayhat <- B1hat * deltax
deltayhat

# 15 - SSR = SUM(Yi - Yihat)^2 
x <- c(5, 3, 10)
y <- c(11, 10, 9)
yhat <- 0 + 5/10 * x
SSR <- sum((y - yhat)^2)
SSR

# 16 - SST = SSE + SSR 
SST <- 238 
SSR <- 112
SSE <- SST - SSR
SSE

# 17 - R^2 = (SSE / SST) = (1 - (SSR / SST)) 
SST <- 206
SSR <- 70
R2 <- 1 - SSR / SST
R2

# 18 - R^2 = (SSE / SST) = (1 - (SSR / SST))
SSE <- 40
SST <- 264
R2 <- SSE / SST
R2

# 19 - variation of Y unexplained (SSE / SST)
SST <- 225
SSR <- 119
unexplained <- SSR / SST
unexplained

# 20 - find SSR given SST and R^2
SST <- 302
R2 <- 25/100
SSR <- SST * (1 - R2)
SSR

                              ## Problem Set 7

library(wooldridge)
data("wage1")
data("bwght")

# 1 - total workers in wage1 sample
wage1
nrow(wage1)

# 2 - sample mean of hourly wage
mean(wage1$wage)

# 3 - sample standard deviation of years of education
sd(wage1$educ)

# 4 - OLS regression of wage on educ
reg <- lm(wage ~ educ, data = wage1)
reg
b1 <- reg$coefficients[2]

# 5 - save intercept of regression from question 4 as b0
b0 <- reg$coefficients[1]
b0

# 6 - predicted hourly wage at educ = 14, b0 + b1 * educ
b0 + b1 * 14

# 7 - change in hourly wage when education rises, b1 * deltaEDUC
b1 * 2

# 8 - sum of squared residuals SSR = sum(Ui^2)
SSR <- sum(reg$residuals^2)
SSR

# 9 - R^2 for regression of wage on educ from # 4 and SSR from # 8, R^2 = 1 - SSR/SST
SST <- sum((wage1$wage - mean(wage1$wage))^2)
R2 <- 1 - (SSR / SST)
R2
summary(reg)$r.squared

# 10 - how many ounces does predicted bwght at 5 cigarettes more per day 
reg2 <- lm(bwght ~ cigs, data =  bwght)
reg2
b1 <- reg2$coefficients[2] * 5
b1

# 11 - CHALLENGE, NOT ON EXAM
mean(wage1$wage[wage1$educ == 16])