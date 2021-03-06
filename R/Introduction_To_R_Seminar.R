# uncomment (remove ##) to run
install.packages("dplyr", dependencies=TRUE)
install.packages("ggplot2", dependencies=TRUE)
install.packages("rmarkdown", dependencies=TRUE)
install.packages("shiny", dependencies=TRUE)


#https://stats.idre.ucla.edu/stat/data/intro_r/intro_r_interactive.html#(15)

library(dplyr)
library(ggplot2)
library(shiny)

# list all available vignettes
vignette()

# intro to dplyr can be see by 
vignette("dplyr")

# R programming 1: Coding

# R is case sensitive 

# R programming 2: Functions and help files

#open help of log() function
?log

# R programming 3: Function arguments
log(x=100, base=10)
# specifying arguments by position
log(100,10)
log(8,2)

# https://stats.idre.ucla.edu/stat/data/intro_r/intro_r_interactive.html
#Vectors
#     Vectors, the fundamental data structure in R, are one-dimensional and homogeneous.

# Creating vectors
# create a vector
first_vec <- c(1, 3, 5)
first_vec
## [1] 1 3 5



# length() returns the number of elements

char_vec <- c("these", "are", "some", "words")
length(char_vec)
length(first_vec)
## [1] 4


# the result of this comparison is a logical vector
first_vec > c(2, 2, 2)
## [1] FALSE  TRUE  TRUE