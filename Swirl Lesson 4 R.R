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
4

#create a numeric vector num_vect that contains the values 0.5, 55, -10, and 6
num_vect <- c(0.5, 55, -10, 6)

#create a variable called tf that gets the result of num_vect < 1, 
tf <- num_vect <1

#What do you think tf will look like?
2 # a vector of 4 logical values

#Print tf
tf # logi [1:4] TRUE, FALSE, TRUE, FALSE

#Type num_vect >= 6 without assigning the result to a new variable.
num_vect >= 6
# <, <=, >, >= are logical operators, == for exact equality and != for inequality

#If we have two logical expressions, A and B, we can ask whether at least one is TRUE with A | B
#(logical 'or' a.k.a. 'union') or whether they are both TRUE with A & B (logical 'and' a.k.a. 'intersection'). 
#Lastly, !A is the negation of A and is TRUE when A is FALSE and vice versa.

#(3 > 5) & (4 == 4)
#False
2

#(TRUE == TRUE) | (TRUE == FALSE)
# True as only 1 of them needs to be accurte when there is a bar or union
2

#((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)
# This is True because it is asking if (111 is greater than or equal to 111 or !(TRUE) which means is the operation before it correct = FALSE, if not correct it would be = TRUE as it is asking if the prob before it was correct) and ((4 + 1)==5)
#Basicly if this was A|!A & B, this is is A true, if yes then !A is False, and only one of these options need to be correct, then because of the and symbol we know B must be correct as well for the expression to be true
2

#Double Quotes are used to denote Character variables

#Create a character vector that contains the following words: "My", "name", "is". Remember to enclose each word in its own set of double quotes, so that R knows they are character strings. Store the vector in a variable called my_char.
my_char <- c("My", "name", "is")
my_char

#TO combine a character vector into 1 element use the paste()

#Type paste(my_char, collapse = " ") now. 
paste(my_char, collapse = " ") #leave a space, collapse means to destroy the indvidual to combine into 1

#To add to a previously made vector use the og c()
my_name <- c(my_char, "Ryan")
my_name

#Use the paste function to combine the my_name chr vector
paste(my_name, collapse = " ")

# use the paste function and sep = to combine a chr vector but the sep signified to R that we want to seperate the two words with a space.
paste("Hello", "world!", sep = " ")

#Use paste() to join the integer vector 1:3 with the character vector c("X", "Y", "Z"). This time, use sep = "" to leave no space between the joined elements.
paste(1:3, c("X", "Y", "Z"), sep = "") #No space in sep = "" means there will be no space between the outcomes
# creates "1X", "2Y", "3Z"

#Try paste(LETTERS, 1:4, sep = "-"), where LETTERS is a predefined variable in R containing a character vector of all 26 letters in the English alphabet.
paste(LETTERS, 1:4, sep = "-") #sep = "-" means to put a - between the two elements
# creates "A-1", "B-2+
#Due to the paste() function the numerical vector gets changed to a character vector this means the 1:4 is not 1,2,3,4 but is now "1", "2", "3" which are not numerical variables to be used in arithmetic 
