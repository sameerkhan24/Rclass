# function with list
num = function(x){
  n = x>80
  x[n]
}
a = c(101,40,20,90,88)
num(a) # prints 101 90 88

# default arguments
series = function(n1,n2=10){
  for (i in n1:n2){
    print(i)
  }
}

# variable argument
fun = function(x,y,...){
  z=c(x,y,...)
  mean(z)
}
fun(10,100,40)
