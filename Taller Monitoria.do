*Taller Monitoria 19/08/2021 
*Econometria 1 
*importar datos
import excel "C:\Users\Familia Fonseca\Desktop\Monitoria.xlsx", sheet("Hoja4") firstrow

* Declaramos la variable como serie de tiempo 
tsset Fecha, daily
tsline Bancolombia Ecopetrol Colcap

tsline Bancolombia
tsline  Ecopetrol
tsline  Colcap

gen lnBancolombia = ln(Bancolombia)
gen  lnEcopetrol =ln(Ecopetrol)
gen lnColcap =ln(Colcap)

tsline lnBancolombia lnEcopetrol lnColcap

tsline varBan varCol varEco

tsline lnEcopetrol lnColcap
tsline lnBancolombia lnColcap

*1.2 
twoway (scatter Colcap Ecopetrol) 
twoway (scatter Colcap Bancolombia) 

twoway (scatter varCol varEco) 
twoway (scatter varCol varBan ) 



twoway (scatter Colcap Ecopetrol) (lfit Colcap Ecopetrol)
twoway (scatter Colcap Bancolombia) (lfit Colcap Bancolombia)

reg Colcap Ecopetrol
reg Colcap Bancolombia

regress Colcap Preferencial, noconstant
reg Colcap Ordinaria,noconstant



