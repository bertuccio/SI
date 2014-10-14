CREATE OR REPLACE FUNCTION borraUsuariosInactivos(integer) RETURNS void AS
$$
  DECLARE

    idUsuario integer;
    dias ALIAS FOR $1;
    contador integer;

  BEGIN

    IF dias<0 THEN
	RAISE EXCEPTION 'El parametro debe ser mayor o igual que 0';
    END IF;

    contador:=0;

    FOR idUsuario IN SELECT id_usuario FROM usuario 
      WHERE escolaborador=false AND escorrector=true AND escoordinador=false 
      AND usuario.fecha<=timestamp'2011-10-16'-dias*interval '1 days' 
      EXCEPT SELECT DISTINCT corrector FROM correccion WHERE fecha_fin IS NOT null 
      AND fecha_fin>=timestamp'2011-10-16'-dias*interval '1 days' ORDER BY id_usuario
    LOOP

      DELETE FROM usuario WHERE id_usuario=idUsuario;
      contador:=contador+1;
      RAISE NOTICE 'Usuario con id % usuarios borrado',idUsuario;
    END LOOP;

    RAISE NOTICE '% usuarios borrados',contador;

END;
$$ LANGUAGE plpgsql;




