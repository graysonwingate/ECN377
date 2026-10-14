# 13 - find new OLS slope given b1, every value multiplied by 10
beta1 <- 1.95
new_beta1 <- beta1 * 10
new_beta1

# 14 - find new OLS slope given b1, every value divided by 1000
beta1 <- 0.14
new_beta1 <- beta1 * 1000
new_beta1

# 15 - in a regression of y on x, every value of x is multiplied by 10; means slope is divided by 10, intercept and R^2 do not change

# 16 - if salary measured in $, what is OLS slope
data("ceosal1")
reg1 <- lm(salary ~ sales, data = ceosal1)
reg1$coefficients[2] * 1000

# 17 - find what percent y changes when x rises by 1 given log(y)hat 
beta1 <- 0.02
pct_change <- 100 * beta1 * 1
pct_change

# 18 - find what percent y changes when x rises by 13% given log(y)hat
beta1 <- 1.18
pct_x <- 13
pct_y <- beta1 * pct_x
pct_y

# 19 - by how many units does y change when x rises by 17% given yhat
beta1 <- 57.2
pct_x <- 17
deltay <- (beta1 / 100) * pct_x
deltay

# 20 - given log(rent)hat = 2.1 + 0.45log(income), the 0.45 means 1% rise in income is associated with a 0.45% rise in rent

# 21 - by what percent does predicted wage change with 10 more years of experience; use wage1
data("wage1")
reg1 <- lm(log(wage) ~ exper, data = wage1)
answer <- reg1$coefficients[2] * 100 * 10
answer
