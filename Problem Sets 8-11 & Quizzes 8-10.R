          # Problem Set 8 

# test score = b0 + b1classsize + U, zero conditional mean assumption fails because avg U changes with class size

# OLS estimates b0hat, b1hat are least squares estimates; residuals must equal 0, OLS must be smallest 

# var(X) = E[X]^2 and sd(aX + b) = |a|sd(X); given E[X] and E[X]^2, find sd of 3X - 4
EX <- 4
EX2 <- 20
varx <- EX2 - EX^2
sd_3X_minus4 <- abs(3) * sqrt(varx)
sd_3X_minus4

# var(aX + bY) = a^2var(X) + b^2var(Y) + 2abcov(x, y); given var(X) and cov(x, y), find var(2X - 3Y)
varx <- 8
vary <- 5
covxy <- -1.5
var_2x_minus_3y <- 2^2 * varx + (-3)^2 * vary + 2 * 2 * (-3) * covxy
var_2x_minus_3y

# find cor(X, Y) given join distribution; cov(x, y) = E[XY] - E[X] * E[Y], cor(x, y) = cov(x, y) / (sd(X) * sd(Y))
x <- c(2, 4, 5, 8)
y <- c(2, 7, 4, 6)
p <- c(0.2, 0.3, 0.4, 0.1)
EX <- sum(x * p)
EY <- sum(y * p)
EXY <- sum(x * y * p)
covxy <- EXY - EX * EY
varx <- sum(x^2 * p) - EX^2 
vary <- sum(y^2 * p) - EY^2
corxy <- covxy / sqrt(varx * vary)
corxy

# for sample x, regress y on x by OLS and find the residual of the third observation
x <- c(4, 6, 7, 8, 10)
y <- c(4, 2, 10, 6, 6)
b1 <- cov(x, y) / var(x)
b0 <- mean(y) - b1 * mean(x)
y[3] - (b0 + b1 * x[3])

# OLS regression on six observations given 5 residuals, find the sixth 
res <- c(2.1, 0.4, 1.1, 2.1, 0.3)
-sum(res)

# for sample x, regress y on x by OLS and compute the summation xiuhati; OLS property says always = 0 
x <- c(1, 4, 6, 8, 13, 15)
y <- c(9, 7, 8, 7, 10, 3)
sum(x * resid(lm(y ~ x)))

# find SSR given SSE and R^2; R^2 = SSE / SST gives SST, SST = SSE + SSR
SSE <- 162
R2 <- 0.88
SSR <- SSE / R2 - SSE
SSR

# find total SST given n and sample variance sy^2
n <- 17
sy2 <- 19
SST <- sy2 * (n - 1)
SST

# what is the oLS residual of worker in row 12
data(wage1)
reg <- lm(wage ~ tenure, data = wage1)
reg$residuals[12]

# find sample mean of y given OLS regression intercept b0, slope b1, and sample mean xbar
b0 <- 6
b1 <- 1.2
xbar <- 9
ybar <- b0 + b1 * xbar
ybar

# find new OLS slope given b1, every value multiplied by 10
beta1 <- 1.95
new_beta1 <- beta1 * 10
new_beta1

# find new OLS slope given b1, every value divided by 1000
beta1 <- 0.14
new_beta1 <- beta1 * 1000
new_beta1

# in a regression of y on x, every value of x is multiplied by 10; means slope is divided by 10, intercept and R^2 do not change

# if salary measured in $, what is OLS slope
data("ceosal1")
reg1 <- lm(salary ~ sales, data = ceosal1)
reg1$coefficients[2] * 1000

# find what percent y changes when x rises by 1 given log(y)hat 
beta1 <- 0.02
pct_change <- 100 * beta1 * 1
pct_change

# find what percent y changes when x rises by 13% given log(y)hat
beta1 <- 1.18
pct_x <- 13
pct_y <- beta1 * pct_x
pct_y

# by how many units does y change when x rises by 17% given yhat
beta1 <- 57.2
pct_x <- 17
deltay <- (beta1 / 100) * pct_x
deltay

# given log(rent)hat = 2.1 + 0.45log(income), the 0.45 means 1% rise in income is associated with a 0.45% rise in rent

# by what percent does predicted wage change with 10 more years of experience; use wage1
data("wage1")
reg1 <- lm(log(wage) ~ exper, data = wage1)
answer <- reg1$coefficients[2] * 100 * 10
answer

          # Problem Set 9

