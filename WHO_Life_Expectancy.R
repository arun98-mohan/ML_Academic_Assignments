life<-read.csv("/Users/Arun/Desktop/Datasets/life.csv")
head(life)
life2<-life[,c(4,5,6,7,8,9,10,11,12,13,14,15,16,17)]
head(life2)


life2<-na.omit(life2)
cor(life2)
plot(percentage.expenditure~GDP,data=life2)

set.seed(110)
training_row_index<-sample(1:nrow(life2),0.75*nrow(life2))
training_data<-life2[training_row_index,]
test_data<-life2[-training_row_index,]

linmod=lm(percentage.expenditure~GDP,data=life2)
linmod
summary(linmod)

abline(linmod,col="green")
p<-predict(linmod,test_data)
summary(p)

acc_pred<-data.frame(cbind(acc=test_data$percentage.expenditure,pred=p))
head(acc_pred)
cor(acc_pred)
