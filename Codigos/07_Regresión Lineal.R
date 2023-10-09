# Diego David Flores Cadena
# 02/10/2023
# Matricula: 2070509

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19, col="gold")

erup.lm<-lm(erupciones$eruptions ~ erupciones$waiting)
erup.lm#Obtenemos el valor de alfa y beta

summary(erup.lm) #Obtener la significancia

erupciones$yprima<--1.874016+0.075628*erupciones$waiting
erupciones$estimados<-erup.lm$fitted.values

abline(erup.lm, col="red")

range(erupciones$waiting) #43 96

erup<-c(80,43,45,53,61,95)

ypr<- -1.874016+0.075628*erup
erup

-1.874016+0.075628*80 #4.176224
-1.874016+0.075628*43 #1.377988
-1.874016+0.075628*45 #1.529244
-1.874016+0.075628*53 #2.134268
-1.874016+0.075628*61 #2.739292
-1.874016+0.075628*95 #5.310644

#El rango de los valores de x son mi ventana de predicción de yprima
#range(erupciones$waiting)