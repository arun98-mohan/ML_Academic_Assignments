#Reading the Dataset without headers
arun<-read.csv("/Users/Arun/Desktop/Datasets/iris.data.csv",header=F)
#read.csv(file.choose(),header=?)

#Plotting V1 vs V2
plot(PetalLength~PetalWidth,data=arun)

#Calculating the linear regression
model=lm(PetalLength~PetalWidth,data=arun)

#Drawing the Linear Reg. Line
abline(model)
model

names(arun)<-c("SepalLength","SepalWidth","PetalLength","PetalWidth","Class")
arun

#Calculating the Correlation Matrix by removing last column(non-numeric)
arun2<-arun[,c(1,2,3,4)]
cor(arun2)

head(arun,6)