# only b0 changes in a log-log regression log(salary)

# log-level regression log(wage) on tenure; given slope, what percent does wage rise with one more year 
beta1 <- 0.0063
dx <- 12
100 * beta1 * dx

# if salary is measured in dollars instead (every salary times 1000); what is new intercept? 
5.17 + log(1000)

# in which model is the slope read as %deltay = 100 * b1 * deltax; log-level, log(y) = b0 + b1x + u 

# given log-log regression log(y) = 4.3 + 0.26log(x), what percent does y change when x falls by 18%?
0.26 * (-18)

# by about what percent does predicted salary change when return on equity rises by 5 points?
reg <- lm(log(salary) ~ roe, data = ceosal1)
beta1 <- coef(reg)[2]
100 * beta1 * 5

# 7 - by about how many thousand dollars does predicted salary change when sales rise by 10%? 
reg <- lm(salary ~ log(sales), data = ceosal1)
beta1 <- reg$coefficients[2]
deltax <- 10
(beta1 / 100) * deltax

# Theorum 2.1 says under SLR1-SLR4, E[b1hat] = b1; this means that averaged over many random samples, b1hat = b1

# if every worker has exactly 12 years of education and you regress wage on eductation, SLR3 fails because all x values are the same so OLS slope cannot be computed

# sigma^2 / SSTx = var(b1)
27 / 77

# under SLR1-SLR5, find sd(b1) given error sd = 20, n = 6, Sx^2 = 2
n <- 6
sx2 <- 2
sigma <- 20
sstx <- (n - 1) * sx2
sigma / sqrt(sstx)

# more spread-out values of X (a larger SSTx) makes Var(b1) smaller, holding all else fixed 

# under SLR1-SLR5, find sd(b1) given error sd = 4, x = (4, 6, 8, 9, 10)
x <- c(4, 6, 8, 9, 10)
sigma <- 4
sstx <- sum((x - mean(x))^2)
sigma / sqrt(sstx)

# find the estimate of the error variance sigma^2 given n = 49, SSr = 164
164 / (49 - 2)

# find standard error se(b1) given n = 9, SSR = 346, SSTx = 7
sigma_hat <- sqrt(346 / (9-2))
se <- sigma_hat / sqrt(7)
se

# in a regression of food spending on income, the spread of food spending around the regression line grows as income grows; this means SLR5 fails and theorem 2.2 no longer applies (OLS still unbiased)

# what is sigma, the standard error of the regression 
reg <- lm(wage ~ educ, data = wage1)
sqrt(sum(reg$residuals^2) / (nrow(wage1) - 2))

# what is SSTx for educ, the total sum of squares of the explanatory variable
(nrow(wage1) - 1) * var(wage1$educ)

          # Problem Set 10

# testscore = 12 + 8log(income), what does 8 mean? -- 1% increase in income associated with a rise of about 0.08 points in predicted test score

# 2 log-level reg. gives log(y) = 0.9 + 0.08x ; what percent does y change when x falls by 2?
100 * 0.08 * (-2)

# 3 what percent does predicted birth weight change when family income rises by 20%? 
data("bwght")
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
reg
reg$coefficients[2] * 20

# suppose you draw 1,000 different random samples from same pop. and compute b1hat in each one. If OLS is unbiased (SLR1-4), what is true? -- avg. of 1,000 estimates is close to b1

# why do we prefer unbiased estimator with smaller variance var(b1hat)? -- its estimates land closer to b1 from sample to sample, so any one estimate more reliable

# under SLR1-5, var(b1hat) = sigma^2 / SSTx, holding all else fixed, what changes would make var(b1hat) larger? -- larger error variance sigma^2, smaller sample SStx, x values bunched more tightly together(smaller SSTx)

# simple regression on n = 9 observations has sigmahat = 8.3 and sample sd error of X is Sx = 1.2; find sd error se(b1hat)
n <- 9
sigmahat <- 8.3
sx <- 1.2
SSTx <- (n - 1) * sx^2
sigmahat / sqrt(SSTx)

# regression uses five X values x = (5, 7, 8, 11, 12) and SSR = 52; find sd error se(b1hat)
x <- c(5, 7, 8, 11, 12)
SSR <- 52
n <- length(x)
sigmahat <- sqrt(SSR / (n - 2))
SSTx <- sum((x - mean(x))^2)
sigmahat / sqrt(SSTx)

