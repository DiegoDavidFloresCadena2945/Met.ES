# Diego David Flores Cadena
# 28/11/2023
# Matricula: 2070509

# Importar datos ----------------------------------------------------------
setwd("C:/Repositorio_GIT_DiegoFlores/Met.ES/Codigos")
diametros <-read.csv("DAP Chapote y Ébano.csv", header = TRUE)
head(diametros) # Funcion head (sirve para ver los primeros 6 datos)

# Descriptivas ------------------------------------------------------------
# medidas de tendencia central media, mediana, rango

mean(diametros$Chapote.amarillo)
mean(diametros$Ébano)#Media

median(diametros$Chapote.amarillo)
median(diametros$Ébano)#Mediana

range(diametros$Chapote.amarillo)
range(diametros$Ébano)#Rango

fivenum(diametros$Chapote.amarillo)
fivenum(diametros$Ébano)#Representa los 5 numeros del boxplot

# medidas de dispersión desviacion estándar, varianza

sd(diametros$Chapote.amarillo)
sd(diametros$Ébano)

var(diametros$Chapote.amarillo)
var(diametros$Ébano)


# Gráficas ----------------------------------------------------------------

boxplot(diametros$Chapote.amarillo, col = "blue", ylab = "Diametro", main = "Chapote amarillo")
boxplot(diametros$Ébano, col = "yellow", ylab = "Diametro", main = "Ébano")

plot(diametros$Chapote.amarillo, diametros$Ébano, col="blue", pch=19)

# Procedimiento -----------------------------------------------------------
# Aplicar la función de t.test (Nunca se pone la media, se ponen los datos de origen)
t.test(diametros$Chapote.amarillo,mu=11)
t.test(diametros$Ébano,mu=11)

cor.test(diametros$Chapote.amarillo, diametros$Ébano)
# t = 2.4064, df = 13, p-value = 0.0317

summary(diametros)
# Chapote.amarillo     Ébano      
# Min.   :13.37    Min.   :10.19  
# 1st Qu.:22.60    1st Qu.:21.48  
# Median :30.24    Median :33.42  
# Mean   :34.10    Mean   :34.13  
# 3rd Qu.:39.63    3rd Qu.:43.29  
# Max.   :91.35    Max.   :62.71

# Hipótesis ---------------------------------------------------------------
# Chapote amarillo: t = 4.4829, df = 14, p-value = 0.0005158
# Ebano: t = 5.2638, df = 14, p-value = 0.0001198
# HIPOTESIS NULA: Es igual a 0
# HIPOTESIS ALTERNATIVA: la verdadera media no es igual a 11
