abalone <- read.csv("abalone.csv")
meanLength <- mean(abalone$Length)
table(abalone$Sex)
library(ggplot2)
# library(pdflatex)
plot(Length ~ Sex, data=abalone)
qplot(x=Rings,y=Length,data=abalone)
model <- lm(Whole.weight ~ Length + Sex, data=abalone)
x <- 1:3
cv <- function (x, na.rm=FALSE){
  sd(x,na.rm=na.rm)/mean(x,na.rm=na.rm)
}
cv(abalone$Length)
model
summary(model)