# under SLR1-5, regression has sd(b1hat) = 0.82; if sample were 3 times as large, with X values spread out in same way (so SSTx also 3 times larger), what would sd(b1hat) be?
0.82 / sqrt(3)

# compute standard error se(b1hat) by hand from sigmahat and SSTx
data("ceosal1")
reg <- lm(salary ~ roe, data = ceosal1)
sigmahat <- sqrt(sum(resid(reg)^2) / (nobs(reg) - 2))
SSTx <- sum((ceosal1$roe - mean(ceosal1$roe))^2)
se_b1 <- sigmahat / sqrt(SSTx)
se_b1

# in wagehat = b0hat + b1hat * educ + b2hat * exper, what does b1hat measure? -- predicted change in wage from one more year of education, holding experience fixed

# multiple regression gives yhat = -2 + 0.8x1 + 1.4x2; find predicted value yhat at x1 = 13 and x2 = 19
-2 + 0.8 * 13 + 1.4 * 19

# multiple regression gives yhat = 2 + 3.8x1 - 0.7x2; if x1 rises by 1 and x2 rises by 4, how much does yhat change? 
3.8 * 1+ (-0.7) * 4

# what is predicted hourly wage of a worker with 14 years of education, 10 years of experience, and 5 years of tenure?
data("wage1")
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b <- coef(reg)
yhat <- b[1] + b[2] * 14 + b[3] * 10 + b[4] * 5
yhat

# using reg. wage on educ, exper, and tenure; by how much does predicted hourly wage change when tenure rises by 3 years, holding educ and exper fixed?
data("wage1")
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b <- coef(reg)
b["tenure"] * 3

# by about what percent does predicted salary change when return on equity rises by about 10 points, holding sales fixed? 
reg <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
reg$coefficients
100 * reg$coefficients[3] * 10

# using same reg. as 16, what is predicted salary, in thousands of dollars, of a CEO whose firm has sales of 5,000 (5 billion), and roe of 15?
reg <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
b <- coef(reg)
exp(b[1] + b[2] * log(5000) + b[3] * 15)

# formula 2.3, multiple regression of Y on X1 and X2 gives b1hat = 0.25 and b2hat = 1.44, and slope from regressing X2 on X1 is detla1 = 0.11; find simple regression slope b1~ from regressing Y on X1 alone. 
0.25 + 1.44 * 0.11

# in pop, Y = b0 + B1 * X1 + B2 * X2 + U with b2 = 1.53, you omit X2 and regress Y on X1 alone and the slope from regressing X2 on X1 is delta1 = 0.21; what is bias of simle regression slope, bias(b1~) = E[b1~] - b1?
1.53 * 0.21

# omitted variable X2 lowers Y (b2 < 0), and X2 is positively correlated with X1; the simple regression slope on X1 is: biased downward

# compute b2hat * delta1, the exper coefficient from the first regression times the educ slope from the second. 
data("wage1")
reg1 <- lm(wage ~ educ + exper, data = wage1)
reg2 <- lm(exper ~ educ, data = wage1)
reg1$coefficients
reg2$coefficients
reg1$coefficients[3] * reg2$coefficients[2]

          # Problem Set 11

# logyhat = 1.8 + 0.026x1 - 0.013x2 ; x1 rises by 4 and x2 rises by 4, what percent does predicted y change?
100 * (0.026 * 4 + (-0.013) * 4)

# what percent does predicted wage change when experience rises by 2 years and tenure rises by 1 year, education fixed?
data("wage1")
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
100 * (b[3] * 2 + b[4] * 1)

# using same reg as above, what is predicted hourly wage in dollars of a worker with 12 yrs educ, 10 yrs exper, 3 yrs tenure
data("wage1")
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
pred_wage <- exp(b[1] + b[2]*12 + b[3]*10 + b[4]*3)
pred_wage

# OLS multiple reg. of Y on X1, ... , Xk ; reg. passes thru point of sample means, sample cov between each Xj and residuals is 0, sample avg of residuals is 0 

# compute predicted colGPA at ACT = mean(gpa1$ACT) and hsGPA = mean(gpa1$hsGPA) 
data("gpa1")
reg <- lm(colGPA ~ ACT + hsGPA, data = gpa1)
b <- reg$coefficients
b[1] + b[2] * mean(gpa1$ACT) + b[3] * mean(gpa1$hsGPA)

