# Linear Algebra in R

# We will go over the basic linear algebra operation in this file.

# Create column vector

a = c(1, 2, 3)

# Transpose column vector to become raw vector

t(a)

# Sum of two vectors

b = c(4, 5, 6)

a + b

# Create 3 x 3 matrix (column by column)

A = matrix(c(1, 1, 2, 
             2, -1, 0,
             0, 2, -2), ncol = 3)

# Create 3 x 3 matrix (row by row)

B = matrix(c(1, 1, 2, 
             2, -1, 0,
             0, 2, -2), ncol = 3, byrow = T)

# Matrix Multiplication

C = matrix(c(0, -1, 2,
             2, 1, 3,
             -2, 1, 1), ncol = 3, byrow = T)

A %*% C

# Create identity matrix

I = diag(c(1, 3))

# Import 'matlib' module for minor and cofactor functions
library(matlib)

# Minor 
minor(A, 1, 1)

# Cofactor 
cofactor(A, 1, 1)

# Determinant
det(A)

# Inverse matrix
A_inverse = solve(A)
