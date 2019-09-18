
########################################
## Universidad del Valle de Guatemala ##
## Laboratorio 4: Data Science        ##
## Autores:                           ##
##    Mayra Silva                     ##
##    Odalis Reyes                    ##           
##    Ivan Maldonado                  ##
########################################


# Importando librer?as

library(fitdistrplus)
require(ggpubr) # Para mejorar la visualización gráfica
require(tidyverse) # Para explotar, manipular y visualizar datos que comparten info
require(corrplot) # Para visualizar la matriz de correlación
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
library(imager)
library(purrr)

# Leyendo el dataset de csv importacion
dataTrain <- read.csv("train.csv", TRUE, ",")
# Volviendo el csv en un data frame
class(dataTrain)


# Leyendo el dataset de csv importacion
dataTest <- read.csv("test.csv", TRUE, ",")
# Volviendo el csv en un data frame
class(dataTest)




#---------------------------- An?lisis Exploratorio ------------------------------------

summary(dataTrain)

#Ajuste de normalidad, para la variable diesel. 
descdist(dataTrain$diagnosis, discrete= TRUE)

diagnofit <- fitdist(data$Diesel,"norm")

plot(diagnofit)

#---------------------------- An?lisis de imagen ------------------------------------

# Aplicando escala de frises
im <- load.image("/Users/quiebres/Documents/Ivan Maldonado/UVG/Sexto Semestre/Data Science/Laboratorio-4/test_images/0a2b5e1a0be8.png") %>% grayscale
plot(im)

# Detectando ovjetos pequeños

isoblur(im,5) %>% get.centers("99.8%") %$% points(mx,my,col="red")


scales <- seq(2,20,l=10)

hessdet <- function(im,scale=1) isoblur(im,scale) %>% imhessian %$% { scale^2*(xx*yy - xy^2) }

d.max <- map_il(scales,function(scale) hessdet(im,scale)) %>% parmax
plot(d.max,main="Point-wise maximum across scales")