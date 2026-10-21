# 14 - find new OLS slope given b1, every value divided by 1000
beta1 <- 0.14
new_beta1 <- beta1 * 1000
new_beta1

# 17 - find what percent y changes when x rises by 1 given log(y)hat 
beta1 <- 0.02
pct_change <- 100 * beta1 * 1
pct_change

# 19 - by how many units does y change when x rises by 17% given yhat
beta1 <- 57.2
pct_x <- 17
deltay <- (beta1 / 100) * pct_x
deltay

# 1 - only b0 changes in a log-log regression log(salary)


# 5 - given log-log regression log(y) = 4.3 + 0.26log(x), what percent does y change when x falls by 18%?
0.26 * (-18)

# 6 - by about what percent does predicted salary change when return on equity rises by 5 points?
reg <- lm(log(salary) ~ roe, data = ceosal1)
beta1 <- coef(reg)[2]
100 * beta1 * 5

# 9 - in wage = b0 + b1 * educ + U, the worker's ability which raises wages and tends to be higher for people with more eduction, is most likely to contribute to OVB to the OLS slope on educ 

# 13 - more spread-out values of X (a larger SSTx) makes Var(b1) smaller, holding all else fixed 

# 14 - under SLR1-SLR5, find sd(b1) given error sd = 4, x = (4, 6, 8, 9, 10)
x <- c(4, 6, 8, 9, 10)
sigma <- 4
sstx <- sum((x - mean(x))^2)
sigma / sqrt(sstx)

# 15 - find the estimate of the error variance sigma^2 given n = 49, SSr = 164
n <- 49
SSR <- 164
s2 <- SSR / (n - 2)
s2

# 16 - find standard error se(b1) given n = 9, SSR = 346, SSTx = 7
sigma_hat <- sqrt(346 / (9-2))
se <- sigma_hat / sqrt(7)
se
