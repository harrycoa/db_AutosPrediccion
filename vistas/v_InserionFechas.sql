-- Insercion en nueva tabla Fechas
select ffecemis as Fecha_Emision, 
	   year(ffecemis) as Año, 
	   MONTH(ffecemis) as Mes, 
	   datepart(qq,ffecemis) as trimestre
	   into Fechas
from galaxia_corasur.gx_salidac

-- Consulta
select ffecemis, 
	   year(ffecemis) as Año, 
	   MONTH(ffecemis) as MEs, 
	   datepart(qq,ffecemis) as trimestre
from galaxia_corasur.gx_salidac

