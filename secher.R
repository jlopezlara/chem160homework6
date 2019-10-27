rmr<-read.table("secher.txt",header=T)
model1<-lm(bwt~bpd, data=rmr)
sum.model1<-summary(model1)
R2_1<-sum.model1$r.squared
f1<-sum.model1$fstatistic
p.value1<-pf(f[1],f[2],f[3],lower.tail=F)
output1<-sprintf("R2_1 = %f and p-value1=%f", R2_1, p.value1)
cat(output1)
intercept1<-model1$coefficients[1]
slope1<-model1$coefficients[2]
output1<-sprintf("slope1=%f  intercept1=%f",slope1, intercept1)
cat(output1)
png("graph1.png")
plot(bwt~bpd, data=rmr)
abline(model1)
dev.off()


rmr<-read.table("secher.txt",header=T)
model2<-lm(bwt~ad, data=rmr)
sum.model2<-summary(model2)
R2_2<-sum.model2$r.squared
f2<-sum.model2$fstatistic
p.value2<-pf(f[1],f[2],f[3],lower.tail=F)
output2<-sprintf("R2_2 = %f and p-value2=%f", R2_2, p.value2)
cat(output2)
intercept2<-model2$coefficients[1]
slope2<-model2$coefficients[2]
output2<-sprintf("slope2=%f  intercept2=%f",slope2, intercept2)
cat(output2)
png("graph2.png")
plot(bwt~ad, data=rmr)
abline(model2)
dev.off()
