setwd("D:/ESISA/Project R/DB Sources")   #Note : Set working directory to current path


#------------------------------Year 2019------------------------------------------------

caracteristiques.2019<-read.csv2(file="caracteristiques-2019.csv")
lieux.2019<-read.csv2(file="lieux-2019.csv")
usagers.2019<-read.csv2(file="usagers-2019.csv")
vehicules.2019<-read.csv2(file="vehicules-2019.csv")

#View(caracteristiques.2019)
#View(lieux.2019)
#View(usagers.2019)
#View(vehicules.2019)

year.2019.Two.Tables<-merge(x = caracteristiques.2019, y = lieux.2019, by = "Num_Acc", all = TRUE)
year.2019.Three.Tables<-merge(x = year.2019.Two.Tables, y = usagers.2019, by = "Num_Acc", all = TRUE)
year.2019<-merge(x = year.2019.Three.Tables, y = vehicules.2019, by = "Num_Acc", all = TRUE)

View(year.2019)



#------------------------------Year 2018------------------------------------------------

caracteristiques.2018<-read.csv(file="caracteristiques-2018.csv")
lieux.2018<-read.csv(file="lieux-2018.csv")
usagers.2018<-read.csv(file="usagers-2018.csv")
vehicules.2018<-read.csv(file="vehicules-2018.csv")

#View(caracteristiques.2018)
#View(lieux.2018)
#View(usagers.2018)
#View(vehicules.2018)

year.2018.Two.Tables<-merge(x = caracteristiques.2018, y = lieux.2018, by = "Num_Acc", all = TRUE)
year.2018.Three.Tables<-merge(x = year.2018.Two.Tables, y = usagers.2018, by = "Num_Acc", all = TRUE)
year.2018<-merge(x = year.2018.Three.Tables, y = vehicules.2018, by = "Num_Acc", all = TRUE)

View(year.2018)


#------------------------------Year 2017------------------------------------------------

caracteristiques.2017<-read.csv(file="caracteristiques-2017.csv")
lieux.2017<-read.csv(file="lieux-2017.csv")
usagers.2017<-read.csv(file="usagers-2017.csv")
vehicules.2017<-read.csv(file="vehicules-2017.csv")

#View(caracteristiques.2017)
#View(lieux.2017)
#View(usagers.2017)
#View(vehicules.2017)

year.2017.Two.Tables<-merge(x = caracteristiques.2017, y = lieux.2017, by = "Num_Acc", all = TRUE)
year.2017.Three.Tables<-merge(x = year.2017.Two.Tables, y = usagers.2017, by = "Num_Acc", all = TRUE)
year.2017<-merge(x = year.2017.Three.Tables, y = vehicules.2017, by = "Num_Acc", all = TRUE)

View(year.2017)

#------------------------------Year 2016------------------------------------------------

caracteristiques.2016<-read.csv(file="caracteristiques_2016.csv")
lieux.2016<-read.csv(file="lieux_2016.csv")
usagers.2016<-read.csv(file="usagers_2016.csv")
vehicules.2016<-read.csv(file="vehicules_2016.csv")

#View(caracteristiques.2016)
#View(lieux.2016)
#View(usagers.2016)
#View(vehicules.2016)

year.2016.Two.Tables<-merge(x = caracteristiques.2016, y = lieux.2016, by = "Num_Acc", all = TRUE)
year.2016.Three.Tables<-merge(x = year.2016.Two.Tables, y = usagers.2016, by = "Num_Acc", all = TRUE)
year.2016<-merge(x = year.2016.Three.Tables, y = vehicules.2016, by = "Num_Acc", all = TRUE)

View(year.2016)


#------------------------------Year 2015------------------------------------------------

caracteristiques.2015<-read.csv(file="caracteristiques_2015.csv")
lieux.2015<-read.csv(file="lieux_2015.csv")
usagers.2015<-read.csv(file="usagers_2015.csv")
vehicules.2015<-read.csv(file="vehicules_2015.csv")

