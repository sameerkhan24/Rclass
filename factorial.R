fact = function(num){
  factorial = 1
  if(num < 0) {
    print("factorial does not exist")
  } else if(num == 0) {
  print("The factorial of 0 is 1")
  } else {
  for(i in 1:num) {
    factorial = factorial * i
    }
  paste0("The factorial of ", num ," is ",factorial)
  }
}
fact(5)