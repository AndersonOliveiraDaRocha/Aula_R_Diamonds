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
ggsave('Quilate.png')

#Plotando gráfico de CAIXA (BOXPLOT)
qplot(x = color, y = price, data = diamonds, geom = 'boxplot') +
  scale_y_continuous(limits = c(0, 15000), breaks = seq(0, 15000, 500))


q_max <- max(diamonds$price / diamonds$carat)
q_min <- min(diamonds$price / diamonds$carat)

qplot(x = color, y = price/carat, data = diamonds, geom = 'boxplot') +
  scale_y_continuous(limits = c(q_min,q_max), breaks = seq(q_min,q_max, 1500)) +
  ylab('Quilate')

by(diamonds$price,diamonds$color,summary)

#GRAFICO DE FREQUENCIA
qplot(x= carat,data= diamonds,geom = 'freqpoly',binwidth=0.01)

install.packages('tidyr')
install.packages('dplyr')
