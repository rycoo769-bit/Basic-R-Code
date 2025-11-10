library(swirl)
swirl()
cooleyr
1
11

#Q1 use sapply(flags, unique) to create a vector of the unique values in each column
sapply(flags, unique)

#while sapply automaticly simplifies and tranfroms the data vapply has you specify which format it will become and if the functions used to do not 
#output information applicable for the selected format error messages will occur. A good way to confirm the code. 

#Q2 use vapply same as above but specify a numeric outcome
#vapply(flags, unique, numeric(1)) #does not work
ok()

#Q3 use sapply and vapply on the flags data set and the class function
sapply(flags, class)
vapply(flags, class, character(1)) #same outcome 
#while vapply is "safer" overall sapply is what should be used as long as you understand the code and dataset

#tapply splits up data into groups based on the value of a variable, applys a specific formula and then recombines them into 1
# for example, if height is over 6ft use _x_ formula but under 6ft use _y_ formula

?tapply #help menu for tapply

#Q4 use table to analyze data
table(flags$landmass) #creates a table based on the outcomes of the landmass variable which outputs integers 1-6, counts how many of each output
table(flags$animate) #same process but with variable animate with outputs integers 0-1 (no,yes) having an animated figure on the flag

#Q5 use tapply with animate, landmass and mean
tapply(flags$animate, flags$landmass, mean) #applies the mean function to the animate varaible seperatly for each landmass value, so should have 6 outputs
#so tapply(What we are manipulating with a function, How we sort the manipulee based on values, function used to manipulate)

#use tapply with population, red and summary
tapply(flags$population, flags$red, summary) # this gives summary info for the population of countries with (1) and without (0) red flags
# this gave the min, 1, median, 3, max for the 0 and 1

#Q6 find te median population for countries without red on flags
#option 6 = 3
6

#Q7 use tapply to look at the summary of population based on landmass
tapply(flags$population, flags$landmass, summary)

#Q8 what is hte max population for the 4th landmass value
#selection 4 = 56
4
