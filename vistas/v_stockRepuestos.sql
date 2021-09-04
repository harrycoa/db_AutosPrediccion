-- stock

SELECT ccodprod,ctitprod,nstock1+nstock2+nstock3 as Stock,(nstock1+nstock2+nstock3)*ncosulcs AS total
FROM galaxia_corasur.gx_producto
WHERE ctipregi IN ('D','T','H','L')
AND nstock1+nstock2+nstock3 > 0 ;


-- Productos
select ccodprod as Codigo_Producto, ctitprod as Nombre_Producto, nstock1+nstock2+nstock3 as Stock, ncosulcs as Precio_Unitario, ncpl1011 as Precio_Final
from galaxia_corasur.gx_producto
WHERE ctipregi IN ('D','T','H','L') and ncosulcs > 0 


select ccodprod as Codigo_Producto, ctitprod as Nombre_Producto, nstock1+nstock2+nstock3 as Stock, ncosulcs as Precio_Unitario,ncpl1011 as Precio_Final
from galaxia_corasur.gx_producto
WHERE ccodprod = '485100DE90'


