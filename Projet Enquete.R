#Projet Questionnaire 2021-2022 : Digitalisation
#Signature d'auteur : BENHAKKI Othmane
#Version : v2.0f
#-------------------------
#Objectif : Etude du taux de propagation du digitalisation informatique dans les entreprises
            #Dans le territoire Maroccain

#I- Etude descriptive (Jeu de données 2)
#Détemriner un espace de travail
setwd("D:/ESISA/ProjectSurvey")
df2 = read.csv('enquete-global-csv.csv')

View(df2)
head(df2)
str(df2)
summary(df2)
boxplot(df2$familiariser,main= 'Boite à moustache de familiarisation avec linformatique')
boxplot(familiariser~secteur, data=df2, col=rainbow(2))
#------------------------------------------------------------------------------------------
#Variables par intervalle
hist(df2$t_Manuelle)
hist(df2$t_Informatisée)
hist(df2$depAV_Informatisé)
hist(df2$depAP_Informatisé)
hist(df2$gain_prod)
hist(df2$age)

#Ou on peut le réaliser via 
intdf=unlist(lapply(df2, is.integer))
df3 = df2[,intdf]
df3
View(df3)
head(df3)
dim(df3)   #Pour savoir les variables echelle sur les 
par(mfrow=c(2,3))  # Je veux diviser la figure sur 2 lignes et 3 colonnes
for(i in 1:ncol(df3)) {
  hist(df3[,i],main=names(df3)[i])
}


#------------------------------------------------------------------------------------------
#Variables Echelle
barplot(table(df2$Eval_PerformTI))
barplot(table(df2$Affectation_finale))
barplot(table(df2$Client_Eval))
barplot(table(df2$Securisation_Tache))
barplot(table(df2$economie_evolution))
barplot(table(df2$satisfaction))
barplot(table(df2$performance_collaborateurs))
barplot(table(df2$satisfaction_enquete))

#------------------------------------------------------------------------------------------
#Diagramme circulaire
pie(table(df2$secteur))
pie(table(df2$dep_Informatisé))
pie(table(df2$Embaucher_Spé))
pie(table(df2$raison_auto))
pie(table(df2$type_projet))
pie(table(df2$NiveauEvolution))
pie(table(df2$localisation))

#Ou on peut le réaliser via 
intdf=unlist(lapply(df2, is.character))
df3 = df2[,intdf]
df3
head(df3)
dim(df3)   #Pour savoir les variables qualitative sur les 
par(mfrow=c(2,3))  # Je veux diviser la figure sur 2 lignes et 3 colonnes
for(i in 1:ncol(df3)) {
  pie(table(df3[,i]))
}


#------------------------------------------------------------------------------------------
#Analyse de la fiabilité Cronbach  qualitative
install.packages("psy", repos = "http://cran.us.r-project.org")
library(psych)
install.packages("ltm", repos = "http://cran.us.r-project.org")
library(ltm)
install.packages("utm", repos = "http://cran.us.r-project.org")

library(utm)
library(MASS)
library(msm)
library(polycor)

cronbach.alpha(df3)
alpha(df3, check.keys = TRUE)    # alpha de cronbach est raw_alpha, l'intervelle de confiance est entre lower et upper,  le seuil de confiance est 95%
install.packages("FactoMineR", repos = "http://cran.us.r-project.org")
install.packages("factoextra", repos = "http://cran.us.r-project.org")


library("FactoMineR")
library("factoextra")
PCA(df3, scale.unit = TRUE, ncp = 5, graph = TRUE)
res.PCA <- PCA(df3, graph = FALSE)
print(res.PCA)
eig.val<-get_eigenvalue(res.PCA)
eig.val
fviz_eig(res.pca, addlabels = TRUE, y)

#------------------------------------------------------------------------------------------
#Analyse Exploratoire ACP par echelle

library(readxl)

setwd("D:/ESISA/ProjectSurvey")
prote<-read.csv('EnqueteGlobal.csv')
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





