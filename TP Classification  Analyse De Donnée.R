library("FactoMineR")
#charger les données - attention aux options
#data(children)
fromage<-read.table(file="fromage.txt", header=T,row.names = 1, sep="\t", dec = ".")
print(head(fromage))
#Centrage réduction des données 
#Pour éviter que variables à forte prèsent indûment sur les résultats
fromage.cr<-scale(fromage,center=T, scale=T)
#matrice des distances entre individus (euclidienne)
d.fromage<-dist(fromage.cr)
d.fromage
x=as.matrix(d.fromage)
View(x)
#CAH - critère de Ward
#method = << ward.D2 >> correspond au vrai critère de Ward
cah.ward<-hclust(d.fromage, method="ward.D2")
#affichage dendrogramme
library("corrplot")
plot(cah.ward)
#cah.ward$height
sortedHeight<-sort(cah.ward$height, decreasing = TRUE)
plot(sortedHeight,
     type = "h",
     xlab = "Noeuds",
     ylab = "Niveau d'agrégation")
sortedHeight<-sort(cah.ward$height)
plot(sortedHeight,
     type = "h",
     xlab = "Noeuds",
     ylab = "Niveau d'agrégation")
plot(cah.ward)

#Dendrogramme avec matérialisation des groupes
rect.hclust(cah.ward, k=5)
rect.hclust(cah.ward, k=2)
#découpage en 5 groupes
groupes.cah<-cutree(cah.ward, k=5)
#Liste des groupes
print(sort(groupes.cah))
