1 + 100
3+5 *2
sin(1)
log(10)
?logLik.lm
?as.integer

1 == 1
1 != 2
1 >2 
all.equal(1.2, 1.2)

x <- 1/40
log(x)

x <- 100

x <- x + 1
y <- x * 2

periods.between.words
underscores_between_words
camelCaseToSeparateWords

1:19
x <- 2^(1:5)
c(1,2,5,7,8,9,10)
ls()
rm(x)

install.packages("tidyverse")
library(tidyverse)



gapminder <- read.csv(file = "gapminder.csv")
head(gapminder)
View(gapminder)

str(gapminder)



integer: contains integers (i.e. whole numbers as you would expect)
numeric: floating point numbers (also called ‘double’)
complex: numeric including imaginary numbers (i)
logical: TRUE or FALSE
character: letter(s), numbers(s), word(s)
To determine which data type a value or vector is, use class()

class(y)

gapminder$continent

unique(gapminder$continent)


summary(gpminder$lifeExp)


# subsetting data 
head(gapminder)

head(gapminder, 2)
tail(gapminder, 10)

gapminder[1, 1]
gapminder[1:5, c(1,3,5)]

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()
ggsave("LifeExpectancy_by_GdpPercap.pdf")

pdf("gpdPercap_vs_time.pdf", width=8, height=8)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

dev.off()


ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point() + theme_economist()

install.packages("ggthemes")
library(ggthemes)

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + geom_point(color="black") + geom_line(aes(color=continent)) 

p <- ggplot(data = gapminder)
p <- p + geom_line(aes(x=year, y=lifeExp, by=country), color="red")
p <- p + geom_line(data = subset(gapminder, continent=="Oceania"), aes(x=year, y=lifeExp, by=country), color="black")
p <- p + theme_classic()
p
p <- p + labs(title="Oceania on the Rise", x = "Year", y = "Life Expectancy")
p


