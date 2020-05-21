cat("\014")
adv<-read.csv("Advertising.csv")
model<-lm(Sales~TV+Radio+Newspaper,data=adv)
LM<-summary(model)
print(LM)
#############################################
cat("The Residual Standard Error is: ",LM$sigma, "\n")
cat("The coefficient of determination is: ",LM$r.squared,"\n")
cat("The observed standard errors are: ",LM$coefficients[,"Std. Error"],"\n")
