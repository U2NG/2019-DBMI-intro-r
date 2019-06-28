### Mathmatical Operations
1 + 100
3 + 5 * 2
(3 + 5) * 2

### Mathmatical Functions
sin(1)
log(10)

### Getting Help
?as.character 

### Comparing Things (Logical Operators)
1 == 1

1 != 2
1 < 2
1 <= 1
1 > 0
1 >= -9

all.equal(1.2, 1.2)


# Tip: http://floating-point-gui.de/

### Variables and Assignment 
x <- 1/40 #assign with `<-`
x # view assignment 

x <- 100
x <- x + 1
y <- x * 2

# also can use `=` operator , but not asvised use `<-` instead
x = 1/40
x

##  Challenge 1 

### Vecetorization 
1:5 # colon notation indicates successive numbers

2^(1:5)
x <- 1:5
2^x
c(1,3,5,7) #vectors can be defined specifically using c()

### Managing your environment
ls()
rm(x)
ls()

### Loading R packages
#using `install.packages()` to install
#install.packages("knitr")
#install.packages("ggplot2")
#install.packages("gridExtra")

library(knitr)
library(ggplot2)
library(gridExtra)

### Data Structures 
# download Gapminder dataset 
# https://raw.githubusercontent.com/U2NG/2019-DBMI-intro-r/master/gapminder.csv 

### Read data into R
gapminder <- read.csv(file = "gapminder.csv")  
head(gapminder)
View(gapminder) #uppercase `V` need for function to work

### Introduction to Data Types and Structures

str(gapminder)
x <- (2)
class(x)

### Converting Data Types
as.integer("test")

## Challenge 2 

### Other Data Structures 
### Data set descriptions
gapminder$continent
unique(gapminder$continent)
length(gapminder$continent)
summary(gapminder$lifeExp)

### Subsettign Data
#### viewing first or last of dataset
head(gapminder)
tail(gapminder)
head(gapminder, 2)
tail(gapminder, 10)

#### byrow and coloumn
gapminder[1,1]

#### list and select columns in vector
gapminder[1:5, c(1,3,5)]

gapminder[1,]

#### subsetting: 2 ways
gapminder[gapminder$country=="Australia" & gapminder$year==1952, c("year","lifeExp")]

#subset function - dataframe, row selectionand column selection

subset(gapminder, country=="Australia" & year==1952, select = c(year, lifeExp))

## Challenge 3

### remind group to review IF and LOOPS in Datacamp 

### Go to KNITR review














