-- Ventas Repuestos
select  sc.ccodinte as Codigo_Interno,
		sc.ffecemis as Fecha_Emision, 
        sc.ccodclie as Codigo_Cliente, 
        sc.crucclie as RUC, 
        sc.cnomclie as Cliente, 
        sc.cdirclie as Direccion, 
        sc.ctipdocu as Tipo,
        sc.cserdocu as Serie,
        sc.cnumdocu as Numero_Comprobante,
		sc.nvv_docu,
        sc.nigvdocu,
        sc.ntotdocu, 
        sum(sd.ntotregi) as Subtotal,
        sum(sd.ntotregi)+sc.nigvdocu as Total
from galaxia_corasur.gx_salidac sc inner join galaxia_corasur.gx_salidad sd
on sc.ccodinte=sd.ccodinte inner join galaxia_corasur.gx_producto p
on sd.ccodprod=p.ccodprod
-- WHERE sc.ccodinte = '_4L10HXOYQ'
where canudocu='N' and ctipdocu='01' or ctipdocu='03'
group by sc.ccodinte,sc.ffecemis, sc.ccodclie, sc.crucclie, sc.cnomclie, sc.cdirclie,sc.ctipdocu,sc.cserdocu, sc.cnumdocu,sc.nvv_docu ,sc.nigvdocu,sc.ntotdocu
order by ffecemis asc;


-- Factura en un Registro
select sc.ccodinte,sc.ffecemis, sc.ccodclie, sc.crucclie, sc.cnomclie, sc.cdirclie, sc.cnumdocu,sc.nvv_docu ,sc.nigvdocu,sc.ntotdocu		
from gx_salidac sc 
where canudocu='N' and ctipdocu='01' or ctipdocu='03'
-- WHERE sc.ccodinte = '_4L10HXOYQ';