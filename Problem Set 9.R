# 1 - only b0 changes in a log-log regression log(salary)

# 2 - log-level regression log(wage) on tenure; given slope, what percent does wage rise with one more year 
beta1 <- 0.0063
dx <- 12
100 * beta1 * dx

# 3 - if salary is measured in dollars instead (every salary times 1000); what is new intercept? 
5.17 + log(1000)

# 4 - in which model is the slope read as %deltay = 100 * b1 * deltax; log-level, log(y) = b0 + b1x + u 

# 5 - given log-log regression log(y) = 4.3 + 0.26log(x), what percent does y change when x falls by 18%?
0.26 * (-18)

# 6 - by about what percent does predicted salary change when return on equity rises by 5 points?
reg <- lm(log(salary) ~ roe, data = ceosal1)
beta1 <- coef(reg)[2]
100 * beta1 * 5

# 7 - by about how many thousand dollars does predicted salary change when sales rise by 10%? 
reg <- lm(salary ~ log(sales), data = ceosal1)
beta1 <- reg$coefficients[2]
deltax <- 10
(beta1 / 100) * deltax

# 8 - Theorum 2.1 says under SLR1-SLR4, E[b1hat] = b1; this means that averaged over many random samples, b1hat = b1

# 10 - if every worker has exactly 12 years of education and you regress wage on eductation, SLR3 fails because all x values are the same so OLS slope cannot be computed

# 11 - sigma^2 / SSTx = var(b1)
27 / 77

# 12 - under SLR1-SLR5, find sd(b1) given error sd = 20, n = 6, Sx^2 = 2
n <- 6
sx2 <- 2
sigma <- 20
sstx <- (n - 1) * sx2
sigma / sqrt(sstx)

# 13 - more spread-out values of X (a larger SSTx) makes Var(b1) smaller, holding all else fixed 

# 14 - under SLR1-SLR5, find sd(b1) given error sd = 4, x = (4, 6, 8, 9, 10)
x <- c(4, 6, 8, 9, 10)
sigma <- 4
sstx <- sum((x - mean(x))^2)
sigma / sqrt(sstx)

# 15 - find the estimate of the error variance sigma^2 given n = 49, SSr = 164
164 / (49 - 2)

# 16 - find standard error se(b1) given n = 9, SSR = 346, SSTx = 7
sigma_hat <- sqrt(346 / (9-2))
se <- sigma_hat / sqrt(7)
se

# 17 - in a regression of food spending on income, the spread of food spending around the regression line grows as income grows; this means SLR5 fails and theorem 2.2 no longer applies (OLS still unbiased)

# 18 - what is sigma, the standard error of the regression 
reg <- lm(wage ~ educ, data = wage1)
sqrt(sum(reg$residuals^2) / (nrow(wage1) - 2))

# 19 - what is SSTx for educ, the total sum of squares of the explanatory variable
(nrow(wage1) - 1) * var(wage1$educ)
