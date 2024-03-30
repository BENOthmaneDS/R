library("FactoMineR")
library("factoextra")
library("gplots")
library(readxl)

setwd("C:/Users/BENHAKKI/Downloads")
contingence <- read.csv("recensement.csv", sep=";", dec = ",", row.names = 1)
View(contingence)     #étape 1 répartition des points
res2.ca = CA(contingence)     # on ajoute ncp = 2

chisq<-chisq.test(contingence)
print(chisq)     #étape 1 suite alpha avec pvalue rejette h0 si grand que pvalue donc les deux caractères ne sont pas indépendants
res2.ca<-CA(contingence, graph=FALSE)  
res2.ca
print(res2.ca)
#valeurs propres/Variances
eig.val<-get_eigenvalue(res2.ca)
eig.val     # étape 2 val propore choix d'axes plus grand
fviz_eig(res2.ca)
#repel=TRUE pour le chevauchement de texte 
fviz_ca_biplot(res2.ca, repel=TRUE)

#On prend deux dimensions DIM1 avec 0.54 et DIM2 avec 39.91 total qualité cos2 est 88.60
res = PCA(contingence, ncp = 2)
fviz_pca_ind(res, pointshape = 21, fill = "#E7B800", repel = TRUE)  #repel true evite le chevauchement  

#Étape 3 Coordonnées contribution et Qualité Des Colonnes , on a commecé par les lignes car 
res2.ca$col$contrib
res2.ca$col$cos2
res2.ca$col$coord

res2.ca$row$contrib
res2.ca$row$cos2
res2.ca$row$coord

fviz_ca_row(res2.ca, repel = TRUE)
