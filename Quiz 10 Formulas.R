# 1 - logyhat = 1.8 + 0.026x1 - 0.013x2 ; x1 rises by 4 and x2 rises by 4, what percent does predicted y change?
100 * (0.026 * 4 + (-0.013) * 4)

# 2 - what percent does predicted wage change when experience rises by 2 years and tenure rises by 1 year, education fixed?
data("wage1")
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
100 * (b[3] * 2 + b[4] * 1)

# 3 - using same reg as above, what is predicted hourly wage in dollars of a worker with 12 yrs educ, 10 yrs exper, 3 yrs tenure
data("wage1")
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
pred_wage <- exp(b[1] + b[2]*12 + b[3]*10 + b[4]*3)
pred_wage

# 4 - OLS multiple reg. of Y on X1, ... , Xk ; reg. passes thru point of sample means, sample cov between each Xj and residuals is 0, sample avg of residuals is 0 

# 6 - multiple regression gives yhat = 4.2 + 1.9x1 - 0.6x2; sample means of IVs are x1bar = 3.6 and x2bar = 10.4; what is sample mean y?
4.2 + 1.9 * 3.6 - 0.6 * 10.4

# 7 - which reg. violate MLR3 (no perfect colinearity) so OLS can't estimate them?
# a reg. with 5 independent variables, estimated on 4 observations 
# voteA on expendA, expendB and totexpend where totexpend = expendA + expendB
# wage on income in dollars and income in thousands of dollars 

# 9 - which situation makes MLR4, E[U | x1, ..., Xk] = 0, fail (so that X variables are endogenous)? 
# a variable that affects Y and is correlated with X1 is left out of the regression

# 11 - b1tilde = b1hat + b2hat * delta1, b1tilde = 0.73, b2hat = 1.23, delta1tilde = -0.33; find multiple regression slope b1hat
0.73 - 1.23 * (-0.33)

# 14 - regress faminc on cigs to get delta1, compute b2hat * delta1tilde
reg1 <- lm(bwght ~ cigs, data = bwght)
reg2 <- lm(bwght ~ cigs + faminc, data = bwght)
reg3 <- lm(faminc ~ cigs, data = bwght)
coef(reg2)["faminc"] * coef(reg3)["cigs"]

# 16 - omitted variable X2 lower Y (b2 < 0) and X2 is negatively correlated with the included X1; what is simple regression slope on X1?
# biased upward because the bias is positive [(-)(-)] = (+) 

# 17 - researcher gives crop yield on fertilizer use across farms, leaving out land quality. better land raises yield and farmers tend to use more fertilizer on better land; what is simple reg slope?
# overstates the effect of fertilizer (upward bias)