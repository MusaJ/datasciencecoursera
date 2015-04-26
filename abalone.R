abalone <- read.csv("abalone.csv")
meanLength <- mean(abalone$Length)
model <- lm(Whole.weight ~ Length + Sex, data=abalone)
x <- 1:3
cv <- function (x, na.rm=FALSE){
  sd(x,na.rm=na.rm)/mean(x,na.rm=na.rm)
}
model
summary(model)
table(abalone$Sex)
plot(Length ~ Sex, data=abalone)
cv(abalone$Length)
