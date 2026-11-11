############################################################
################ ECON 377 EXAM CHEAT SHEET #################
############################################################

############################################################
# MOST TESTED FORMULAS
############################################################

# Variance
VarX <- EX2 - EX^2

# Covariance
CovXY <- EXY - EX*EY

# Correlation
CorXY <- CovXY / sqrt(VarX * VarY)

# SST
SST <- (n - 1)*s^2

# Residual Variance
sigma2_hat <- SSR/(n - K - 1)

# Residual Standard Error
sigma_hat <- sqrt(SSR/(n - K - 1))

# Multiple Regression SE
se_beta <- sigma_hat/sqrt(SSTj*(1-Rj2))

# Omitted Variable Bias
Bias <- beta2*delta1

############################################################
# INTERPRETING REGRESSIONS
############################################################

# LEVEL-LEVEL
# y = b0 + b1*x
# +1 unit of x => b1 units of y

# LOG-LEVEL
# log(y) = b0 + b1*x
# +1 unit x => 100*b1 percent change in y

# LEVEL-LOG
# y = b0 + b1*log(x)
# 1% increase in x => b1/100 units of y

# LOG-LOG
# log(y) = b0 + b1*log(x)
# 1% increase in x => b1% increase in y

############################################################
# SIMPLE REGRESSION
############################################################

b1 <- cov(x,y)/var(x)
b0 <- mean(y) - b1*mean(x)
yhat <- b0 + b1*x
uhat <- y - yhat

############################################################
# OLS PROPERTIES
############################################################

# sum(resid(reg)) = 0
# mean(resid(reg)) = 0
# sum(x*resid(reg)) = 0
# OLS line passes through sample means

############################################################
# OMITTED VARIABLE BIAS
############################################################

Bias <- beta2*delta1

# (+)(+) = upward
# (+)(-) = downward
# (-)(+) = downward
# (-)(-) = upward

############################################################
# STANDARD ERRORS
############################################################

df <- n - K - 1
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR/df)
SSTj <- (n-1)*sd(Xj)^2
Rj2 <- summary(lm(Xj ~ other_Xs))$r.squared
se_beta <- sigma_hat/sqrt(SSTj*(1-Rj2))

############################################################
# MULTICOLLINEARITY
############################################################

# Rj2 -> 1
# se_beta -> infinity

############################################################
# ASSUMPTIONS
############################################################

# MLR3: No perfect collinearity
# MLR4: E(U|X)=0
# MLR5: Homoskedasticity

############################################################
# RAPID REVIEW
############################################################

# OVB = beta2*delta1
# Larger SST => smaller variance
# Larger sigma^2 => larger variance
# lm() drops NAs
# log-level: 100*b1*dx
# level-log: (b1/100)*pctx
# log-log: b1*pctx
