
########################################
## Universidad del Valle de Guatemala ##
## Laboratorio 4: Data Science        ##
## Autores:                           ##
##    Mayra Silva                     ##
##    Odalis Reyes                    ##           
##    Ivan Maldonado                  ##
########################################


# Importando librerÌas

library(fitdistrplus)
require(ggpubr) # Para mejorar la visualizaci√≥n gr√°fica
require(tidyverse) # Para explotar, manipular y visualizar datos que comparten info
require(corrplot) # Para visualizar la matriz de correlaci√≥n
require(cluster) #Para calcular la silueta
library(fpc) # Para hacer el plotcluster
library(NbClust) # Para determinar el numero de clusters optimo
library(factoextra) # Para hacer graficos bonitos de clustering
library(rela) # Para poder utilizar paf()
library(psych) # Para poder utilizar KMO()
library(FactoMineR)
library(corrplot)
library(REdaS)
library(ggplot2) # Graficas bonitas
library(ggpubr) # Graficas bonitas x2
#library(ggmap)
library(arules) # Reglas de asociacion
library(factoextra) 
library(arulesViz)
library(dplyr)
library(caret) # Muestreo estratificado
library(class) # Para KNN

setwd("C:/Users/smayr/Documents/Tercer aÒo/Semestre 6/Data Science/Laboratorio 4/Laboratorio-4")

# Leyendo el dataset de csv importacion
dataTrain <- read.csv("train.csv", TRUE, ",")
# Volviendo el csv en un data frame
class(dataTrain)


# Leyendo el dataset de csv importacion
dataTest <- read.csv("test.csv", TRUE, ",")
# Volviendo el csv en un data frame
class(dataTest)




#---------------------------- An·lisis Exploratorio ------------------------------------

summary(dataTrain)

#Ajuste de normalidad, para la variable diesel. 
descdist(dataTrain$diagnosis, discrete= TRUE)

diagnofit <- fitdist(data$Diesel,"norm")

plot(diagnofit)

