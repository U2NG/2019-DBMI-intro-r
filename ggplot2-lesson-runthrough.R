#load dataset
gapminder <- read.csv(file = "gapminder.csv")

#load libraries
library(knitr)
library(ggplot2)
library(gridExtra)

#intro to ggplot
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp))

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#saving plots to PDf (save plot size is dtermined by plot tab sized - the tab will afffect the size the plot is saved)
ggsave("LifeExpectancy_by_GDPperCap2.pdf")

pdf("gdpPercap_vs_time2.pdf", width=4, height=4)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#turn off PDF device
dev.off()

#adding a theme
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point() + theme_classic()

#adding a economist theme
library(ggthemes)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point() + theme_economist()

#line plots 
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country)) + geom_line()

#adding lines and plots
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country)) + geom_line() + geom_point()

#adding color to the plot
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country, color=continent)) + geom_line() + geom_point()

#changing line and point layeers
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country)) + geom_line(aes(color = continent)) + geom_point(color="black")

ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country)) + geom_point(color="black") + geom_line(aes(color = continent))

#setting an aesthetic value instead of mapping
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country)) + geom_point(color="black") + geom_line(color="blue")

#subsetting data = "Oceania"
ggplot(data=gapminder) + geom_line(aes(x=year, y=lifeExp, by=country), color="red") + geom_line(data = subset(gapminder, continent=="Oceania"), aes(x=year, y=lifeExp, by=country), color="black")

#human readbility using variables to build layers sequentially
p <- ggplot(data = gapminder)
p <- p + geom_line(aes(x=year, y=lifeExp, by=country), color="red")
p <- p + geom_line(data = subset(gapminder, continent=="Oceania"), aes(x=year, y=lifeExp, by=country), color="black")
p

#Labels for plots 
p <- p + labs(title="Oceania on the Rise", x="Year", y="Life Expectancy")

#add scale to y axis
p <- p + scale_y_continuous(limits=c(0,100), breaks = seq(0,100,10), labels=seq(0,100,10))

#add moving ticks over to the sampling years
p <- p +scale_x_continuous(breaks = seq(1952,2007,5), labels=seq(1952,2007,5))

#view completed plot
p

### colors 
ggplot(data = gapminder) + geom_line(aes(x=year, y=lifeExp, by=country), color="darkOliveGreen")

### Data points colored differently relative to group assignment (R standard):
ggplot(data = gapminder) + geom_line(aes(x=year, y=lifeExp, by=country, color=continent))


### Data points colored differently relative to group assignment (Manually selected):
ggplot(data = gapminder) + geom_line(aes(x=year, y=lifeExp, by=country, color=continent)) + scale_color_manual(values = c('red','green','pink','yellow','black'))


# Repeating Operations (loops)

for(i in 1:10){
  print(i)
}


### writing loop output to new object
output_vector <- c()
for(i in 1:5){
  for(j in c('a', 'b', 'c', 'd', 'e')){
    temp_output <- paste(i, j)
    output_vector <- c(output_vector, temp_output)
  }
}
output_vector



