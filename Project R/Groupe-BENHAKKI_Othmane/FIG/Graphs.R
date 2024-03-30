#Question 1 and 2

barplot(table(year.2005.to.2018.completed$grav), names = c("Unscathed","Dead","Injured hospitalized", "Slightly injured"))
# Severity Of Crashes Between 2005 and 2018
legend("topright", legend="From 2005 To 2018")
barplot(table(year.2019$grav), names = c("Unscathed","Dead","Injured hospitalized", "Slightly injured")) # Severity Of Crashes Of 2019
legend("topright", legend="Year 2019")

barplot(table(year.2018$grav), names = c("Unscathed","Dead","Injured hospitalized", "Slightly injured")) # Severity Of Crashes Of 2018
legend("topright", legend="Year 2018")

library(psych)
library(ggplot2)

ggplot(year.2005.to.2018.completed, aes(x = grav)) +
  #add one line for Export
  geom_line(aes(y = an), colour = "blue") + 
  theme_classic()

#Question 3

install.packages("dplyr")
library(dplyr)

year.2005.to.2018.filtered<-filter(year.2005.to.2018, catv==33 | catv == 15 | catv == 07)
#View(year.2005.to.2018.filtered)
barplot(table(year.2005.to.2018.filtered$catv), names = c("Motorcycle","Truck","Car"))
# Crashes Between 2005 and 2018 Of Motorcycles, Cars And Trucks
legend("topright", legend="From 2005 To 2018")

year.2019.filtered<-filter(year.2019, catv==33 | catv == 15 | catv == 07)
barplot(table(year.2019.filtered$catv), names = c("Motorcycle","Truck","Car")) # Motorcycles, Cars And Trucks Crashes Of 2019
legend("topright", legend="Year 2019")

#Question 4

install.packages("dplyr")
library(dplyr)

year.2005.to.2018.filtered2<-filter(year.2005.to.2018, catr==1 | catr == 2 | catr == 3)
#View(year.2005.to.2018.filtered)
barplot(table(year.2005.to.2018.filtered2$catr), names = c("Highway","State Highway","County Highway"))
legend("topright", legend="From 2005 To 2018")

year.2019.filtered2<-filter(year.2019, catr== 1 | catr == 2 | catr == 3)
barplot(table(year.2019.filtered2$catr), names = c("Highway","State Highway","County Highway")) 
legend("topright", legend="Year 2019")


#Question 5

install.packages("dplyr")
library(dplyr)

year.2005.to.2018.filtered3<-filter(year.2005.to.2018, sexe==1 | sexe == 2)
#View(year.2005.to.2018.filtered)
barplot(table(year.2005.to.2018.filtered3$sexe), names = c("Male","Female"))
legend("topright", legend="From 2005 To 2018")

year.2019.filtered3<-filter(year.2019, sexe==1 | sexe == 2)
barplot(table(year.2019.filtered3$sexe), names = c("Male","Female")) 
legend("topright", legend="Year 2019")

