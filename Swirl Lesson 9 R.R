library(swirl)
swirl()
cooleyr
2
1
9

#Functions are typially the name and then (), for ex var()

#Q1 Use funtion to get the date
Sys.Date()
#most functions use R data but some use computer info to get dates, times, etc.

#Q2 Find the mean of a vector
mean(c(2,4,5))
# the inputs into a function are called providing/passing arguments, goes inside the ()

#Q3 #Learn how to write functions: name = function(input(s)){formula using inputs}
submit()

#Q4 Make a function
boring_function('My first function!')

#Q5 Show the source code for a function by just putting the name no ()
boring_function

#Q6 
submit()

#Q7 
my_mean(c(4,5,10))

#Q8
submit()

#Q9 Use remainder(5) when divisor = 2
remainder(5)
#in this case the function is remainder which is the left over amount when dividning,
# it is remainder = function(num, divisor = 2), so when we do remainder(5) this is 
# equivilent to 5/2 = 2 with 1 remaining

#Q10 try remainder(11,5)
remainder(11,5) # once we set up the remainder function in the environment we can just use it as a normal

#Q11 use explicity arguments
remainder(divisor = 11, num = 5) # can do a different order if each input is specified 

#Q12 try a partial match argument
remainder(4, div = 2) #while this does work it is not ideal, code with the intnetion of someone else
#reading it and following along

#Q13 use the args() function to find the formula behind a saved function
args(remainder)

#You can use a function as an input to another function

#Q14 Use the evaluate function to merge functions
# lets say you make two functions one add and one multiplies call them add = function(x,y){x+y}
# multiply = fucnction(x,y){x*y},

#now lets say I make a function called mystery function: mystery = function(func){func(2,4)}

# I can merge them like this: evaluate <- function(func, dat){func(dat)}

#this means that for mystery the inputs are a function(add or multiply) with dat being the vector
#So in this case it means that first a function is chosen from the previous ones and the vector (2,4) is the data
submit()

#Q14 use evaluate to find sd of c(1.4, 3.6, 7.9, 8.8)
evaluate(sd, c(1.4, 3.6, 7.9, 8.8))

#functions that are not named are called anonymous functions
# for ex) saying my_sum = function(sum, c(4, 5, 7)) is a named function
#while function(sum, c(4,5,7)) is anonymous

evaluate(function(x){x+1}, 6)
# the first function x is not defined but the outcome is x+1 so when we add the 6 it becomes 6+1 as x becomes 6

#Q15 use evaluate to create an anonymous function using x to return the first element of a vector c(8, 4, 0)
evaluate(function(x){ x[1] }, c(8, 4, 0))
#the [] are how we signify which element ot choose as x becomes the vector/data

#Q16 The same but the last variable
evaluate(function(x){ x[length(x)] }, c(8, 4, 0))
#swirl wants this answer because our vector is named x so when we do length(x) it tell hwo many elements are included
#Then the format simplifies to x[3] as 3 is the outcome of length(x), now this is gaurenteed to alwasys give the last value
#Antoher accpetable answer if the length of the vector is known is to jsut do 
#evaluate(function(x){[x[3]}, c(8,4,0)) as this gives the 3rd or in our case last element. 
#so in this case x becomes vecotr c(8,4,0) so lenght(x) works as it is = lenght(c(2,4,0)) and then using
#vector rules we can do x[length(x)] as this will become x[3] and when you do the vector name[element # wanted]
#we get that value so it all simplifies down to 0 as that is the last element. 

#Q17 use the ?paste function
?paste
#paste(..., " ") the ... means we can put infinite aguments in it

#Q18 type paste("Programming", "is", "fun!")
paste("Programming", "is", "fun!") #just merges together
#outputs "Programming is fun!" 

#Q19 
submit()

#Q20 use the new telegram function
telegram("Swirl", "has", "horrible", "feedback", "if", "you", "are", "confused")
#honestly the worst way I have been taught to code so far, and I am a business analtics student

#Q21 
submit()

#Q22 Use mad_libs
mad_libs()

#Q23 create a binary operatior
submit()

#Q24 use new binary operator
'I' %p% 'love' %p% 'R!'
