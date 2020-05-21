cat("\014")
data1<-read.csv("MyData1.csv")
model<-lm(Var3~Var1+Var2,data=data1)
LM<-summary(model)
print(LM)
#############################################
cat("The Residual Standard Error is: ",LM$sigma, "\n")
cat("The coefficient of determination is: ",LM$r.squared,"\n")
cat("The observed standard errors are: ",LM$coefficients[,"Std. Error"],"\n")
#############################################
CI<-confint(model,level=.95)
print(model)
print(CI)
#############################################
newInput<-data.frame(Var1=12.55,Var2=20.32)
alpha=.05
ciMean<-predict(model,newdata=newInput,interval="confidence",level=1-alpha)
ciPred<-predict(model,newdata=newInput,interval="prediction",level=1-alpha)
print(ciMean)
print(ciPred)