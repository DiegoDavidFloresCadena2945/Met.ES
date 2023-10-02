# Diego David Flores Cadena
# 02/10/2023
# Matricula: 2070509

library(repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")


# Estadísticas descriptivas -----------------------------------------------
mean(erupciones$eruptions) #3.487783
mean(erupciones$waiting) #70.89706

sd(erupciones$eruptions) #1.141371
sd(erupciones$waiting) #13.59497

var(erupciones$eruptions) #1.302728
var(erupciones$waiting) #184.8233
# Hipótesis ---------------------------------------------------------------
#La hipótesis es alternativa

# Correlación -------------------------------------------------------------
cor.test(erupciones$eruptions, erupciones$waiting) #La correlación si es significativa

# Gráfica -----------------------------------------------------------------
plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duración de las erupciones (min)", pch = 19, col="gold")

