select ccodinte as Codigo_Interno, ffecemis as Fecha_Emision, ctipdocu as Tipo_Documento, cserdocu as Serie_Documento, cnumdocu as Documento, 
	   crucclie as RUC, cnomclie as Cliente, cdirclie as Direccion,
	   nvv_docu as Valor_Venta, nigvdocu as IGV, ntotdocu as Total, ccodalma as Sucursal, canudocu as Anulado
from galaxia_corasur.gx_salidac
where canudocu = 'N' and ctipdocu like '%1%' or ctipdocu like '%3%'


