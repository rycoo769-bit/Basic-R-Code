#install.packages('swirl') # You only need to do this once. After installation, comment this out

# Loading the swirl package. You have to do this every time you start an R session
library(swirl)

# Installing the course we will use for ECN377
install_course_github('isaaccloh', '377_swirl') # Again, only do this once

# Beginning the lesson
swirl()

# When prompted, enter your last name and first initial, e.g. lohi
cooleyr


# Select the '377 swirl' class
1


#Select what lesson
5

x <- c(44, NA, 5, NA)

#multiply x by 3
x*3

#create vector contraining 1000 draws from a standard norm dist 
y <- rnorm(1000)

#create a vector containing 1000 NA's 
z <- rep(NA, 1000)

# from the 2000 values select 100 elements
my_data <- sample(c(y,z), 100)

#find where the NA's are
my_na <- is.na(my_data)
my_na #the results are true and false. the true means they are NAs and the false mean they are a rv assigned from rnorm

#use the == operator
my_data == NA #dont use == when there are NA's present as it will throw off the data

#use the sum function on my_na to count how many true=1 there are which tells how many nas there are
sum(my_na)
my_data

# divide 0/0 to find NaN meaning not a number
0/0

# subtract infinity from infinity
Inf - Inf

#submit google form
2
