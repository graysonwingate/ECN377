library(wooldridge)
data("wage1")
data("bwght")

# 1 - total workers in wage1 sample
wage1
nrow(wage1)

# 2 - sample mean of hourly wage
mean(wage1$wage)

# 3 - sample standard deviation of years of education
sd(wage1$educ)

# 4 - OLS regression of wage on educ
reg <- lm(wage ~ educ, data = wage1)
reg
b1 <- reg$coefficients[2]

# 5 - save intercept of regression from question 4 as b0
b0 <- reg$coefficients[1]
b0

# 6 - predicted hourly wage at educ = 14, b0 + b1 * educ
b0 + b1 * 14

# 7 - change in hourly wage when education rises, b1 * deltaEDUC
b1 * 2

# 8 - sum of squared residuals SSR = sum(Ui^2)
SSR <- sum(reg$residuals^2)
SSR

# 9 - R^2 for regression of wage on educ from # 4 and SSR from # 8, R^2 = 1 - SSR/SST
SST <- sum((wage1$wage - mean(wage1$wage))^2)
R2 <- 1 - (SSR / SST)
R2
summary(reg)$r.squared

# 10 - how many ounces does predicted bwght at 5 cigarettes more per day 
reg2 <- lm(bwght ~ cigs, data =  bwght)
reg2
b1 <- reg2$coefficients[2] * 5
b1

# 11 - CHALLENGE, NOT ON EXAM
mean(wage1$wage[wage1$educ == 16])