#View(caracteristiques.2015)
#View(lieux.2015)
#View(usagers.2015)
#View(vehicules.2015)

year.2015.Two.Tables<-merge(x = caracteristiques.2015, y = lieux.2015, by = "Num_Acc", all = TRUE)
year.2015.Three.Tables<-merge(x = year.2015.Two.Tables, y = usagers.2015, by = "Num_Acc", all = TRUE)
year.2015<-merge(x = year.2015.Three.Tables, y = vehicules.2015, by = "Num_Acc", all = TRUE)

View(year.2015)



#------------------------------Year 2014------------------------------------------------

caracteristiques.2014<-read.csv(file="caracteristiques_2014.csv")
lieux.2014<-read.csv(file="lieux_2014.csv")
usagers.2014<-read.csv(file="usagers_2014.csv")
vehicules.2014<-read.csv(file="vehicules_2014.csv")

#View(caracteristiques.2014)
#View(lieux.2014)
#View(usagers.2014)
#View(vehicules.2014)

year.2014.Two.Tables<-merge(x = caracteristiques.2014, y = lieux.2014, by = "Num_Acc", all = TRUE)
year.2014.Three.Tables<-merge(x = year.2014.Two.Tables, y = usagers.2014, by = "Num_Acc", all = TRUE)
year.2014<-merge(x = year.2014.Three.Tables, y = vehicules.2014, by = "Num_Acc", all = TRUE)

View(year.2014)


#------------------------------Year 2013------------------------------------------------

caracteristiques.2013<-read.csv(file="caracteristiques_2013.csv")
lieux.2013<-read.csv(file="lieux_2013.csv")
usagers.2013<-read.csv(file="usagers_2013.csv")
vehicules.2013<-read.csv(file="vehicules_2013.csv")

#View(caracteristiques.2013)
#View(lieux.2013)
#View(usagers.2013)
#View(vehicules.2013)

year.2013.Two.Tables<-merge(x = caracteristiques.2013, y = lieux.2013, by = "Num_Acc", all = TRUE)
year.2013.Three.Tables<-merge(x = year.2013.Two.Tables, y = usagers.2013, by = "Num_Acc", all = TRUE)
year.2013<-merge(x = year.2013.Three.Tables, y = vehicules.2013, by = "Num_Acc", all = TRUE)

View(year.2013)


#------------------------------Year 2012------------------------------------------------

caracteristiques.2012<-read.csv(file="caracteristiques_2012.csv")
lieux.2012<-read.csv(file="lieux_2012.csv")
usagers.2012<-read.csv(file="usagers_2012.csv")
vehicules.2012<-read.csv(file="vehicules_2012.csv")

#View(caracteristiques.2012)
#View(lieux.2012)
#View(usagers.2012)
#View(vehicules.2012)

year.2012.Two.Tables<-merge(x = caracteristiques.2012, y = lieux.2012, by = "Num_Acc", all = TRUE)
year.2012.Three.Tables<-merge(x = year.2012.Two.Tables, y = usagers.2012, by = "Num_Acc", all = TRUE)
year.2012<-merge(x = year.2012.Three.Tables, y = vehicules.2012, by = "Num_Acc", all = TRUE)

View(year.2012)

#------------------------------Year 2011------------------------------------------------

caracteristiques.2011<-read.csv(file="caracteristiques_2011.csv")
lieux.2011<-read.csv(file="lieux_2011.csv")
usagers.2011<-read.csv(file="usagers_2011.csv")
vehicules.2011<-read.csv(file="vehicules_2011.csv")

#View(caracteristiques.2011)
#View(lieux.2011)
#View(usagers.2011)
#View(vehicules.2011)

year.2011.Two.Tables<-merge(x = caracteristiques.2011, y = lieux.2011, by = "Num_Acc", all = TRUE)
year.2011.Three.Tables<-merge(x = year.2011.Two.Tables, y = usagers.2011, by = "Num_Acc", all = TRUE)
year.2011<-merge(x = year.2011.Three.Tables, y = vehicules.2011, by = "Num_Acc", all = TRUE)

