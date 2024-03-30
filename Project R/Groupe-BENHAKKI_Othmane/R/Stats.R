#Statistics 
summary(year.2005.to.2018.completed)
summary(year.2019.completed)



#Analyse de la fiabilité Cronbach  
install.packages("psy", repos = "http://cran.us.r-project.org")
library(psych)
install.packages("ltm", repos = "http://cran.us.r-project.org")
library(ltm)
install.packages("utm", repos = "http://cran.us.r-project.org")

library(utm)
library(MASS)
library(msm)
library(polycor)

intdf=unlist(lapply(year.2019.completed, is.integer))
year.2019.Raw.Alpha = year.2019.completed[,intdf]

cronbach.alpha(year.2019.Raw.Alpha)
alpha(year.2019.Raw.Alpha, check.keys = TRUE) 


intdf2=unlist(lapply(year.2005.to.2018.completed, is.integer))
year.2005.to.2018.Raw.Alpha = year.2005.to.2018.completed[,intdf2]

cronbach.alpha(year.2005.to.2018.Raw.Alpha)
alpha(year.2005.to.2018.Raw.Alpha, check.keys = TRUE) 
