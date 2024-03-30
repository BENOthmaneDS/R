library(readxl)

#prote<-read.csv(file = "C:/Users/BENHAKKI/Documents/proteine7.csv", sep = ";", dec = ",", row.names = 1)
#prote<-read.csv(file = "C:/Users/BENHAKKI/Documents/crime.csv", sep = ";", dec = ",", row.names = 1)
prote<-read.csv(file = "C:/Users/BENHAKKI/Documents/deca_s6.csv", sep = ";", dec = ",", row.names = 1)
View(prote)
library("FactoMineR")
library("factoextra")
library("corrplot")

#ACP pour determiner le nombre d'axes

#res = PCA(prote, scale.unit = FALSE, graph = FALSE)      #ACP Non normée

res = PCA(prote, graph = FALSE)

#res = PCA(prote, graph = FALSE, ncp=3) on relance l'acp avec le nombre d'axe pris

res
get_eig(res)
fviz_eig(res)

#relancer acp avec 4axes seulement
res = PCA(prote, ncp = 4)
fviz_pca_ind(res, pointshape = 21, fill = "#E7B800", repel = TRUE)  #repel true evite le chevauchement  

#Coordonnées et contribution des individus sur le premier plan factoriel

indiv = res$ind
indiv$coord
indiv$contrib

#Coordonnées et contributions des variables

var = res$var
var$coord
var$contrib

#Affichage des vecteurs propres 
#vv$vectors   ana lizdt hna
R=cor(prote)
View(R)
vv<-eigen(R)
vv
vv$vectors
vv$values

#Qualité des individus

indiv$cos2

#Cos2 total des indiv sur Dim1 et Dim2

fviz_cos2(res, choice = "ind", axes = 1:2)
fviz_pca_ind(res, col.ind = "cos2")

#Qualité des variables

var$cos2
corrplot(var$cos2, is.corr = FALSE)

#Cos2 total des variables sur Dim1 et Dim2

fviz_cos2(res, choice = "var", axes = 1:2)
fviz_pca_var(res, col.var = "cos2")

#Representation graphique

fviz_pca_ind(res, pointsize="cos2", pointshape = 21, fill = "#E7B800", repel = TRUE)
fviz_pca_var(res)
fviz_pca_var(res, pointsize = "cos2", pointshape = 21, fill = "#E7B800", repel = TRUE)




