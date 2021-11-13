*Monitoria 13/11/2021
*llamamos la base de datos 
 use "C:\Users\Familia Fonseca\Downloads\MLB1.DTA"
*descripcion de datos 
describe
sum 
table nl

*regresion 
reg salary nl
twoway (lfit  salary nl)
reg salary nl hits
gen salary2= salary * nl
twoway (lfit salary2 hits) (lfit salary hits)


* ¿el modelo es estadisticamente significativo?
* ¿ el variable es significativa no por que?
*¿cuanta gana en promedio un jugador de liga nacional

