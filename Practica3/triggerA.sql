CREATE OR REPLACE FUNCTION tgAlertaCambioFase() RETURNS TRIGGER AS $tgAlertaCambioFase$
  DECLARE

    tituloLibro text;
    infoAlerta text;

  BEGIN

    IF OLD.id_fase != NEW.id_fase THEN

      infoAlerta:= 'El Libro con isbn ' || OLD.isbn || 
        ' ha cambiado de la fase ' || OLD.id_fase ||
        ' a la ' || NEW.id_fase;

      RAISE NOTICE 'El Libro % ha cambiado de la fase % a la %'
        ,NEW.isbn,OLD.id_fase,NEW.id_fase;

      INSERT INTO alerta(fecha,id_usuario,texto) 
        VALUES (timestamp'2011-10-16',OLD.coordinador,infoAlerta);


    END IF;

    RETURN NEW;
END;

$tgAlertaCambioFase$ LANGUAGE plpgsql;

CREATE  TRIGGER tgAlertaCambioFase AFTER UPDATE
ON proyecto FOR EACH ROW
EXECUTE PROCEDURE tgAlertaCambioFase();
