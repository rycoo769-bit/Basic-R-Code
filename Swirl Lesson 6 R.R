library(swirl)
swirl()
cooleyr
1
6

#View the first 10 elements of x
x[1:10] #name[a:b]

x[is.na(x)] #this creates a vector of all NA's as it selected them from x

#create a vector that is all non-na values of x
y <- x[!is.na(x)] # the "!" will do the inverse of the function so in this case it find the non na values 

y

#create a vector of all values of y that are above zero
y[y>0] 

#try x[x>0]
x[x>0] #because there are Na's in x doing x>0 creates a vector of values above 0 and all the Na's as Na's are a place holder not a value

#Combine the !, is.na(x) and x>0 into one function
x[!is.na(x) & x>0] #this will create a vector of no na values and all values are above 0

#R uses one-based indexing which means list start at 1 and not 0

#subset the 3rd, 5th, and 7th elements of x using the c() function
x[c(3,5,7)] #put the original vector[c(elements desired)]

#as for the 0th and 3000th element of x
x[0] #gives numerical value of zero
x[3000] #gives NA
#R will allow you to request values that do not exist in your vector, be sure you are working within your data

#get all the values of x except the 2nd and 40th 
x[c(-2,-10)]
#or 
x[-c(2,10)]
#this will give a list of all values of x except the 2nd and 40th

#Create a numeric vector with three named elements using vect <- c(foo = 11, bar = 2, norf = NA)
vect <- c(foo = 11, bar = 2, norf = NA)
#This just created a vector that has numbers also assigned character variable
vect 

#use the names() function to view the names in vect
names(vect)
#or
vect2 <- c(11,2,NA) #just creates a basic list

#add the 'names' attribute to vect2
names(vect2) <- c("foo","bar","norf")
#This will make vect2 which was just a basic list of characters a numeric value

#use the identical() function to prove vect = vect2
identical(vect, vect2) #showed true which  means identical or equivilent

#get the second element of vect
vect["bar"]

#specify a vector of names 
vect[c("foo", "bar")]
#This pulls from vect the 2 elements that match the specifications


