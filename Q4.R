cat("\014")
gpa<-read.csv("GPA.csv")
gpaModel<-lm(univ_GPA~high_GPA+math_SAT+verb_SAT,data=gpa)
LM<-summary(gpaModel)
print(LM)
cat("The RSE is: ", LM$sigma,"\n")
cat("The coefficient of determination is: ", LM$r.squared,"\n")
cat("The observed standard errors for i = 0,1,3 is: ", LM$coefficients[,"Std. Error"],"\n")


modelNew<-lm(univ_GPA~high_GPA+verb_SAT,data=gpa)
lmNew<-summary(modelNew)
print(lmNew)

newInput<-data.frame(high_GPA=3.55,math_SAT=6.90,verb_SAT=7.10)
alpha=.1
ciMean<-predict(modelNew,newdata = newInput,interval="confidence",level=1-alpha)
ciPred<-predict(modelNew,newdata=newInput,interval="prediction",level=1-alpha)
cat("Data for the Conditional Mean Output is: ",ciMean,"\n")
cat("Data for the Predicted Output is: ",ciPred,"\n")