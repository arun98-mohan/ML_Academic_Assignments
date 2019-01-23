car<-read.csv("/Users/Arun/Desktop/Datasets/car.csv")
head(car)

car2<-car[,c(2,3,4,5)]
head(car2)
cor(car2)

plot(Present_Price~Selling_Price,data=car2,col="red")
set.seed(100)
training_row_index<-sample(1:nrow(car2),0.8*nrow(car2))
training_data<-car2[training_row_index,]
test_data<-car2[-training_row_index,]

linear_model=lm(Present_Price~Selling_Price,data=car2)
abline(linear_model,col="blue")

p<-predict(linear_model,test_data)
#summary(p)
#Calculating Accuracy
actuals_preds <- data.frame(cbind(actuals=test_data$Present_Price, predicteds=p))  # make actuals_predicteds dataframe.
cor(actuals_preds)
head(actuals_preds)
actuals_preds
