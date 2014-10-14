CREATE OR REPLACE FUNCTION alertaParado(integer) RETURNS void  AS
$$
  DECLARE

    dias ALIAS FOR $1;
    isbnLibro text;
    mensaje text;
    userCoordinador integer;
    contador integer;

  BEGIN   
    
    IF dias<0 THEN
	RAISE EXCEPTION 'El parametro debe ser mayor o igual que 0';
    END IF;

    contador=0;

    FOR isbnLibro IN SELECT DISTINCT correccion.isbn
      FROM correccion,proyecto WHERE correccion.isbn=proyecto.isbn
      AND proyecto.isbn!='FI' AND fecha_fin IS NOT NULL EXCEPT 
      SELECT DISTINCT correccion.isbn FROM correccion,proyecto WHERE correccion.isbn=proyecto.isbn
      AND proyecto.isbn!='FI'   AND fecha_fin IS NOT NULL
      AND fecha_fin>=timestamp'2011-10-16'-90*interval'1 days' 
      AND fecha_fin<=timestamp'2011-10-16'
    LOOP

      SELECT INTO userCoordinador coordinador FROM proyecto WHERE isbnLibro=proyecto.isbn;
      
      mensaje:='El libro '||isbnLibro||' lleva estancado' 
        || ' más de '|| dias || ' dias.';

      INSERT INTO alerta(fecha,id_usuario,texto)
        VALUES (timestamp'2011-10-16',userCoordinador,mensaje);

      contador:=contador+1;

   END LOOP;

   RAISE NOTICE ' % libros estancados en el sistema',contador;

END;
$$ LANGUAGE plpgsql;


