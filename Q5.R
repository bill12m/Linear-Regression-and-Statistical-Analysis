cat("\014")
cat("\014")
houseData<-read.csv("kc_house_data.csv")
houseData$id<-NULL
houseData$date<-NULL
houseData$sqft_basement<-NULL
houseData$floors<-NULL
model<-lm(data=houseData)
LM<-summary(model)
print(LM)

prost<-read.csv("ProstateData.csv")
model<-lm(lpsa~lcavol+lweight+age+lbph+svi+lcp+gleason+pgg45,data=prost)
LM<-summary(model)
print(LM)