swirl()
wingateg
1
10

# 1 
head(flags)

# 2 
dim(flags)

# 3 
class(flags)

# 4 
cls_list <- lapply(flags, class)

# 5 
cls_list

# 6
class(cls_list)

# 7 
as.character(cls_list)

# 8 
cls_vect <- sapply(flags, class)

# 9 
class(cls_vect)

# 10 
sum(flags$orange)

# 11 
flag_colors <- flags[, 11:17]

# 12
head(flag_colors)

# 13
lapply(flag_colors, sum)

# 14
sapply(flag_colors, sum)

# 15 
sapply(flag_colors, mean)

# 16
flag_shapes <- flags[, 19:23]

# 17 
lapply(flag_shapes, range)

# 18 
shape_mat <- sapply(flag_shapes, range)
shape_mat

# 19 
class(shape_mat)

# 20 
unique(c(3, 4, 5, 5, 5, 6, 6))

# 21
unique_vals <- lapply(flags, unique)

# 21
unique_vals

# 22
sapply(unique_vals, length)

# 23 
sapply(flags, unique)

# 24
lapply(unique_vals, function(elem) elem[2])

1
