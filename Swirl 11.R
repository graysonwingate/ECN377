swirl()
wingateg
1
11

# 1 
sapply(flags, unique)

# 2 
vapply(flags, unique, numeric(1))

# 3 
ok()

# 4 
sapply(flags, class)

# 5
vapply(flags, class, character(1))

# 6 
?tapply

# 7 
table(flags$landmass)

# 8 
table(flags$animate)

# 9 
tapply(flags$animate, flags$landmass, mean)

# 10 
tapply(flags$population, flags$red, summary)

# 11
4

# 12 
tapply(flags$population, flags$landmass, summary)

# 13
4

1
