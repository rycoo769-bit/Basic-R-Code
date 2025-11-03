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
3

#To create a simple sequence of numbers. Use ":" this will give a list from 1 to 20 
1:20

#Create a sequence using real numbers like pi. This starts at 3.1415, 4.1415,...
pi:10

#Try 15:1, This will list in decending integer order
15:1

#open the help menu for : but ensure it is in back ticks ` 
?`:`

#Use the sequence command
seq(1,20)

#try from 0 to 10 in 0.5 incriments
seq(0,10, by=0.5)

#Do 5 to 10 but with 30 values total
my_seq <- seq(5,10, length=30)

#confirm my_seq length
length(my_seq)

#If you want to have a sequence from 1 to N, where N is the length of the my_seq vector. Find a new sequence that is from 1 to N and is the same length as my_seq
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)

#Another way to make a sequence is to replicate the same value.
rep(0, times= 40)

#You can also repeat a vector
rep(c(0,1,2), times = 10)

#You can also do this function but with different values
rep(c(0,1,2),each = 10)

#Google Form
2
