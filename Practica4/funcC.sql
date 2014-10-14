CREATE TYPE paginasACorregir AS (isbn text, n_pagina integer, id_fase text);

CREATE OR REPLACE FUNCTION damePaginasACorregir(integer) RETURNS SETOF paginasACorregir  AS
$$
DECLARE

  idUsuario ALIAS FOR $1;
  orden integer;
  infoUsuario usuario%ROWTYPE;
  reg paginasACorregir%rowtype;
  vista text;

BEGIN

    SELECT INTO infoUsuario * FROM usuario WHERE id_usuario=idUsuario;
    SELECT INTO orden dameOrdenFase(infoUsuario.nivel);



    FOR reg IN SELECT pagina.isbn,MIN(pagina.n_pagina) FROM pagina 
      LEFT JOIN correccion ON pagina.isbn=correccion.isbn 
      AND correccion.n_pagina=pagina.n_pagina 
      WHERE correccion.isbn IS NULL 
      AND correccion.n_pagina IS NULL GROUP BY pagina.isbn 
   LOOP

     reg.id_fase='PF';
     RETURN NEXT reg;
          
    END LOOP;

    IF orden>0 THEN
       vista:='CREATE OR REPLACE VIEW SFvalidas as SELECT isbn, n_pagina FROM correccion WHERE id_fase='
         || E'\'' ||'PF' || E'\''|| 'AND corrector!='||idUsuario
         ||' AND fecha_fin IS NOT NULL EXCEPT SELECT isbn, n_pagina FROM correccion WHERE id_fase=' || E'\'' ||'SF' || E'\'';

       EXECUTE vista;

       FOR reg IN SELECT SFvalidas.isbn, MIN(SFvalidas.n_pagina) 
         FROM SFvalidas GROUP BY SFvalidas.isbn ORDER BY isbn
       LOOP

         reg.id_fase='SF';
         RETURN NEXT reg;

       END LOOP;

       IF orden=2 OR orden=3 THEN    

          vista:='CREATE OR REPLACE VIEW TFvalidas AS SELECT isbn, n_pagina FROM correccion '|| 
            'WHERE id_fase='|| E'\''||'SF'||E'\''|| ' AND corrector!='||idUsuario||
            ' AND fecha_fin IS NOT NULL EXCEPT SELECT isbn,n_pagina FROM correccion WHERE id_fase='|| 
            E'\''||'TF'||E'\'';
      
          EXECUTE vista;

          FOR reg IN SELECT TFvalidas.isbn, MIN(TFvalidas.n_pagina) 
            FROM TFvalidas GROUP BY TFvalidas.isbn ORDER BY isbn
          LOOP

            reg.id_fase='TF';
            RETURN NEXT reg;

          END LOOP;
       
           
      END IF;

  END IF;

RETURN;
END;
$$ LANGUAGE plpgsql;