View(year.2011)


#------------------------------Year 2010------------------------------------------------

caracteristiques.2010<-read.csv(file="caracteristiques_2010.csv")
lieux.2010<-read.csv(file="lieux_2010.csv")
usagers.2010<-read.csv(file="usagers_2010.csv")
vehicules.2010<-read.csv(file="vehicules_2010.csv")

#View(caracteristiques.2010)
#View(lieux.2010)
#View(usagers.2010)
#View(vehicules.2010)

year.2010.Two.Tables<-merge(x = caracteristiques.2010, y = lieux.2010, by = "Num_Acc", all = TRUE)
year.2010.Three.Tables<-merge(x = year.2010.Two.Tables, y = usagers.2010, by = "Num_Acc", all = TRUE)
year.2010<-merge(x = year.2010.Three.Tables, y = vehicules.2010, by = "Num_Acc", all = TRUE)

View(year.2010)


#Year 2009 Data (not header) Is Merged In One Line Impossible To 
#Apply Delimitation Due To No-Acknowledgement OF Each Row
#Content + Numbers Are Impossible To Figure Which One For Which Column ------------------------------------------------

#caracteristiques.2009<-read.csv(file="caracteristiques_2009.csv", header = T, dec = ".", sep = "")
#lieux.2009<-read.csv(file="lieux_2009.csv")
#usagers.2009<-read.csv(file="usagers_2009.csv")
#vehicules.2009<-read.csv(file="vehicules_2009.csv")

#View(caracteristiques.2009)
#View(lieux.2009)
#View(usagers.2009)
#View(vehicules.2009)

#year.2009.Two.Tables<-merge(x = caracteristiques.2009, y = lieux.2009, by = "Num_Acc", all = TRUE)
#year.2009.Three.Tables<-merge(x = year.2009.Two.Tables, y = usagers.2009, by = "Num_Acc", all = TRUE)
#year.2009<-merge(x = year.2009.Three.Tables, y = vehicules.2009, by = "Num_Acc", all = TRUE)

#View(year.2009)


#------------------------------Year 2008------------------------------------------------

caracteristiques.2008<-read.csv(file="caracteristiques_2008.csv")
lieux.2008<-read.csv(file="lieux_2008.csv")
usagers.2008<-read.csv(file="usagers_2008.csv")
vehicules.2008<-read.csv(file="vehicules_2008.csv")

#View(caracteristiques.2008)
#View(lieux.2008)
#View(usagers.2008)
#View(vehicules.2008)

year.2008.Two.Tables<-merge(x = caracteristiques.2008, y = lieux.2008, by = "Num_Acc", all = TRUE)
year.2008.Three.Tables<-merge(x = year.2008.Two.Tables, y = usagers.2008, by = "Num_Acc", all = TRUE)
year.2008<-merge(x = year.2008.Three.Tables, y = vehicules.2008, by = "Num_Acc", all = TRUE)

View(year.2008)

#------------------------------Year 2007------------------------------------------------

caracteristiques.2007<-read.csv(file="caracteristiques_2007.csv")
lieux.2007<-read.csv(file="lieux_2007.csv")
usagers.2007<-read.csv(file="usagers_2007.csv")
vehicules.2007<-read.csv(file="vehicules_2007.csv")

#View(caracteristiques.2007)
#View(lieux.2007)
#View(usagers.2007)
#View(vehicules.2007)

year.2007.Two.Tables<-merge(x = caracteristiques.2007, y = lieux.2007, by = "Num_Acc", all = TRUE)
year.2007.Three.Tables<-merge(x = year.2007.Two.Tables, y = usagers.2007, by = "Num_Acc", all = TRUE)
year.2007<-merge(x = year.2007.Three.Tables, y = vehicules.2007, by = "Num_Acc", all = TRUE)

View(year.2007)

#------------------------------Year 2006------------------------------------------------

