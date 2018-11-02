getwd()
setwd('C:\\Users\\Anderson\\Documents\\UDACITY\\Nanodegree Data Scientist\\Aulas de R\\Diamonds\\Aula_R_Diamonds\\')
library(ggplot2)
data(diamonds)
summary(diamonds)
?diamonds
diamonds$color
qplot(x=diamonds$price,data=diamonds, binwidth= 100)+
  scale_x_continuous(breaks = seq(0,10000,1000),limits = c(0,10000))+
  facet_wrap(~cut)
ggsave('Diamonds_Price.png')
names(diamonds)
summary(diamonds$price)
sum(diamonds$price>=15000)

by(diamonds$price,diamonds$cut,summary)

qplot(x=diamonds$price / diamonds$carat,data=diamonds,binwidth=0.01)+
  scale_x_log10() +
  facet_wrap(~cut)

diamonds$carat