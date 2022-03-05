********************************************************************************
*			GRAN ENCUESTA INTEGRADA DE HOGARES
*	
********************************************************************************
*Fuente:DANE-Gran Encuesta Integrada de Hogares
*Periodo: Trimestre 1 - 2021
********************************************************************************
/*Descripción: */
********************************************************************************
*Directorios
global general "C:\Users\Familia Fonseca\Downloads\Diciembre.dta" // Reemplace esta ruta con la dirección donde usted ha guardado los datos

*******************************
*        DICIEMBRE      
*******************************

*Fijar Directorio 
cd "C:\Users\Familia Fonseca\Downloads\Diciembre.dta\DTA" // Reemplace el nombre de al carpeta donde usted ha guardado los datos de ese mes
clear all
set more off

*************Cabecera***************

use "Cabecera - Características generales (Personas).DTA"

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Fuerza de trabajo.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Inactivos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Ocupados.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Otras actividades y ayudas en la semana.dta", force
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Otros ingresos.dta", force
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Desocupados.dta"
drop _merge 

*Pegar regitro de viviendas 
merge m:1 DIRECTORIO SECUENCIA_P using "Cabecera - Vivienda y Hogares.dta", force
drop _merge 

*guardar la base de datos 
compress // reducir tamaño de memoria de la base
cd "$general"
save "Enero_Cabecera_2021.dta", replace

********************Resto*********************

*Fijar DIRECTORIO 
cd "C:\Users\Familia Fonseca\Downloads\Diciembre.dta\DTA"
clear all
set more off

use "Resto - Caracteristicas generales (Personas).DTA"

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Fuerza de trabajo.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Inactivos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Ocupados.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Otras actividades y ayudas en la semana.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Otros ingresos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Desocupados.dta"
drop _merge 

*Pegar regitro de viviendas 
merge m:1 DIRECTORIO SECUENCIA_P using "Resto - Vivienda y Hogares.dta", force
drop _merge 

*guardar la base de datos 
compress // reducir tamaño de memoria de la base
cd "C:\Users\Familia Fonseca\Downloads\Diciembre.dta\DTA"
save "Enero_Resto_2021.dta", replace

*******Se conforma el mes nacional****************+
clear

use Enero_cabecera_2021.dta
append using Enero_resto_2021.dta, force
compress
cd "$general"
save "Enero_Nal_2021", replace

*******************************
*        FEBRERO       
*******************************

*Fijar Directorio 
cd "$general\Febrero2021" // Reemplace el nombre de al carpeta donde usted ha guardado los datos de ese mes
clear all
set more off

*************Cabecera***************

use "Cabecera - Características generales (Personas).dta"

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Fuerza de trabajo.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Inactivos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Ocupados.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Otras actividades y ayudas en la semana.dta", force
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Otros ingresos.dta", force
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Desocupados.dta"
drop _merge 

*Pegar regitro de viviendas 
merge m:1 DIRECTORIO SECUENCIA_P using "Cabecera - Vivienda y Hogares.dta", force
drop _merge 

*guardar la base de datos 
compress // reducir tamaño de memoria de la base
cd "$general"
save "Febrero_Cabecera_2021.dta", replace

********************Resto*********************

*Fijar DIRECTORIO 
cd "$general\Febrero2021"
clear all
set more off

use "Resto - Caracteristicas generales (Personas).dta"

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Fuerza de trabajo.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Inactivos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Ocupados.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Otras actividades y ayudas en la semana.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Otros ingresos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Desocupados.dta"
drop _merge 

*Pegar regitro de viviendas 
merge m:1 DIRECTORIO SECUENCIA_P using "Resto - Vivienda y Hogares.dta", force
drop _merge 

*guardar la base de datos 
compress // reducir tamaño de memoria de la base
cd "$general"
save "Febrero_Resto_2021.dta", replace

*******Se conforma el mes nacional****************+
clear
use Febrero_cabecera_2021.dta
append using Febrero_resto_2021.dta, force
compress
cd "$general"
save "Febrero_Nal_2021", replace



*******************************
*        MARZO       
*******************************

*Fijar Directorio 
cd "$general\Marzo2021" // Reemplace el nombre de al carpeta donde usted ha guardado los datos de ese mes
clear all
set more off

*************Cabecera***************

use "Cabecera - Características generales (Personas).dta"

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Fuerza de trabajo.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Inactivos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Ocupados.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Otras actividades y ayudas en la semana.dta", force
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Otros ingresos.dta", force
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Cabecera - Desocupados.dta"
drop _merge 

*Pegar regitro de viviendas 
merge m:1 DIRECTORIO SECUENCIA_P using "Cabecera - Vivienda y Hogares.dta", force
drop _merge 

*guardar la base de datos 
compress // reducir tamaño de memoria de la base
cd "$general"
save "Marzo_Cabecera_2021.dta", replace

********************Resto*********************

*Fijar DIRECTORIO 
cd "$general\Marzo2021"
clear all
set more off

use "Resto - Caracteristicas generales (Personas).dta"

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Fuerza de trabajo.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Inactivos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Ocupados.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Otras actividades y ayudas en la semana.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Otros ingresos.dta"
drop _merge 

merge 1:1  DIRECTORIO SECUENCIA_P ORDEN using "Resto - Desocupados.dta"
drop _merge 

*Pegar regitro de viviendas 
merge m:1 DIRECTORIO SECUENCIA_P using "Resto - Vivienda y Hogares.dta", force
drop _merge 

*guardar la base de datos 
compress // reducir tamaño de memoria de la base
cd "$general"
save "Marzo_Resto_2021.dta", replace

*******Se conforma el mes nacional****************+
clear
use Marzo_cabecera_2021.dta
append using Marzo_resto_2021.dta, force
compress
cd "$general"
save "Marzo_Nal_2021", replace

** Ahora conformemos el trimestre 1 de 2021 **

clear all
cd "$general"
set more off
use Enero_Nal_2021
append using Febrero_Nal_2021.dta, force
append using Marzo_Nal_2021.dta ,force
compress

save "Trimestre1_NACIONAL_2021", replace
