#setting up path 
#     imp  link : https://cran.r-project.org/web/packages/HSAUR/
#               : https://stats.idre.ucla.edu/r/dae/logit-regression/

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

## two-way contingency table of categorical outcome and predictors we want
## to make sure there are not 0 cells
xtabs(~admit + rank, data = mydata)


#     The code below estimates a logistic regression model using the glm (generalized linear model) function. 
#     First, we convert rank to a factor to indicate that rank should be treated as a categorical variable.
mydata$rank <- factor(mydata$rank)
summary(mydata)
summary(mydata$rank)


#   logit test
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")

summary(mylogit)


## CIs using profiled log-likelihood

confint(mylogit)

## CIs using standard errors
confint.default(mylogit)


wald.test(b = coef(mylogit), Sigma = vcov(mylogit), Terms = 4:6)




l <- cbind(0, 0, 0, 1, -1, 0)
wald.test(b = coef(mylogit), Sigma = vcov(mylogit), L = l)



