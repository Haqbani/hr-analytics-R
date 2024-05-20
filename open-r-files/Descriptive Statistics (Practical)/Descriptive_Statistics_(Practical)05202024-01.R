
#load requiered libraries
library(readxl) # for reading excel files
library(tidyverse) # for data manipulation
library(e1071) # for data visualization 

#read the data
demo <- read.csv("employee_demo.csv")

#check the structure of the data
glimpse(demo)

#Ordering the levels into factors
demo$Education <- factor(demo$Education,
                         ordered = TRUE,
                         levels = c("High School Diploma","Some College","College Degree"))

#bar-cahrt for Education
#Education levels frequency for all employees
barplot(table(demo$Education,
              useNA = "ifany"),
        main = "Education Level",
        xlab = "Education Level",
        ylab = "Frequency",
        col = "lightblue2",
        border = "black",
        ylim = c(0, 20))

#histogram for Age
hist(demo$Age,
     main = "Age Distribution",
     xlab = "Age",
     ylab = "Frequency",
     col = "lightblue2",
     border = "black",
     ylim = c(0, 20),
     breaks = 6)

#boxplot for Age
boxplot(demo$Age,
        main = "Age Distribution",
        xlab = "Age",
        ylab = "Frequency",
        col = "lightblue2",
        border = "black")

#scatter plot for Age and performance
#No correlation between Age and Performance

plot(demo$Age,
     demo$Performance,
     main = "Age vs Performance",
     xlab = "Age",
     ylab = "Performance",
     col = "black",
     pch = 19)

#Variance statistics for age
median(demo$Age)
sd(demo$Age)
var(demo$Age)
max(demo$Age)
min(demo$Age)

#validating the normality of the data
qqnorm(demo$Age)
qqline(demo$Age)

#skewness and kurtosis
skewness(demo$Age)
kurtosis(demo$Age)
