# 30/07/2021 Monitoria Econometria 
# 1) Análisis de regresión con datos de corte Trasversal
install.packages("wooldridge")
library(wooldridge)
# Ejercicio c2.1 
data('k401k')

# 1) Encuentre el promedio de la tasa de participación y el promedio de la tasa de contribución para la muestra.
mean(k401k$prate)#promedio tasa de participacion 
var(k401k$prate)
mean(k401k$mrate)#promedio contribucion 
var(k401k$mrate)
summary(k401k)#resumen 




