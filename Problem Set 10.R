# 1 - testscore = 12 + 8log(income), what does 8 mean? -- 1% increase in income associated with a rise of about 0.08 points in predicted test score

# 2 - log-level reg. gives log(y) = 0.9 + 0.08x ; what percent does y change when x falls by 2?
100 * 0.08 * (-2)

# 3 - what percent does predicted birth weight change when family income rises by 20%? 
data("bwght")
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
reg
reg$coefficients[2] * 20

# 4 - suppose you draw 1,000 different random samples from same pop. and compute b1hat in each one. If OLS is unbiased (SLR1-4), what is true? -- avg. of 1,000 estimates is close to b1

# 5 - why do we prefer unbiased estimator with smaller variance var(b1hat)? -- its estimates land closer to b1 from sample to sample, so any one estimate more reliable

# 6 - under SLR1-5, var(b1hat) = sigma^2 / SSTx, holding all else fixed, what changes would make var(b1hat) larger? -- larger error variance sigma^2, smaller sample SStx, x values bunched more tightly together(smaller SSTx)

# 7 - simple regression on n = 9 observations has sigmahat = 8.3 and sample sd error of X is Sx = 1.2; find sd error se(b1hat)
n <- 9
sigmahat <- 8.3
sx <- 1.2
SSTx <- (n - 1) * sx^2
sigmahat / sqrt(SSTx)

# 8 - regression uses five X values x = (5, 7, 8, 11, 12) and SSR = 52; find sd error se(b1hat)
x <- c(5, 7, 8, 11, 12)
SSR <- 52
n <- length(x)
sigmahat <- sqrt(SSR / (n - 2))
SSTx <- sum((x - mean(x))^2)
sigmahat / sqrt(SSTx)

# 9 - under SLR1-5, regression has sd(b1hat) = 0.82; if sample were 3 times as large, with X values spread out in same way (so SSTx also 3 times larger), what would sd(b1hat) be?
0.82 / sqrt(3)

# 10 - compute standard error se(b1hat) by hand from sigmahat and SSTx
data("ceosal1")
reg <- lm(salary ~ roe, data = ceosal1)
sigmahat <- sqrt(sum(resid(reg)^2) / (nobs(reg) - 2))
SSTx <- sum((ceosal1$roe - mean(ceosal1$roe))^2)
se_b1 <- sigmahat / sqrt(SSTx)
se_b1

# 11 - in wagehat = b0hat + b1hat * educ + b2hat * exper, what does b1hat measure? -- predicted change in wage from one more year of education, holding experience fixed

# 12 - multiple regression gives yhat = -2 + 0.8x1 + 1.4x2; find predicted value yhat at x1 = 13 and x2 = 19
-2 + 0.8 * 13 + 1.4 * 19

# 13 - multiple regression gives yhat = 2 + 3.8x1 - 0.7x2; if x1 rises by 1 and x2 rises by 4, how much does yhat change? 
3.8 * 1+ (-0.7) * 4

# 14 - what is predicted hourly wage of a worker with 14 years of education, 10 years of experience, and 5 years of tenure?
data("wage1")
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b <- coef(reg)
yhat <- b[1] + b[2] * 14 + b[3] * 10 + b[4] * 5
yhat

# 15 - using reg. wage on educ, exper, and tenure; by how much does predicted hourly wage change when tenure rises by 3 years, holding educ and exper fixed?
data("wage1")
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b <- coef(reg)
b["tenure"] * 3

# 16 - by about what percent does predicted salary change when return on equity rises by about 10 points, holding sales fixed? 
reg <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
reg$coefficients
100 * reg$coefficients[3] * 10

# 17 - using same reg. as 16, what is predicted salary, in thousands of dollars, of a CEO whose firm has sales of 5,000 (5 billion), and roe of 15?
reg <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
b <- coef(reg)
exp(b[1] + b[2] * log(5000) + b[3] * 15)

# 18 - formula 2.3, multiple regression of Y on X1 and X2 gives b1hat = 0.25 and b2hat = 1.44, and slope from regressing X2 on X1 is detla1 = 0.11; find simple regression slope b1~ from regressing Y on X1 alone. 
0.25 + 1.44 * 0.11

# 19 - in pop, Y = b0 + B1 * X1 + B2 * X2 + U with b2 = 1.53, you omit X2 and regress Y on X1 alone and the slope from regressing X2 on X1 is delta1 = 0.21; what is bias of simle regression slope, bias(b1~) = E[b1~] - b1?
1.53 * 0.21

# 20 - omitted variable X2 lowers Y (b2 < 0), and X2 is positively correlated with X1; the simple regression slope on X1 is: biased downward

# 21 - compute b2hat * delta1, the exper coefficient from the first regression times the educ slope from the second. 
data("wage1")
reg1 <- lm(wage ~ educ + exper, data = wage1)
reg2 <- lm(exper ~ educ, data = wage1)
reg1$coefficients
reg2$coefficients
reg1$coefficients[3] * reg2$coefficients[2]
