library(caret)
ap<-read.csv(file.choose(),header=F)
head(ap)

#Replacing ? with NA, so that R can Unserstand
idx <- ap == "?"
is.na(ap) <- idx
head(ap)

#Removing Records with NA
ap<-na.omit(ap)

#Finding Correlation between City Milage and Highway Milage
ap2<-ap[,c(24,25)]
cor(ap2)
head(ap)

#Plotting the Graph
plot(V24~V25,data=ap)

#Linear Regression Line
model=lm(V24~V25,data=ap)
abline(model)
model

