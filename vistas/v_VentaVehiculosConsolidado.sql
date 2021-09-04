-- Venta Vehiculos
SELECT txc.ccodinte as Codigo_Interno, 
		txc.ffecemis as Fecha_Emision, 
        txc.ctipdocu as Tipo_Documento, 
        txc.cserdocu as Serie_Documento, 
        txc.cnumdocu as Numero_Documento, 
        txc.ccodclie as Codigo_Cliente, 
        txc.crucclie as RUC, 
        txc.cnomclie as Cliente, 
        txc.cdirclie as Direccion,
        txc.ctipmone as Moneda, 
        txc.nvv_docu as Valor_Venta,
        txc.nigvdocu as IGV, 
        txc.ntotdocu as Total, 
        txc.canudocu, txc.cnomtran, 
		txc.c1, txc.c2, txc.c3, txc.c4, txc.c5, txc.c6, txc.c7, txc.c8, txc.c25, txc.cci, txc.fentrega,
		txd.ncanvent, txd.ntotregi, txd.ccodregi, txd.servicio, txd.proforma
  FROM galaxia_corasur.tx_salidac as txc inner join galaxia_corasur.tx_salidad as txd
  on txc.ccodinte = txd.ccodinte
  where txc.ccodinte = '_4O60JXIXR';
  group by
  
  
select * from tx_salidac inner join tx_salidad
on tx_salidac.ccodinte=tx_salidad.ccodinte
where tx_salidac.ccodinte = '_4O60JXIXR';

select * from tx_salidac
where ccodinte = '_4O60JXIXR';







  SELECT txc.ccodinte, txc.ffecemis, txc.ccoddocu, txc.ctipdocu, txc.cserdocu, txc.cnumdocu, txc.ccodclie, txc.crucclie, txc.cnomclie, txc.cdirclie,
			txc.ctipmone, txc.nvaligv_, txc.nvv_docu,txc.nigvdocu, txc.ntotdocu, txc.canudocu, txc.cnomtran, 
			txc.c1, txc.c2, txc.c3, txc.c4, txc.c5, txc.c6, txc.c7, txc.c8, txc.c25, txc.cci, txc.fentrega,
			txd.ncanvent, txd.ccodinte, txd.ccodprod, txd.ncanprod, txd.npreunit, txd.ntotregi, txd.ccodregi, txd.servicio, txd.proforma
  FROM galaxia_corasur.tx_salidac as txc inner join galaxia_corasur.tx_salidad as txd
  on txc.ccodinte = txd.ccodinte
  where txc.ccodinte = '_4O60JXIXR';

  SELECT txc.ccodinte, txc.ffecemis, txc.ccoddocu, txc.ctipdocu, txc.cserdocu, txc.cnumdocu, txc.ccodclie, txc.crucclie, txc.cnomclie, txc.cdirclie,
			txc.ctipmone, txc.nvaligv_, txc.nvv_docu,txc.nigvdocu, txc.ntotdocu, txc.canudocu, txc.cnomtran, 
			txc.c1, txc.c2, txc.c3, txc.c4, txc.c5, txc.c6, txc.c7, txc.c8, txc.c25, txc.cci, txc.fentrega,
			txd.ncanvent, txd.ccodinte, txd.ccodprod, txd.ncanprod, txd.npreunit, txd.ntotregi, txd.ccodregi, txd.servicio, txd.proforma
  FROM galaxia_corasur.tx_salidac as txc inner join galaxia_corasur.tx_salidad as txd
  on txc.ccodinte = txd.ccodinte
  where txc.ffecemis = '2016-06-30'
  
  
  
  
  
  
  
  SELECT txc.ccodinte, txc.ffecemis, txc.ccoddocu, txc.ctipdocu, txc.cserdocu, txc.cnumdocu, txc.ccodclie, txc.crucclie, txc.cnomclie, txc.cdirclie,
			txc.ctipmone, txc.nvaligv_, txc.nvv_docu,txc.nigvdocu, txc.ntotdocu, txc.canudocu, txc.cnomtran, 
			txc.c1, txc.c2, txc.c3, txc.c4, txc.c5, txc.c6, txc.c7, txc.c8, txc.c25, txc.cci, txc.fentrega,
			txd.ncanvent, txd.ccodinte, txd.ccodprod, txd.ncanprod, txd.npreunit, txd.ntotregi, txd.ccodregi, txd.servicio, txd.proforma
  FROM galaxia_corasur.tx_salidac as txc inner join galaxia_corasur.tx_salidad as txd
  on txc.ccodinte = txd.ccodinte
  where cnumdocu = '17803'
  where ctipdocu = '01' or ctipdocu ='03'