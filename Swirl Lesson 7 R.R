library(swirl)
swirl()
cooleyr
1
7

#Matricies and Data frames store tabular data with rows and columns
#matricies only contain 1 types of data
#Data frames contain 1+ types of data

my_vector <- 1:20
my_vector

dim(my_vector) #Dim() tells the dimensions of an object, will say NULL if does not have dimensions 
# the dim() function can be used to describe or set the dim attribute
length(my_vector)

dim(my_vector) <- c(4,5) #sets dim to be c(4,5) this is c(#rows, #columns)
dim(my_vector)
attributes(my_vector) #tells what the attributes are in the vector which is 4 and 5 in my case 4x5

my_vector #it is now in matrix form 4x5
class(my_vector) #tells what type of form it is in, in this case it is matrix and array
my_matrix <- my_vector

?matrix

my_matrix2 <- matrix(data = 1:20, nrow = 4, ncol = 5) #create a matrix using matric(data, nrow, ncol)
identical(my_matrix, my_matrix2) #proves both methods work

patients <- c("Bill", "Gina", "Kelly", "Sean") #create character vector 
cbind(patients, my_matrix) #combines 1:20 4x5 matrix and patients to name each row
#becuase matrix can only have 1 type of data this lead to both the names and numbers to have "" which means character
#this is bad as we want the numbers to be classified as numerical variables
#Coere is to change the data types and when done automatically by R it is known as implicit coercion 

my_data <- data.frame(patients, my_matrix) #this combines patients names and the matrix data as a data frame
#being that its a Df it can have both chr and num vectors 
my_data
class(my_data)

cnames <- c("patient", "age", "weight", "bp", "rating", "test") #creates chr list for var names
colnames(my_data) <-cnames #assigned cnames as the column/var names
my_data
