library(swirl)
swirl()
cooleyr
1
8

#Boolean values are two logical ones: TRUE and FALSE

#These can be used in expressions with logical operators like ==
# "==" will see if the value honors the expression or does not so true or false outcome

TRUE == TRUE
(TRUE == TRUE) #can you arithmetic rules like order of operations, so you could use ()

(FALSE == TRUE) == FALSE #Outputs TRUE as the () does not work so it is FALSE and then FALSE is = FALSE so its TRUE

6 == 7 #can be used with numbers as well
 6 < 7 #can use < and > as well
 10 <= 10 #can also use <=, and >=
 
#Q1 Which of the following expressions will outcome FALSE?
# 9>= 10 is false
1

#Q2 which is TRUE?
#-6 > -7
3

#You can also use the "!" in combination of the other operators to make the inverse. 
5 != 7 #put the ! first to see if the expression is invalid. If invalid it will output TRUE and FALSE if it is valid
#it is opposite because we are using the inverse operator

! 5 == 7 # This produced true as the ! in front of of the entire expression will put the opposite of the origional outcome
# in this case it should of said FALSE as 5 is not equal to 7 but by putting the inverse or not "!" it
#reads as "the expression 5 == 7 is false" and that statement is true

#Q3 which is FALSE
# 1(0>= -1)
2

#Q4 what will (TRUE != FALSE) == !(6 == 7) equate to?
#True
4

# can use & which will compare the 2 sides of the equation and outcome TRUE or FALSE
# if it is not TRUE & TRUE which outputs TRUE it will always be FALSE
FALSE & FALSE #for example false and false is still false 

# the && will only evaluate the first  member of a vector
TRUE & c(TRUE, FALSE, FALSE)
# this outputs TRUE FALSE FALSE as it reuses the left side TRUE to compare to each element separately to produce an outcome

# Or is similar with | and ||, | does the individual v individual while || does individual v vector
# if only 1 side is true it will output true, if both sides are true it will output true but if neither side is true it will output false

TRUE | c(TRUE, FALSE, FALSE) #outputs TRUE TRUE TRUE because at least 1 element of the vector is true, its OR

TRUE || c(TRUE, FALSE, FALSE) # outputs TRUE as the vector as a whole has at least 1 true element. 

#Logical operators can be chained together just like arithmetic operators. 
#The expressions: `6 != 10 && FALSE && 1 >= | 2` or `TRUE || 5 < 9.3 || FALSE` are perfectly normal to see.

# AND operators (&,&&) are evaluated before OR operators (|,||)
5 > 8 || 6 != 8 && 4 > 3.9 
# outputs TRUE as it reads FALSE || TRUE && TRUE 
#which simplifies to FALSE || TRUE, being that true does exsit the whole outcome is TRUE

#Q5 which expression evaluates to TRUE
#TRUE && FALSE || 9 >= 4 && 3 < 6
2

#Q6 which expression evaluates to FALSE
#FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
2

# the function "isTRUE()" will output TRUE is the expression inside the () is TRUE, FALSE if the expression is FALSE
isTRUE( 6>4) # outputs true as 6>4 is true 

#Q7 which is TRUE?
#!isTRUE(4 < 3)
5

# the "identical() function is to see if the two R objects are the same
identical('twins', 'twins') #outputs true as twins is identical to twins

#Q8 which is true
#identical(5 > 4, 3 < 3.1)
3

#the "xor()" function is exclusive OR which means it will only return true if there is 1 true and 1 false element
xor( 5 == 6, !FALSE) #outputs true as the expressions are (FAlse, TRUE) so there is an OR therefore xor is TRUE
xor(TRUE, TRUE) #outputs false as both expressions are TRUE 

#Q9 which expression is false
#xor(4 >= 9, 8 != 8.0)
1

ints <- sample(10)
ints
ints > 5 #creates a vectors of TRUE, FALSE, FALSE, etc...

# the "which()" function will output which elements of a vector are true
# so after we did ints > 5 and created the vectors to true and false if I were to use 
#which(ints > 5) I would get c(1,7,8,9,10) as they are the only values that are true

#Q10 use the which() function to find the elements of ints >7
which(ints >7)

#Q11 which would tell for <= 2
#which(ints <= 2)
1

# the "any()" function will return TRUE if atleast 1 of the elements is true
# the all() function will return TRUE only if every element is true

#Q12 Use the any() function to see if any of the elements of ints are less than zero
any(ints < 0)

#Q13 Use the all() function to see if any of the elements of ints are greater than zero
all(ints > 0)

#Q14 which of the following is TRUE
# any(ints == 10)
2
