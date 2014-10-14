CREATE OR REPLACE FUNCTION tgCheckCorreccion() RETURNS TRIGGER AS $tgCheckCorreccion$
  DECLARE

    proyectoRow proyecto%ROWTYPE;
    usuarioRow usuario%ROWTYPE;
    promocion integer;
    mensaje text;

  BEGIN
    IF OLD.fecha_fin IS NULL AND NEW.fecha_fin IS NOT NULL THEN

      SELECT INTO proyectoRow * FROM proyecto WHERE proyecto.isbn=NEW.isbn;

      IF NEW.id_fase='PF' THEN

        UPDATE pagina SET id_fase='PF' WHERE isbn=NEW.isbn AND n_pagina=NEW.n_pagina;
        UPDATE proyecto SET n_paginaspf=proyectoRow.n_paginaspf+1 WHERE isbn=OLD.isbn;
        SELECT INTO proyectoRow * FROM proyecto WHERE isbn=OLD.isbn;

        IF proyectoRow.n_paginas=proyectoRow.n_paginaspf THEN

          UPDATE proyecto SET id_fase='PF' WHERE isbn=NEW.isbn;

           RAISE NOTICE 'Proyecto correspondiente al libro %, ha cambiado de la fase F0 a PF.', NEW.isbn;

        END IF;

       

        SELECT INTO usuarioRow * FROM usuario WHERE usuario.id_usuario=NEW.corrector;

        UPDATE usuario SET n_paginaspf=usuarioRow.n_paginaspf+1 WHERE id_usuario=NEW.corrector;
        SELECT INTO usuarioRow * FROM usuario WHERE id_usuario=NEW.corrector;
 
        SELECT INTO promocion valor FROM var_config WHERE variable='pag_promotf';

        IF usuarioRow.nivel='F0' AND usuarioRow.fecha<=timestamp'2011-10-16'-interval'21 days' 
        AND usuarioRow.n_paginaspf=promocion THEN

          UPDATE usuario SET nivel='PF' WHERE id_usuario=NEW.corrector;
          RAISE NOTICE 'El usuario % ha sido promocionado a nivel PF', usuarioRow.login;

        END IF;

      ELSIF NEW.id_fase='SF' THEN

        UPDATE pagina SET id_fase='SF' WHERE isbn=NEW.isbn AND n_pagina=NEW.n_pagina;
        UPDATE proyecto SET n_paginassf=proyectoRow.n_paginassf+1 WHERE isbn=OLD.isbn;
        SELECT INTO proyectoRow * FROM proyecto WHERE isbn=OLD.isbn;

        IF proyectoRow.n_paginas=proyectoRow.n_paginassf THEN

          UPDATE proyecto SET id_fase='SF' WHERE isbn=NEW.isbn;

          RAISE NOTICE 'Proyecto correspondiente al libro %, ha cambiado de la fase PF a SF.', NEW.isbn;

        END IF;

        

        SELECT INTO usuarioRow * FROM usuario WHERE usuario.id_usuario=NEW.corrector;

        UPDATE usuario SET n_paginassf=usuarioRow.n_paginassf+1 WHERE id_usuario=NEW.corrector;
        SELECT INTO usuarioRow * FROM usuario WHERE id_usuario=NEW.corrector;
 
        SELECT INTO promocion valor FROM var_config WHERE variable='pag_promosf';

        IF usuarioRow.nivel='PF' AND usuarioRow.fecha<=timestamp'2011-10-16'-interval'41 days' 
        AND usuarioRow.n_paginassf=promocion THEN

          UPDATE usuario SET nivel='SF' WHERE id_usuario=NEW.corrector;
          RAISE NOTICE 'El usuario % ha sido promocionado a nivel SF', usuarioRow.login;

        END IF;


      ELSIF NEW.id_fase='TF' THEN

        UPDATE pagina SET id_fase='TF' WHERE isbn=NEW.isbn AND n_pagina=NEW.n_pagina;
        UPDATE proyecto SET n_paginastf=proyectoRow.n_paginastf+1 WHERE isbn=OLD.isbn;
        SELECT INTO proyectoRow * FROM proyecto WHERE isbn=OLD.isbn;

        IF proyectoRow.n_paginas=proyectoRow.n_paginastf THEN

          UPDATE proyecto SET id_fase='TF' WHERE isbn=NEW.isbn;


          RAISE NOTICE 'Proyecto correspondiente al libro %, ha cambiado de la fase SF a TF.', NEW.isbn;

        END IF;

        

        SELECT INTO usuarioRow * FROM usuario WHERE usuario.id_usuario=NEW.corrector;

        UPDATE usuario SET n_paginastf=usuarioRow.n_paginastf+1 WHERE id_usuario=NEW.corrector;
        SELECT INTO usuarioRow * FROM usuario WHERE id_usuario=NEW.corrector;

        mensaje:='El libro con isbn '||NEW.isbn||' esta listo para ser cerrado.';
        INSERT INTO alerta VALUES(timestamp'2011-10-16',proyectoRow.coordinador,mensaje);

 
        SELECT INTO promocion valor FROM var_config WHERE variable='pag_promotf';

        IF usuarioRow.nivel='SF' AND usuarioRow.fecha<=timestamp'2011-10-16'-interval'63 days' 
        AND usuarioRow.n_paginastf=promocion THEN

          UPDATE usuario SET nivel='TF' WHERE id_usuario=NEW.corrector;
          RAISE NOTICE 'El usuario % ha sido promocionado a nivel TF', usuarioRow.login;

        END IF;

      END IF;

   END IF;





RETURN NEW;

END;

$tgCheckCorreccion$ LANGUAGE plpgsql;

CREATE TRIGGER tgCheckCorreccion AFTER UPDATE 
ON correccion FOR EACH ROW 
EXECUTE PROCEDURE tgCheckCorreccion();



