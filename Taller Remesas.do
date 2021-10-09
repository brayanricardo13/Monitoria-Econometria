* Taller Econometria 2 corte 
*Remesas 
*Importamos la base de datos 
import excel "C:\Users\Familia Fonseca\Documents\GitHub\Monitoria-Econometria\Bases de datos\Remesas.xlsx", sheet("Hoja2") firstrow
* Declaramos la variable como serie de tiempo 
tsset Fecha, daily

*Graficas 
twoway (bar RemesasMillonesdedólaresUS Fecha) (line VariacionRemesas Fecha, yaxis(2)) 
tsline DepreciacionReal Depreciacionnominal
tsline InflacionEeuu
tsline Politicamonetaria
tsline PIBRealEEUU
tsline PibRealcolombiaCOP
*corelaciones 
correlate DepreciacionReal Depreciacionnominal InflacionEeuu Politicamonetaria PibRealcolombiaCOP PIBRealEEUU
* resumen de los datos 
sum DepreciacionReal Depreciacionnominal InflacionEeuu Politicamonetaria PibRealcolombiaCOP PIBRealEEUU,d 
*matriz 
graph matrix DepreciacionReal Depreciacionnominal InflacionEeuu Politicamonetaria PibRealcolombiaCOP PIBRealEEUU, half

*crear rezagos 
gen VariacionRemesas_1 = RemesasMillonesdedólaresUS[_n - 1]
*crear primeras diferencias 

gen PIBRealEEUU_1 = PIBRealEEUU[_n - 1]
gen PIBRealEEUU_2= ( PIBRealEEUU - PIBRealEEUU[_n - 1] )/ PIBRealEEUU[_n - 1]

tsline PIBRealEEUU_2
*estimacion 

reg VariacionRemesas VariacionRemesas_1 Pibrealcolombia PIBRealEEUU_1 Politicamonetaria DepreciacionReal PIBRealEEUU_2

*redisuos 
predict uhat 
histogram uhat, normal 

reg VariacionRemesas VariacionRemesas_1 Pibrealcolombia PIBRealEEUU_1 Politicamonetaria  PIBRealEEUU_2 InflacionEeuu Depreciacionnominal

*redisuos 
predict uhat1 
histogram uhat1, normal 



































 
