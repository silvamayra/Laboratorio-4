
########################################
## Universidad del Valle de Guatemala ##
## Laboratorio 4: Data Science        ##
## Autores:                           ##
##    Mayra Silva                     ##
##    Odalis Reyes                    ##           
##    Ivan Maldonado                  ##
########################################

setwd("C:/Users/smayr/Documents/Tercer año/Semestre 6/Data Science/Laboratorio 4/Laboratorio-4")

# Leyendo el dataset de csv importacion
dataTrain <- read.csv("train.csv", TRUE, ",")
# Volviendo el csv en un data frame
class(dataTrain)


# Leyendo el dataset de csv importacion
dataTest <- read.csv("test.csv", TRUE, ",")
# Volviendo el csv en un data frame
class(dataTest)