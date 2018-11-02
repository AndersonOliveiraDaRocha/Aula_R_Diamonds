getwd()
library(ggplot2)
data(diamonds)
summary(diamonds)
?diamonds
diamonds$color
qplot(x=diamonds$price,data=diamonds)
names(diamonds)