# multiple regression gives yhat = 4.2 + 1.9x1 - 0.6x2; sample means of IVs are x1bar = 3.6 and x2bar = 10.4; what is sample mean y?
4.2 + 1.9 * 3.6 - 0.6 * 10.4

# which reg. violate MLR3 (no perfect colinearity) so OLS can't estimate them?
# a reg. with 5 independent variables, estimated on 4 observations 
# voteA on expendA, expendB and totexpend where totexpend = expendA + expendB
# wage on income in dollars and income in thousands of dollars 

# for vote1 dataset, what does R report for the coefficient on totexpend? ; NA: R drops totexpend because it is an exact linear function of expendA and expendB
data("vote1")
vote1$totexpend <- vote1$expendA + vote1$expendB
lm(voteA ~ expendA + expendB + totexpend, data = vote1)

# which situation makes MLR4, E[U | x1, ..., Xk] = 0, fail (so that X variables are endogenous)? 
# a variable that affects Y and is correlated with X1 is left out of the regression

# unbiasedness only needs MLR1-4, why not simply add every variable we can find to the regression?
# adding variables can increase the variance of the OLS estimates and can even violate MLR3

# b1tilde = b1hat + b2hat * delta1, b1tilde = 0.73, b2hat = 1.23, delta1tilde = -0.33; find multiple regression slope b1hat
0.73 - 1.23 * (-0.33)

# what is slope on cigs?
data("bwght")
lm(bwght ~ cigs, data = bwght)

# now add family income, what is slope on cigs holding faminc fixed?
reg <- lm(bwght ~ cigs + faminc, data = bwght)
reg$coefficients

# regress faminc on cigs to get delta1, compute b2hat * delta1tilde
reg1 <- lm(bwght ~ cigs, data = bwght)
reg2 <- lm(bwght ~ cigs + faminc, data = bwght)
reg3 <- lm(faminc ~ cigs, data = bwght)
coef(reg2)["faminc"] * coef(reg3)["cigs"]

# in birth-weight regressions, simple reg. cigs slope is about -0.51 and multiple reg slope is about -0.46; which reading is correct?
# about -0.46 per cigarette is the estimated effect of smoking holding income fixed; the other -0.05 is income's effect riding along, because heavier smokers tend to have lower incomes

# omitted variable X2 lower Y (b2 < 0) and X2 is negatively correlated with the included X1; what is simple regression slope on X1?
# biased upward because the bias is positive [(-)(-)] = (+) 

# researcher gives crop yield on fertilizer use across farms, leaving out land quality. better land raises yield and farmers tend to use more fertilizer on better land; what is simple reg slope?
# overstates the effect of fertilizer (upward bias)

# regress exam scores on hours of tutoring, leaving out prior ability. higher ability, higher score, but students who sign up for most tutoring tend to be lower prior ability; what is simple reg. slope?
# understates the effect of tutoring (downward bias)

# regress Y on X1 alone, leaving out X2. when does this cause no omitted-variable bias in the slope on X1?
# X2 is uncorrelated with X1 in the sample (delta1tilde = 0)
# X2 has no ceteris-paribus effect on Y (b2 = 0)

          # Problem Set 12

# in formula se(bhatj) = sigmahat / sqrt(SSTj(1 - Rj^2)), what is Xj? -- IV whose coefficient Bjhat we was standard error of

# in wage = B0 + B1 * educ + B2 * exper + B3 * tenure + U, you want B2hat (se of exper). Which regression gives Rj^2? -- regression of exper on educ and tenure

# standard error of regression is sigmahat = sqrt(SSR / (n - K - 1)), what does sigmahat estimate? -- sigma, the standard deviation of error U

# multiple regression with K = 4 IVs, estimated on n = 48 observations has SSR = 2,692. Find standard error of regression, sigmahat
SSR <- 2692
n <- 48
K <- 4
sigmat_hat <- sqrt(SSR / (n - K - 1))
sigmat_hat

# in sample of n = 43 observations, the IV Xj has sample standard deviation Sxj = 5.9. Find SSTj
n <- 43
Sx <- 5.9
SSTj <- (n - 1) * Sx^2
SSTj

# multiple regression has sigmahat = 5.1. For IV Xj, SSTj = 363 and regressing Xj on other IVs gives Rj^2 = 0.74. Find se(Bjhat) 
sigma_hat <- 5.1
SSTj <- 363
Rj2 <- 0.74
se <- sigma_hat / sqrt(SSTj * (1 - Rj2))
se