caracteristiques.2006<-read.csv(file="caracteristiques_2006.csv")
lieux.2006<-read.csv(file="lieux_2006.csv")
usagers.2006<-read.csv(file="usagers_2006.csv")
vehicules.2006<-read.csv(file="vehicules_2006.csv")

#View(caracteristiques.2006)
#View(lieux.2006)
#View(usagers.2006)
#View(vehicules.2006)

year.2006.Two.Tables<-merge(x = caracteristiques.2006, y = lieux.2006, by = "Num_Acc", all = TRUE)
year.2006.Three.Tables<-merge(x = year.2006.Two.Tables, y = usagers.2006, by = "Num_Acc", all = TRUE)
year.2006<-merge(x = year.2006.Three.Tables, y = vehicules.2006, by = "Num_Acc", all = TRUE)

View(year.2006)

#------------------------------Year 2007------------------------------------------------

caracteristiques.2007<-read.csv(file="caracteristiques_2007.csv")
lieux.2007<-read.csv(file="lieux_2007.csv")
usagers.2007<-read.csv(file="usagers_2007.csv")
vehicules.2007<-read.csv(file="vehicules_2007.csv")

#View(caracteristiques.2007)
#View(lieux.2007)
#View(usagers.2007)
#View(vehicules.2007)

year.2007.Two.Tables<-merge(x = caracteristiques.2007, y = lieux.2007, by = "Num_Acc", all = TRUE)
year.2007.Three.Tables<-merge(x = year.2007.Two.Tables, y = usagers.2007, by = "Num_Acc", all = TRUE)
year.2007<-merge(x = year.2007.Three.Tables, y = vehicules.2007, by = "Num_Acc", all = TRUE)

View(year.2007)

#------------------------------Year 2006------------------------------------------------

caracteristiques.2006<-read.csv(file="caracteristiques_2006.csv")
lieux.2006<-read.csv(file="lieux_2006.csv")
usagers.2006<-read.csv(file="usagers_2006.csv")
vehicules.2006<-read.csv(file="vehicules_2006.csv")

#View(caracteristiques.2006)
#View(lieux.2006)
#View(usagers.2006)
#View(vehicules.2006)

year.2006.Two.Tables<-merge(x = caracteristiques.2006, y = lieux.2006, by = "Num_Acc", all = TRUE)
year.2006.Three.Tables<-merge(x = year.2006.Two.Tables, y = usagers.2006, by = "Num_Acc", all = TRUE)
year.2006<-merge(x = year.2006.Three.Tables, y = vehicules.2006, by = "Num_Acc", all = TRUE)

View(year.2006)

#------------------------------Year 2005------------------------------------------------

caracteristiques.2005<-read.csv(file="caracteristiques_2005.csv")
lieux.2005<-read.csv(file="lieux_2005.csv")
usagers.2005<-read.csv(file="usagers_2005.csv")
vehicules.2005<-read.csv(file="vehicules_2005.csv")

#View(caracteristiques.2005)
#View(lieux.2005)
#View(usagers.2005)
#View(vehicules.2005)

year.2005.Two.Tables<-merge(x = caracteristiques.2005, y = lieux.2005, by = "Num_Acc", all = TRUE)
year.2005.Three.Tables<-merge(x = year.2005.Two.Tables, y = usagers.2005, by = "Num_Acc", all = TRUE)
year.2005<-merge(x = year.2005.Three.Tables, y = vehicules.2005, by = "Num_Acc", all = TRUE)

View(year.2005)


year.2005.to.2018<-rbind(year.2018,year.2017,year.2016,year.2015,year.2014,year.2013,year.2012,year.2011,year.2010,year.2008,year.2018,year.2007,year.2006,year.2005)
View(year.2005.to.2018)

# Removing Na and NaN Values
year.2005.to.2018.completed<- na.omit(year.2005.to.2018)
View(year.2005.to.2018.completed)

year.2019.completed<- na.omit(year.2019)
View(year.2019.completed)
