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
