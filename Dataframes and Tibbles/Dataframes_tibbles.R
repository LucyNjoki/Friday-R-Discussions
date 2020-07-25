##****************************************************************************
#Week4: Dataframes & Tibble; Basic Operations; Installing Packages
#Author: LNN
#Date: 25/7/2020
#Source: https://tibble.tidyverse.org/ 
#https://swcarpentry.github.io/r-novice-inflammation/13-supp-data-structures/
#********************************************************************

rm(list = ls(all = TRUE))

#1. Dataframes
#Are special type of list where every element of the list has the same length.
#Can be created by read.csv() and read.table() when importing data into R.
#Can also be created using data.frame() function.
#To find the number of rows and columns nrow(dataset) and ncol(dataset) respectively.
#A tidy data has : variables as columns and observations as rows; Type of observational unit forms a table.

#Creating dataframes by hand
dataset <- data.frame(id = letters[1:15], x = 1:15, y = 16:30)
dataset


#Useful functions for dataframes
#head() - shows first 6 rows
#tail() - shows last 6 rows
#dim() - returns the dimensions of data frame (i.e. number of rows and number of columns)
#nrow() - number of rows
#ncol() - number of columns
#str() - structure of data frame - name, type and preview of data in each column
#names() or colnames() - both show the names attribute for a data frame
#sapply(dataframe, class) - shows the class of each column in the data frame

head(dataset)
head(dataset, n = 10)

#to check if its a sepcial list
is.list(dataset)

#check the tyype
class(dataset)
typeof(dataset)
sapply(dataset, class)

#Subset
dataset[["x"]]
dataset$x

#2. Tibble or tbl_df
#modern reimagining of the data.frame
#they don't the type or class of the variables; never changes the names of the variables
#have an enhanced print() method which makes them easier to use with large datasets containing complex objects

#installation
#Easiest way:
#install.packages("tidyverse")
#or:
#install.packages("tibble")

#To create a tibble from an existing object: as_tibble()
library(tidyverse)
as_tibble(iris)

#Create a new tibble with tibble()
dataset1 <- tibble(x = 1:5, y  = 6:10, z = x^2+y)
dataset1

#check the class
class(dataset1)
typeof(dataset1)
sapply(dataset1, class)

#subsetting
dataset1$x
dataset1[["x"]]

#3. Basic operations
dataset$x +5
dataset$x -5
dataset$x /5
dataset$x *5

mean(dataset$x)

var(dataset$x)

sd(dataset$x)

sqrt(dataset$x)

exp(dataset$x)

log(dataset$x) #natural logarithm

max(dataset$x)

min(dataset$x)

quantile(dataset$x)

median(dataset$x)

summary(dataset)

#Installing Packages
#From CRAN
install.packages("ggplot2", dependencies = TRUE)

#from github
install.packages("devtools")
devtools::install_github("Shelmith-Kariuki/rKenyaCensus")