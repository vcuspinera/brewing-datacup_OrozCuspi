install.packages("ggmap")
install.packages("Imap")
install.packages("gmapsdistance")

set.api.key("MY-GOOGLE-MAPS-API-KEY")


setwd("D:/Mis Documentos/Consultoria/15. Hackaton/Modelo")

library(readr)
library(dplyr)
library(tidyverse)
library(rpivotTable) 
library(ggmap)
library(Imap)
library(gmapsdistance)

ubicaciones_orig <- read_csv("ubicaciones.csv")
str(ubicaciones_orig)
View(ubicaciones_orig)

ubicaciones<-ubicaciones_orig
attach(ubicaciones)

#**********************#
#Stat desc
#**********************#

table(Frecuencia)
hist(Vol_Entrega)

#Clients con entrega
ubicaciones<-ubicaciones[Vol_Entrega>0,]

Total_vol<-sum(Vol_Entrega*Frecuencia)
Avg.daily<-Total_vol/6
Total_visits<-sum(Frecuencia)
Avg.visits<-Total_visits/6

#**********************#
#Calculating distances
#**********************#

gdist(lon.1 =-98.21238, 
      lat.1 =20.50605, 
      lon.2 =-98.22125, 
      lat.2 =20.45813, 
      units="km")




