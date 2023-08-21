# Diego David Flores Cadena
# 21/08/2023
# Matricula: 2070509


# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)

mediciones <-read.csv("Codigos/mediciones.csv", header = TRUE)
head(mediciones) # Funcion head (sirve para ver los primeros 6 datos)

# Descriptivas ------------------------------------------------------------
# medidas de tendencia central media, mediana, rango

mean(mediciones$Altura) #Moda
median(mediciones$Altura) #Mediana
range(mediciones$Altura) #Rango
fivenum(mediciones$Altura) #Representa los 5 numeros del boxplot

# medidas de dispersión desviacion estándar, varianza

sd(mediciones$Altura)
var(mediciones$Altura)


# Gráficas ----------------------------------------------------------------

boxplot(mediciones$Altura,col = "blue", ylab = "Altura (cm)", main = "Sitio 1", ylim = c(6,14))
