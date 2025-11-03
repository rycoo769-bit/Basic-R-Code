library(swirl)
swirl()
cooleyr
1
10

head(flags) #shows the first 6 rows
dim(flags) # tell number of rows then columns
viewinfo(flags)
class(flags) #tells what format the variables are formed in, in this case it is a data frame
# can use class(variable) to get each variables form but that takes too long use a loop instead

cls_list <- lapply(flags, class)# lapply takes each varibale of flags, and applies the class function, no need for additional ()
cls_list #the l in lapply means list, meaning I only use this function if I am applying it to a list
class(cls_list)

as.character(cls_list)# becuase all of the classes of cls_list are integers and vectors we can change cls_list into a character vector
# to use do as.character(list name)

cls_vect <- sapply(flags, class) #sapply is the same as lappy except it will simplify if possible so in this case
# sapply was able to identify all the variables are vectors/integers so it automaticlly changed into a character vector
# if every length is = 1, vector
#if every length is >1, matrix
# If it can not be figured out, list equivilent to the lappy function, no simplification 
class(cls_vect) # to confirm the change

sum(flags$orange) #this adds up the values of the binary variables orange, yes = 1, no = 0, so if we sum we get the total amount of orange flags

flag_colors <- flags[, 11:17] # this creats a new data frame only including columsn 11-17 which are the color columns
# the , 11:17 means we want all rows but only columns 11:17
head(flag_colors)
lapply(flag_colors, sum) # adds up the total amount of flags that use each color
sapply(flag_colors, sum) # simplifies the lapply 

sapply(flag_colors, mean) # this get the % of total flags that have each color

flag_shapes <- flags[, 19:23] # new list for flag shapes
lapply(flag_shapes, range) # gives the min and max for each flag shape
shape_mat <- sapply(flag_shapes, range)
shape_mat #gives a matrix
class(shape_mat) #confirms matrix/array

unique(c(3,4,5,5,5,6,6)) #removes all duplicates
unique_vals <- lapply(flags, unique) # removes duplicates for all columns
unique_vals
sapply(unique_vals, length) #tells how many unique values are in each column

sapply(flags, unique)

lapply(unique_vals, function(elem) elem[2]) # pulls the second unique values from each column, we had to create out own function
#using a dummy variable, in this case we do the list, the function, and if necessary create the function
#this elem function will not exist to be recalled for any other code unless we describe the function again
