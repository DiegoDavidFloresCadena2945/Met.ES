# Diego David Flores Cadena
# 25/09/2023
# Matricula: 2070509


# Crear base de datos -----------------------------------------------------

x<-c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y<-c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)

d2<-data.frame(x, y)


# Estadísticas descriptivas -----------------------------------------------

mean(d2$x):var(d2$x)
mean(d2$y):var(d2$y)


# Aplicar correlación -----------------------------------------------------

cor.test(d2$x, d2$y)


# Gráfica -----------------------------------------------------------------

plot(d2$x, d2$y,
     pch=19,
     xlab = "Valor de x",
     ylab = "Valor de y",
     col="skyblue")
