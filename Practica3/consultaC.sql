

CREATE OR REPLACE VIEW intervalo AS
	SELECT 
		isbn, 
		MAX(date(fecha_fin))-MIN(date(fecha_inicio)) AS tiempo,
		id_fase 
	FROM correccion  
	GROUP BY isbn,id_fase 
	ORDER BY tiempo DESC;


SELECT 
	max_intervalo.id_fase AS fase,isbn,intervalo.tiempo 
FROM intervalo,
(SELECT 
	MAX(tiempo) AS max_intervalo, 
	id_fase 
FROM intervalo  
GROUP BY id_fase) 
AS max_intervalo 
WHERE 
	intervalo.tiempo=max_intervalo.max_intervalo 
ORDER BY fase;
