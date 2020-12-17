getwd() # Provides Working Directory

# Functions in R
div = function(x,y) {
  result = x/y
  print(result)
}
div(100,25)
div (30,6)

# Multiplication
mul = function(a,b){
  result = a * b
  print (result)
}
mul(2,45)
mul (13,34)


# Variables Names are CASE SENSITIVE
A=10
a=24

# CONCATENATION AND ARRAYS
f <- c(1,2,3,4,5,6)
f = c(1,2,3,4,5,6)
f
f+10

d = f / 4
d

f+d

f = c(1,2,3,4,5,6)

# Listing and Deleting Objects (Variables)
ls()
rm (a)
rm (list = ls())
