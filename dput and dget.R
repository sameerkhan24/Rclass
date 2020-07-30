m = mtcars[1:5,]
dput(m)
dput(m,ffile = "y.R")
dget("y.R")
