* poplnPrep.do v 0.10               DCC/HM                 yyyy-mm-dd:2014-06-29
*---|----1----|----2----|----3----|----4----|----5----|----6----|----7----|----8
*

/* Script to extract all data from DBF files and convert to .dta for each year
of births.
*/

vers 11
clear all
set more off
cap log close

********************************************************************************
*** (1) Globals and locals
********************************************************************************
global DIR "~/investigacion/2014/MexAbort"
global DAT "~/database/MexDemografia/Natalidades"


********************************************************************************
*** (2) Unzip raw birth data
********************************************************************************
foreach year of numlist 2001(1)2012 {
	ls "$DAT/`year'"
*	unzipfile "$DAT/`year'/natalidad_base_datos_`year'", replace
}
