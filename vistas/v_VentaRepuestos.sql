select sc.ccodinte, ffecemis, ccoddocu, ctipdocu, cserdocu, cnumdocu, ccodclie, crucclie, cnomclie, cdirclie, ccodvend, nforpago, nvaligv_, nvv_docu, nigvdocu, ndesdocu, ntotdocu, 
		sc.ccodalma, canudocu, idtipo, fcaja, 
		ncanvent, sd.ccodinte, sd.ccodalma, sd.ccodprod, ncanprod, npreunit, ntotregi, sd.ccodregi, ncosregi, atendido, dscto, servicio, p.ccodprod, ctitprod,  
	   p.cuniprod, cunicaja, ncosulcs, ncosulcd, ffeculco
from [galaxia_corasur].[gx_salidac] sc inner join
	 [galaxia_corasur].[gx_salidad] sd on sc.ccodinte=sd.ccodinte inner join
	 [galaxia_corasur].[gx_producto] p on sd.ccodprod= p.ccodprod
where ctipdocu='01' and cserdocu= '021' and canudocu='N'

select sc.ccodinte, ffecemis, ccoddocu, ctipdocu, cserdocu, cnumdocu, ccodclie, crucclie, cnomclie, cdirclie, ccodvend, nforpago, nvaligv_, nvv_docu, nigvdocu, ndesdocu, ntotdocu, 
		sc.ccodalma, canudocu, idtipo, fcaja, 
		ncanvent, sd.ccodinte, sd.ccodalma, sd.ccodprod, ncanprod, npreunit, ntotregi, sd.ccodregi, ncosregi, atendido, dscto, servicio, p.ccodprod, ctitprod,  
	   p.cuniprod, cunicaja, ncosulcs, ncosulcd, ffeculco
from [galaxia_corasur].[gx_salidac] sc inner join
	 [galaxia_corasur].[gx_salidad] sd on sc.ccodinte=sd.ccodinte inner join
	 [galaxia_corasur].[gx_producto] p on sd.ccodprod= p.ccodprod
where ctipdocu='03'


select sc.ccodinte,sc.ffecemis, sc.ccodclie, sc.crucclie, sc.cnomclie, sc.cdirclie, sc.nvv_docu ,sc.nigvdocu,sc.ntotdocu, sd.ncanvent, sd.ntotregi,
		sd.ccodprod, p.ccodprod, p.ctitprod, p.ncosulcs, sd.ntotregi/sd.ncanvent as a
from gx_salidac sc inner join gx_salidad sd
on sc.ccodinte=sd.ccodinte inner join gx_producto p
on sd.ccodprod=p.ccodprod
WHERE sc.ccodinte = '_4L10HXOYQ'


select *
from gx_salidac sc inner join gx_salidad sd
on sc.ccodinte=sd.ccodinte inner join gx_producto p
on sd.ccodprod=p.ccodprod
WHERE sc.ccodinte = '_4L10HXOYQ'



 select sc.ccodinte, ffecemis, ccoddocu, ctipdocu, cserdocu, cnumdocu, ccodclie, crucclie, cnomclie, cdirclie, ccodvend, nforpago, nvaligv_, nvv_docu, nigvdocu, ndesdocu, ntotdocu, 
		sc.ccodalma, canudocu, idtipo, fcaja, 
		ncanvent, sd.ccodinte, sd.ccodalma, sd.ccodprod, ncanprod, npreunit, ntotregi, sd.ccodregi, ncosregi, atendido, dscto, servicio, p.ccodprod, ctitprod,  
	   p.cuniprod, cunicaja, ncosulcs, ncosulcd, ffeculco
from [galaxia_corasur].[gx_salidac] sc inner join
	 [galaxia_corasur].[gx_salidad] sd on sc.ccodinte=sd.ccodinte inner join
	 [galaxia_corasur].[gx_producto] p on sd.ccodprod= p.ccodprod
where  ffecemis between  CAST(CONCAT('01','-',datepart(mm,dateadd(mm,-5,getdate())) ,'-',datepart(yy,dateadd(yy,-7,getdate()))) AS DATE) --01-11-11
	   and CAST(CONCAT('01','-',datepart(mm,dateadd(mm,0,getdate())) ,'-',datepart(yy,dateadd(yy,-6,getdate()))) AS DATE) --01-04-12
ORDER BY 6


select sc.ccodinte, ffecemis, ccoddocu, ctipdocu, cserdocu, cnumdocu, ccodclie, crucclie, cnomclie, cdirclie, ccodvend, nforpago, nvaligv_, nvv_docu, nigvdocu, ndesdocu, ntotdocu, 
		sc.ccodalma, canudocu, idtipo, fcaja, 
		ncanvent, sd.ccodinte, sd.ccodalma, sd.ccodprod, ncanprod, npreunit, ntotregi, sd.ccodregi, ncosregi, atendido, dscto, servicio, p.ccodprod, ctitprod,  
	   p.cuniprod, cunicaja, ncosulcs, ncosulcd, ffeculco
from [galaxia_corasur].[gx_salidac] sc inner join
	 [galaxia_corasur].[gx_salidad] sd on sc.ccodinte=sd.ccodinte inner join
	 [galaxia_corasur].[gx_producto] p on sd.ccodprod= p.ccodprod
	   where cnumdocu = '17803'
where ctipdocu='01' and cserdocu= '021' and canudocu='N'



-- ordenado
select sc.ccodinte as CodigoInterno, ffecemis as FechaEmision, ctipdocu as TipoDoc, cserdocu as SerieDoc, cnumdocu as NumDoc, 
		ccodclie as CodigoCliente, crucclie as RUC, cnomclie as Cliente, cdirclie as Direccion, nforpago as FormaPago, nvv_docu as ValorVenta, nigvdocu as IGV, ndesdocu as Descuento, ntotdocu as MontoTotal, 
		sc.ccodalma as Almacen, canudocu as Anulado, idtipo as Tipo, 
		ncanvent as CantVenta, sd.ccodinte as CodigoInterno, sd.ccodprod as CodigoProducto, ncanprod as CantidadProducto, npreunit as PrecioUnitario, ntotregi as TotalRegistrado, ncosregi, dscto, servicio, ctitprod as Producto,  
	    cunicaja as Unidad, ncosulcs as rev
from gx_salidac sc inner join
	 gx_salidad sd on sc.ccodinte=sd.ccodinte inner join
	 gx_producto p on sd.ccodprod= p.ccodprod
where ctipdocu='01' and cserdocu= '021' and canudocu='N'