# holding sigmahat and SSTj fixed, what happens to se(Bjhat) as Rj^2 gets close to 1 (Xj becomes nearly linear function of other IVs)? -- it grows without bound (multicollinearity)

# for hprice1, find standard error of bdrms coefficient by hand, so here Xj = bdrms. First, how many degrees of freedom does the regression have?
data("hprice1")
reg <- lm(price ~ sqrft + bdrms + lotsize, data = hprice1)
k <- 3 ## k = # of IVs
n <- nrow(hprice1)
df <- n - k - 1
df

# for hprice1, compute standard error of regression, sigmahat = sqrt(SSR / df)
reg <- lm(price ~ sqrft + bdrms + lotsize, data = hprice1)
SSR <- sum(reg$residuals^2)
sigma_hat <- sqrt(SSR / 84) ## (SSR / df)
sigma_hat

# for hprice1, compute SSTj for Xj = bdrms, the total variation of bdrms around its mean
SSTj <- sum((hprice1$bdrms - mean(hprice1$bdrms))^2)
SSTj

# for hprice1, compute Rj^2 for Xj = bdrms, the R^2 from regressing bdrms on other IVs
Rj2 <- summary(lm(bdrms ~ sqrft + lotsize, data = hprice1))$r.squared
Rj2

# for hprice1, compute se(Bjhat) = sigmahat / sqrt(SSTj * (1 - Rj^2)) for bdrms coefficient
se_bdrms <- sigma_hat / sqrt(SSTj * (1 - Rj2))
se_bdrms
summary(reg)

# for hprice1, find se(Bjhat) using summary()
summary(reg)$coefficients[3, 2]

# print summary(reg). Near the bottom is a line "residual standard error:... on 84 degrees of freedom". which of your answers does it match?
summary(reg) ## matches sigmahat, and its degrees of freedom match problem 8 

# missing data: some datasets have missing values (NA). lm() silently drops every row with an NA in any variable of regression. If Y (or other IV) has missing values but Xj does not, and you compute SSTj by hand from all the rows of Xj, what happens?
## hand computed standard error can differ from summary(reg) because SSTj uses rows the regression droped. COmpute every piece on the same rows the regression used

          # Quiz 8

# find new OLS slope given b1, every value divided by 1000
beta1 <- 0.14
new_beta1 <- beta1 * 1000
new_beta1

# find what percent y changes when x rises by 1 given log(y)hat 
beta1 <- 0.02
pct_change <- 100 * beta1 * 1
pct_change

# by how many units does y change when x rises by 17% given yhat
beta1 <- 57.2
pct_x <- 17
deltay <- (beta1 / 100) * pct_x
deltay

# only b0 changes in a log-log regression log(salary)


# given log-log regression log(y) = 4.3 + 0.26log(x), what percent does y change when x falls by 18%?
0.26 * (-18)

# by about what percent does predicted salary change when return on equity rises by 5 points?
reg <- lm(log(salary) ~ roe, data = ceosal1)
beta1 <- coef(reg)[2]
100 * beta1 * 5

# in wage = b0 + b1 * educ + U, the worker's ability which raises wages and tends to be higher for people with more eduction, is most likely to contribute to OVB to the OLS slope on educ 

# more spread-out values of X (a larger SSTx) makes Var(b1) smaller, holding all else fixed 

# under SLR1-SLR5, find sd(b1) given error sd = 4, x = (4, 6, 8, 9, 10)
x <- c(4, 6, 8, 9, 10)
sigma <- 4
sstx <- sum((x - mean(x))^2)
sigma / sqrt(sstx)

# find the estimate of the error variance sigma^2 given n = 49, SSr = 164
n <- 49
SSR <- 164
s2 <- SSR / (n - 2)
s2

# find standard error se(b1) given n = 9, SSR = 346, SSTx = 7
sigma_hat <- sqrt(346 / (9-2))
se <- sigma_hat / sqrt(7)
se

          # Quiz 9

# testscore = 12 + 8log(income), what does 8 mean? -- 1% increase in income associated with a rise of about 0.08 points in predicted test score

# log-level reg. gives log(y) = 0.9 + 0.08x ; what percent does y change when x falls by 2?
100 * 0.08 * (-2)

# what percent does predicted birth weight change when family income rises by 20%? 
data("bwght")
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
reg
reg$coefficients[2] * 20

