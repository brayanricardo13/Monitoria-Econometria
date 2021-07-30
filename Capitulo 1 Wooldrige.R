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

# 2) estime la ecucion de regresion simple 

regresion <- lm(k401k$prate ~ k401k$mrate, data = k401k)# roe es el regresor de salary 
regresion
summary(regresion)

plot(k401k$mrate, k401k$prate,
     main="Plan de pension vs Generosidad del plan ",
     xlab='k401k$mrate',
     ylab='k401k$prate',
     ylim=c(0,5),
     xlim=c(0,100))

abline(regresion)

cov(k401k$prate, k401k$mrate)





