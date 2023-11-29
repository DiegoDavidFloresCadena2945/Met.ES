# Diego David Flores Cadena
# 29/08/2023
# Matricula: 2070509


# Ejercicio 1 -------------------------------------------------------------

setwd("C:/Repositorio_GIT_DiegoFlores/Met.ES/Codigos")
Peso <-read.csv("DatosEX.csv", header = TRUE)

mean(Peso$Encino) #17.46
mean(Peso$Pino) #12.68

sum(Peso$Pino) #380.4
sum(Peso$Encino) #523.8
(380.4)^2 #144704.2
(523.8-380.4) #143.4

boxplot(Peso$Encino, Peso$Pino, ylab="Peso (gr)", xlab="Cuadros de madera",col = "gold",)


# Ejercicio 2 -------------------------------------------------------------

azufre<- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,
           22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9,
           24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,
           22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)
t.test(azufre)
#Valor de p: 2.2e-16
#Intervalos de confianza al 95%: 16.87912, 20.53588
#Grados de libertad: 39
#Hipótesis aceptada: Hipótesis Alternativa
#El valor promedio si es mayor ya que el valor declarado por la empresa es de 17.5 Ton/ha y el valor real es de 18.7075 Ton/ha,
#aunque el valor no tiene mucha diferencia.