#create dataframe
name = c("Reena","Teena","Meena","Beena","Veena")
age = c(26,43,40,34,22)
child = c(F,T,T,T,F)
height = c(5.6,5.4,5.3,4.9,4.9)
people = data.frame(name,age,child,height)


sort(people$age) # 22 26 34 40 43
ranks = order(people$age)
people[ranks,] # sorts dataframe by age in ascending order
people[order(people$age,decreasing = T),] # sorts by age in descending order
