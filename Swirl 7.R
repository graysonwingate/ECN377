# 1 
my_vector <- 1:20

# 2 
my_vector

# 3 
dim(my_vector)

# 4 
length(my_vector)

# 5 
dim(my_vector) <- c(4, 5)

# 6 
dim(my_vector)

# 7 
attributes(my_vector)

# 8 
my_vector

# 9 
class(my_vector)

# 10
my_matrix <- my_vector

# 11 
?matrix

# 12 
my_matrix2 <- matrix(data = 1:20, nrow = 4, ncol = 5)

# 13
identical(my_matrix, my_matrix2)

# 14 
patients <- c("Bill", "Gina", "Kelly", "Sean")

# 15
cbind(patients, my_matrix)

# 16 
my_data <- data.frame(patients, my_matrix)

# 17 
my_data

# 18 
class(my_data)

# 19 
cnames <- c("patient", "age", "weight", "bp", "rating", "test")

# 20 
colnames(my_data) <- cnames

# 21
my_data
1
