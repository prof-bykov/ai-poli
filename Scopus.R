# Bykov's R - Simple plot with ggplot2

# Lab goals
#   Read a datafile into R
#   Learn how to work with ggplot2

# Check your working directory
getwd()
# If necessary, set your working directory
# setwd("/home/R")

# Read data into a dataframe called Scopus
Scopus <- read.table("Scopus.txt", header = T) 

# If necessary, view data
View(Scopus)

# If necessary, edit data 
# edit(Scopus)

#Load ggplot2 library 
library(ggplot2)

#Build a simple plot with ggplot2
ggplot(data = Scopus, aes(x = Year, y = Publ)) + geom_point()

#Build a plot with red points and labs
ggplot(data = Scopus, aes(x = Year, y = Publ)) + geom_point(colour = 'red', size = 3) + labs(x = 'Годы', y = 'Количество публикаций')
