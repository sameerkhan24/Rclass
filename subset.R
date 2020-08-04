x = c("a","b","c","d")
x[1] #a
x[x>"a"] #b c d 
u = x > "a" 
x[u] #b c d

#LIST

q = list(foo=1:4,bar=0.6,baz="hello")
q[c(1,3)] # foo 1234 baz hello
name = "foo"
q$name #null
q[[name]] #1 2 3 4


#partial matching

x= list(amity=1:5)
x$a #1 2 3 4 5
x$am #1 2 3 4 5
x[["a"]] #this will give error
x[["a",exact=FALSE]] #1 2 3 4 5

#removing missing values

x = c(1,2,3,NA,4,NA,5)
bad = is.na(x)
x[bad] # prints NA NA
x[!bad] # prints 1 2 3 4 5

#complete cases

x = c(1,2,NA,4,NA,5,NA)
y=c("a","b",NA,"c",NA,"d","e")
good = complete.cases(x,y) # if one of them is NA, it will take it FALSE
good
x[good]
y[good]

#subsetting matrix

x = matrix(1:6,2,3)
x[1,] # 1 3 5 first row
x[,2] # 3 4 second column
x[1,2] # 3 first row second column
x[1,2,drop=FALSE] # displays matrix style "3"
x[1,,drop=T] # 1 3 5


