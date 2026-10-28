# 1 - testscore = 12 + 8log(income), what does 8 mean? -- 1% increase in income associated with a rise of about 0.08 points in predicted test score

# 2 - log-level reg. gives log(y) = 0.9 + 0.08x ; what percent does y change when x falls by 2?
100 * 0.08 * (-2)

# 3 - what percent does predicted birth weight change when family income rises by 20%? 
data("bwght")
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
reg
reg$coefficients[2] * 20

# 4 - suppose you draw 1,000 different random samples from same pop. and compute b1hat in each one. If OLS is unbiased (SLR1-4), what is true? -- avg. of 1,000 estimates is close to b1

# 6 - under SLR1-5, var(b1hat) = sigma^2 / SSTx, holding all else fixed, what changes would make var(b1hat) larger? -- larger error variance sigma^2, smaller sample SStx, x values bunched more tightly together(smaller SSTx)

# 7 - simple regression on n = 9 observations has sigmahat = 8.3 and sample sd error of X is Sx = 1.2; find sd error se(b1hat)
n <- 9
sigmahat <- 8.3
sx <- 1.2
SSTx <- (n - 1) * sx^2
sigmahat / sqrt(SSTx)

# 9 - under SLR1-5, regression has sd(b1hat) = 0.82; if sample were 3 times as large, with X values spread out in same way (so SSTx also 3 times larger), what would sd(b1hat) be?
0.82 / sqrt(3)

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