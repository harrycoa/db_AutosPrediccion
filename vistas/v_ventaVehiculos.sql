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
  where  (txc.c3 <> '') and (ctipdocu = '01' or ctipdocu ='03') 