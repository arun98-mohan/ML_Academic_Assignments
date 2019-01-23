air<-read.csv("/Users/Arun/Desktop/Datasets/india_air_quality.csv")
head(air)
air2<-air[,c(7,8)]
head(air2)

air2<-na.omit(air2)
cor(air2)

plot(so2~no2,data=air2)
lin=lm(so2~no2,data=air2)
abline(lin,col="green")
