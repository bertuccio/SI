
SELECT 
	pagProcesadas.id_fase AS fase, 
	pendientes, 
	procesadas 
FROM (SELECT 
	COUNT(n_pagina) AS procesadas, 
	id_fase 
FROM correccion 
WHERE 
	fecha_fin>=timestamp'2011-10-16'-interval' 1 year'  
GROUP BY id_fase) 
AS pagProcesadas 

LEFT JOIN (SELECT 
	COUNT(n_pagina) AS pendientes, 
	id_fase 
FROM correccion 
WHERE 
	fecha_fin is null 
GROUP BY id_fase) 
AS pagPendientes 
ON pagProcesadas.id_fase=pagPendientes.id_fase 
ORDER BY fase;
