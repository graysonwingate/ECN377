# ECON 377 FINAL EXAM MASTER REFERENCE
# Organized by concept, not homework number

##############################
# 1. LOG MODEL INTERPRETATIONS
##############################

# LEVEL-LEVEL
# y=b0+b1*x
# +1 unit x -> b1 units y

# LOG-LEVEL
# log(y)=b0+b1*x
# +1 unit x -> 100*b1 % change in y
100*beta1*dx

# LEVEL-LOG
# y=b0+b1*log(x)
# 1% increase in x -> b1/100 units of y
(beta1/100)*pct_x

# LOG-LOG
# log(y)=b0+b1*log(x)
# 1% increase in x -> beta1% increase in y
beta1*pct_x

##############################
# 2. OLS FORMULAS
##############################
b1 <- cov(x,y)/var(x)
b0 <- mean(y)-b1*mean(x)
yhat <- b0+b1*x
uhat <- y-yhat

# OLS properties
# sum(residuals)=0
# mean(residuals)=0
# sum(x*residuals)=0
# regression passes through sample means

##############################
# 3. VARIANCE / SD
##############################
VarX <- EX2 - EX^2
sd(a*X+b) <- abs(a)*sd(X)
CovXY <- EXY - EX*EY
CorXY <- CovXY/sqrt(VarX*VarY)

##############################
# 4. SIMPLE REGRESSION THEORY
##############################
# Var(b1)=sigma^2/SSTx
# Bigger sigma^2 => larger variance
# Bigger SSTx => smaller variance
# More spread in X => more precise estimates

SSTx <- (n-1)*sx^2
sigma_hat <- sqrt(SSR/(n-2))
se_b1 <- sigma_hat/sqrt(SSTx)

##############################
# 5. MULTIPLE REGRESSION
##############################
yhat <- b0+b1*x1+b2*x2+b3*x3

delta_yhat <- b1*dx1+b2*dx2+b3*dx3

##############################
# 6. OMITTED VARIABLE BIAS
##############################
Bias <- beta2*delta1

# Sign table
# (+)(+) = upward
# (+)(-) = downward
# (-)(+) = downward
# (-)(-) = upward

# No OVB if:
# beta2 = 0
# delta1 = 0

##############################
# 7. MLR ASSUMPTIONS
##############################
# MLR3: No perfect collinearity
# Violations:
# totexpend = expendA + expendB
# income in dollars and thousands
# more IVs than observations

# MLR4: E(U|X)=0
# Fails from omitted relevant variable
# correlated with included X

# MLR5: Homoskedasticity
# Error variance constant

##############################
# 8. STANDARD ERRORS
##############################

df <- n-K-1
sigma_hat <- sqrt(SSR/df)
SSTj <- (n-1)*sd(Xj)^2
Rj2 <- summary(lm(Xj ~ otherXs))$r.squared

se_beta <- sigma_hat/
  sqrt(SSTj*(1-Rj2))

# Multicollinearity
# Rj2 -> 1
# SE -> infinity

##############################
# 9. FREQUENT EXAM COMMANDS
##############################
summary(reg)
coef(reg)
resid(reg)
predict(reg)
confint(reg)

summary(lm(Xj~otherXs))$r.squared
sum(reg$residuals^2)

##############################
# 10. DATASET RECIPES
##############################

# wage1
lm(wage ~ educ)
lm(wage ~ educ + exper)
lm(wage ~ educ + exper + tenure)
lm(log(wage) ~ exper)
lm(log(wage) ~ educ + exper + tenure)

# ceosal1
lm(salary ~ sales)
lm(log(salary) ~ roe)
lm(salary ~ log(sales))
lm(log(salary) ~ log(sales) + roe)

# bwght
lm(bwght ~ cigs)
lm(bwght ~ cigs + faminc)
lm(log(bwght) ~ log(faminc))

# hprice1
lm(price ~ sqrft + bdrms + lotsize)

##############################
# 11. HPRICE1 SE BY HAND
##############################
reg <- lm(price ~ sqrft + bdrms + lotsize,data=hprice1)
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR/84)
SSTj <- sum((hprice1$bdrms-mean(hprice1$bdrms))^2)
Rj2 <- summary(lm(bdrms ~ sqrft + lotsize,data=hprice1))$r.squared
se_bdrms <- sigma_hat/sqrt(SSTj*(1-Rj2))

##############################
# 12. RAPID REVIEW
##############################
# OLS passes through means
# lm() drops NA rows
# OVB = beta2*delta1
# larger SST => smaller variance
# larger sigma^2 => larger variance
# log-level => 100*b1*dx
# level-log => (b1/100)*pctx
# log-log => b1*pctx
# multicollinearity => huge SEs
