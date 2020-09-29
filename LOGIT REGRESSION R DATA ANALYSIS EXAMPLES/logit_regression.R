#setting up path 

setwd("E:\\Self_GitKraken\\Working_Repo_GitHub\\UCLA-learn\\LOGIT REGRESSION R DATA ANALYSIS EXAMPLES")
getwd()

#installing package 

install.packages("aod", dependencies=TRUE)
install.packages("ggplot2", dependencies = TRUE)

# loading packages

library(aod)
library(ggplot2)


#     Example 2: A researcher is interested in how variables, such as GRE (Graduate Record Exam scores), 
#     GPA (grade point average) and prestige of the undergraduate institution, effect admission into graduate school. 
#     The response variable, admit/don’t admit, is a binary variable.


mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
## view the first few rows of the data
head(mydata)

summary(mydata)

sapply(mydata, sd)

?sapply