# suppose you draw 1,000 different random samples from same pop. and compute b1hat in each one. If OLS is unbiased (SLR1-4), what is true? -- avg. of 1,000 estimates is close to b1

# under SLR1-5, var(b1hat) = sigma^2 / SSTx, holding all else fixed, what changes would make var(b1hat) larger? -- larger error variance sigma^2, smaller sample SStx, x values bunched more tightly together(smaller SSTx)

# simple regression on n = 9 observations has sigmahat = 8.3 and sample sd error of X is Sx = 1.2; find sd error se(b1hat)
n <- 9
sigmahat <- 8.3
sx <- 1.2
SSTx <- (n - 1) * sx^2
sigmahat / sqrt(SSTx)

# under SLR1-5, regression has sd(b1hat) = 0.82; if sample were 3 times as large, with X values spread out in same way (so SSTx also 3 times larger), what would sd(b1hat) be?
0.82 / sqrt(3)

# multiple regression gives yhat = -2 + 0.8x1 + 1.4x2; find predicted value yhat at x1 = 13 and x2 = 19
-2 + 0.8 * 13 + 1.4 * 19

# multiple regression gives yhat = 2 + 3.8x1 - 0.7x2; if x1 rises by 1 and x2 rises by 4, how much does yhat change? 
3.8 * 1+ (-0.7) * 4

# what is predicted hourly wage of a worker with 14 years of education, 10 years of experience, and 5 years of tenure?
data("wage1")
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b <- coef(reg)
yhat <- b[1] + b[2] * 14 + b[3] * 10 + b[4] * 5
yhat

# using reg. wage on educ, exper, and tenure; by how much does predicted hourly wage change when tenure rises by 3 years, holding educ and exper fixed?
data("wage1")
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b <- coef(reg)
b["tenure"] * 3

          # Quiz 10 

# logyhat = 1.8 + 0.026x1 - 0.013x2 ; x1 rises by 4 and x2 rises by 4, what percent does predicted y change?
100 * (0.026 * 4 + (-0.013) * 4)

# what percent does predicted wage change when experience rises by 2 years and tenure rises by 1 year, education fixed?
data("wage1")
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
100 * (b[3] * 2 + b[4] * 1)

# using same reg as above, what is predicted hourly wage in dollars of a worker with 12 yrs educ, 10 yrs exper, 3 yrs tenure
data("wage1")
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b <- reg$coefficients
pred_wage <- exp(b[1] + b[2]*12 + b[3]*10 + b[4]*3)
pred_wage

# OLS multiple reg. of Y on X1, ... , Xk ; reg. passes thru point of sample means, sample cov between each Xj and residuals is 0, sample avg of residuals is 0 

# multiple regression gives yhat = 4.2 + 1.9x1 - 0.6x2; sample means of IVs are x1bar = 3.6 and x2bar = 10.4; what is sample mean y?
4.2 + 1.9 * 3.6 - 0.6 * 10.4

# which reg. violate MLR3 (no perfect colinearity) so OLS can't estimate them?
# a reg. with 5 independent variables, estimated on 4 observations 
# voteA on expendA, expendB and totexpend where totexpend = expendA + expendB
# wage on income in dollars and income in thousands of dollars 

# which situation makes MLR4, E[U | x1, ..., Xk] = 0, fail (so that X variables are endogenous)? 
# a variable that affects Y and is correlated with X1 is left out of the regression

# b1tilde = b1hat + b2hat * delta1, b1tilde = 0.73, b2hat = 1.23, delta1tilde = -0.33; find multiple regression slope b1hat
0.73 - 1.23 * (-0.33)

# regress faminc on cigs to get delta1, compute b2hat * delta1tilde
reg1 <- lm(bwght ~ cigs, data = bwght)
reg2 <- lm(bwght ~ cigs + faminc, data = bwght)
reg3 <- lm(faminc ~ cigs, data = bwght)
coef(reg2)["faminc"] * coef(reg3)["cigs"]

# omitted variable X2 lower Y (b2 < 0) and X2 is negatively correlated with the included X1; what is simple regression slope on X1?
# biased upward because the bias is positive [(-)(-)] = (+) 

# researcher gives crop yield on fertilizer use across farms, leaving out land quality. better land raises yield and farmers tend to use more fertilizer on better land; what is simple reg slope?
# overstates the effect of fertilizer (upward bias)