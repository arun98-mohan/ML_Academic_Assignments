addmission<-read.csv("/Users/Arun/Desktop/Datasets/Admission_Predict_Ver1.1.csv")
head(addmission)
cor(addmission)
plot(GRE.Score~Chance.of.Admit,data=addmission)
model=lm(GRE.Score~Chance.of.Admit,data=addmission)
abline(model)
model

#Now, taking only the grescore and admit chance
ad2<-addmission[,c(2,9)]
cor(ad2)
set.seed(100)
training_row_index<-sample(1:nrow(ad2),0.8*nrow(ad2))
training_data<-ad2[training_row_index,]
test_data<-ad2[-training_row_index,]
linear_mod=lm(GRE.Score~Chance.of.Admit,data=training_data)
plot(GRE.Score~Chance.of.Admit,data=training_data)
abline(linear_mod,col="red")
p<-predict(linear_mod,test_data)

#Calculating Accuracy
actuals_preds <- data.frame(cbind(actuals=test_data$GRE.Score, predicteds=p))  # make actuals_predicteds dataframe.
correlation_accuracy <- cor(actuals_preds)
correlation_accuracy
head(actuals_preds)
#actuals_preds
