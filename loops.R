# if else loop
age = readline(prompt = "Enter your Age: ")
age = as.integer(age)
if(age>=18)
{
  print("DRIVING LICENSE GRANTED")
} else{
  print("Sorry you are underage")
}

# largest of 3 numbers
x = readline(prompt = "Enter number: ")
y = readline(prompt = "Enter number: ")
z = readline(prompt = "Enter number: ")
if(x>y && x>z){
  print("first number is bigger")
}else if(y>x && y>z){
    print("second number is bigger")
}else{
  print("third number is bigger")
}

# sum and avg of first n natural numbers
n = readline(prompt = "Enter a number")
n = as.integer(n)
sum=0
for(i in 1:n){
  sum = sum + i;
}
print(sum)
print(sum/n)







