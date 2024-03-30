library(readxl)
setwd("D:/ESISA/Analyse Numérique")
donnee <- read_excel("logistic_regression_diagnostics_yesno_removed.xlsx")
View(donnee)
model=glm(Acceptation.Credit ~.,data=donnee,family="binomial")
resume=summary(model)
#matrice de confusion
pred=ifelse(predict(model,type="response")>0.5,1,0)
View(pred)
print(table(donnee$Acceptation.Credit,pred))
#matrice Variance-Covariance
attrib=attributes(resume)
print(attrib)
matvc=resume$cov.unscaled
print(matvc)
#calcul de constante de Wald (généralisée)
matvcm=as.matrix(matvc)
matvcr=matvcm[2:3,2:3]
print(matvcr)
invmatvcr=solve(matvcr)
print(attrib)
coef=resume$coefficients
print(coef)
coefmat=as.matrix(coef)
coef2=coefmat[2:3,1]
print(coef2)
coef2t=t(coef2)
prod=coef2t%*%invmatvcr
D=prod%*%coef2
print(D)
#constante de khi-deux inverse
print(qchisq(0.95,2))