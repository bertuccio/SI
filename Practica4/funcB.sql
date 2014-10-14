CREATE OR REPLACE FUNCTION dameOrdenFase(text) RETURNS integer AS
$$
  DECLARE

     idFase ALIAS FOR $1;
     infoFase fase%ROWTYPE;

  BEGIN
  
    SELECT INTO infoFase * FROM fase WHERE id_fase=idFase;

  RETURN infoFase.orden;

END;
$$ LANGUAGE plpgsql;
