# 1 - in formula se(bhatj) = sigmahat / sqrt(SSTj(1 - Rj^2)), what is Xj? -- IV whose coefficient Bjhat we was standard error of

# 2 - in wage = B0 + B1 * educ + B2 * exper + B3 * tenure + U, you want B2hat (se of exper). Which regression gives Rj^2? -- regression of exper on educ and tenure

# 3 - standard error of regression is sigmahat = sqrt(SSR / (n - K - 1)), what does sigmahat estimate? -- sigma, the standard deviation of error U

# 4 - multiple regression with K = 4 IVs, estimated on n = 48 observations has SSR = 2,692. Find standard error of regression, sigmahat
SSR <- 2692
n <- 48
K <- 4
sigmat_hat <- sqrt(SSR / (n - K - 1))
sigmat_hat

# 5 - in sample of n = 43 observations, the IV Xj has sample standard deviation Sxj = 5.9. Find SSTj
n <- 43
Sx <- 5.9
SSTj <- (n - 1) * Sx^2
SSTj

# 6 - multiple regression has sigmahat = 5.1. For IV Xj, SSTj = 363 and regressing Xj on other IVs gives Rj^2 = 0.74. Find se(Bjhat) 
sigma_hat <- 5.1
SSTj <- 363
Rj2 <- 0.74
se <- sigma_hat / sqrt(SSTj * (1 - Rj2))
se

# 7 - holding sigmahat and SSTj fixed, what happens to se(Bjhat) as Rj^2 gets close to 1 (Xj becomes nearly linear function of other IVs)? -- it grows without bound (multicollinearity)

# 8 - for hprice1, find standard error of bdrms coefficient by hand, so here Xj = bdrms. First, how many degrees of freedom does the regression have?
data("hprice1")
reg <- lm(price ~ sqrft + bdrms + lotsize, data = hprice1)
k <- 3 ## k = # of IVs
n <- nrow(hprice1)
df <- n - k - 1
df

# 9 - for hprice1, compute standard error of regression, sigmahat = sqrt(SSR / df)
reg <- lm(price ~ sqrft + bdrms + lotsize, data = hprice1)
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR / 84) ## (SSR / df)
sigma_hat

# 10 - for hprice1, compute SSTj for Xj = bdrms, the total variation of bdrms around its mean
SSTj <- sum((hprice1$bdrms - mean(hprice1$bdrms))^2)
SSTj

# 11 - for hprice1, compute Rj^2 for Xj = bdrms, the R^2 from regressing bdrms on other IVs
Rj2 <- summary(lm(bdrms ~ sqrft + lotsize, data = hprice1))$r.squared
Rj2

# 12 - for hprice1, compute se(Bjhat) = sigmahat / sqrt(SSTj * (1 - Rj^2)) for bdrms coefficient
se_bdrms <- sigma_hat / sqrt(SSTj * (1 - Rj2))
se_bdrms
summary(reg)

# 13 - for hprice1, find se(Bjhat) using summary()
summary(reg)$coefficients[3, 2]

# 14 - print summary(reg). Near the bottom is a line "residual standard error:... on 84 degrees of freedom". which of your answers does it match?
summary(reg) ## matches sigmahat, and its degrees of freedom match problem 8 

# 15 - missing data: some datasets have missing values (NA). lm() silently drops every row with an NA in any variable of regression. If Y (or other IV) has missing values but Xj does not, and you compute SSTj by hand from all the rows of Xj, what happens?
## hand computed standard error can differ from summary(reg) because SSTj uses rows the regression droped. COmpute every piece on the same rows the regression used
