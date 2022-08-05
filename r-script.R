## Week 5 - Self Guided 
### Ironkhack Data Analytics Bootcamp
  
#### Installing Packages
install.packages(c('tidyverse', 'ggplot2'))

  
#### Loading Packages
library('tidyverse')
library('ggplot2')

  
#### R Fundamentals
  
#Printing
print('Hello class!')


# Commenting <- This is a comment


# Assigning a variable
hello <- "Olá malta"
hello

# Checking the data type
typeof(hello)

# DATA STRUCTURES

# VECTORS
# Group of data of the SAME TYPE
charvect <- c('a', 'b', 'c')
boolvect <- c(TRUE, FALSE, FALSE)
numvect <- c(7)    

# LISTS
# Can contain data of ANY TYPE, including other lists.
mylist <- list('a', 23, 7, TRUE)

# MATRIX
# Two-dimensional collection of data elements.
# It can only contain the SAME data types.
mymatrix <- matrix(c(3:8), nrow = 2)
mymatrix
mymatrix2 <- matrix(c(1:6), ncol = 2)
mymatrix2

# DATA FRAMES
# The most common way of storing data in R.
df <- data.frame(x=c(1,2,3), y=c('a','b','c'))
df

# Let's open it
View(df)


#FOR LOOPS AND CONDITIONAL STATEMENTS
for (i in 1:10){
  print(hello)
}

#We can combine for loops and conditional statements
for (i in 1:10){
  if (i>1){
    print('bitoque')
  }else{
    print(hello)
  }
}

# Loading data (Two ways)
#1 Using code
diamonds <- read.csv("C:/Users/asgom/Desktop/Mis Documentos/Ironhack Bootcamp/Bootcamp/Week 5/Self-Guided/R-overview/diamonds.csv")
#2 Clicking on 'Import dataset'


# Asking for help
?tidyverse

# What about something more specific?
?plots

#What if we do this?
??plots


# Plotting - Base R
hist(diamonds$carat)
plot(diamonds$carat, diamonds$price)

# GGPLOT2

ggplot(diamonds, mapping = aes(x=carat))+geom_histogram()

ggplot(diamonds, mapping = aes(x=carat, y=price, color=price))+geom_point()


# FUNCTION CREATION

# This function will take an argument and divide it by two 

halfvalue <- function(number) {
  number / 2
}

halfvalue(10)

# Can we apply it to a Data Frame?
diamonds['price2'] <- halfvalue(diamonds$price)
View(diamonds)


#EXTRA:
#Run data() to check every dataset available in R.
data()
data("diamonds")

#Pipes, useful to group many functions into one chunk of code.
diamonds%>%
  group_by(cut)%>%
  summarise(max_price = max(price), min_price = min(price), avg_price = mean(price))



#DIY
#There is a dataset called 'starwars', you are going to use it for this exercise
# 1.  Plot an histogram with the height of every Star Wars character
# 1.5 Can you add a color for the gender?

data("starwars")


ggplot(starwars, mapping = aes(x=height, fill=gender))+geom_histogram()

# 2.  There is a function called 'drop_na()', use it to drop the null
#    values and calculate the mean of the height of each Star Wars character.
# 2.5 Find a way to check get the tallest character and the shorter one.

starwars <- drop_na(starwars)

#MEAN
mean(starwars$height)
#THE TALLEST
max(starwars$height)
#THE SHORTER
min(starwars$height)


# ONE MORE THING!

# Exit RStudio
quit()
