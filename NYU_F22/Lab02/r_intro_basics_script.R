# Let's start by loading some data:

mydata <- read.csv("https://wwwedu.github.io/NYU_F22/Lab02/introdata.csv")
# Can also use '=' as assignment operator
mydata = read.csv("https://wwwedu.github.io/NYU_F22/Lab02/introdata.csv")

# To view the data, we can use the environment viewer in RStudio or any of the following:

# try different options by uncommenting the line
# print(mydata)
# mydata
head(mydata)
# tail(mydata)

# To extract a variable from the data frame (the x variable for example):

# mydata$x
# print(mydata$x)
head(mydata$x)

# To assign to a new variable:

x <- mydata$x
y <- mydata$y
# my_variable <- mydata$x
# my.variable <- mydata$x
# MyVariable <- mydata$x
head(x)

# For basic statistics:

mean(x)

sd(x)

cor(x,y)

# To apply the same function to each vector in the dataframe:
#
# __The 'apply' functions are a very useful feature of R (a good explanation [here](https://sahirbhatnagar.com/biosR/vectorization-apply-and-for-loops.html#family-of-apply-functions)):__

AllTheMeans <- sapply(mydata,mean)
AllTheMeans

# Or use prepackaged functions:

summary(mydata)

# Note that we have access to the output of a function just like any other object. So we can extract just the output we need:

my.table <- summary(mydata)
paste0("Vector X ",my.table[4,1])
paste0("Vector Y ",my.table[4,2])

# Basic plot:
windows()
plot(x, y)
# plot(mydata)  # Since only two variables can just use this


# For details on the "datasaurus" dataset and why it is important to 
# visualize our data see (https://www.autodesk.com/research/publications/same-stats-different-graphs)
#
# To view HTML version see here:
# https://wwwedu.github.io/NYU_F22/Lab02/r_intro_basics.html
