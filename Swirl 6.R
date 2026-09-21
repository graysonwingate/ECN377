swirl()
wingateg
1
6

# 1 
x

# 2
x[1:10]

# 3
x[is.na(x)]
y <- x[!is.na(x)]

# 4 
y

# 5 
5

# 6 
y[y > 0]

# 7 
x[x > 0]

# 8 
x[!is.na(x) & x > 0]

# 9 
x[c(3, 5, 7)]

# 10 
x[0]

# 11
x[3000]

# 12
x[c(-2, -10)]

# 13
x[-c(2, 10)]

# 14
vect <- c(foo = 11, bar = 2, norf = NA)

# 15
vect

# 16
names(vect)

# 17 
vect2 <- c(11, 2, NA)

# 18
names(vect2) <- c("foo", "bar", "norf")

# 19
identical(vect, vect2)

# 20 
3

# 21
vect["bar"]

# 22
vect[c("foo", "bar")]
1
