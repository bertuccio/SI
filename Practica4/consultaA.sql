SELECT ano_mes, login AS Usuario, numlibros AS Libros_procesados 
    FROM usuario, 
        (SELECT max(numlibros) AS maxlibros, anomes AS ano_mes 
         FROM 
            (SELECT count(*) AS numlibros, corrector 
            AS cor, to_char(fecha_fin, 'yyyy-mm') AS anomes 
            FROM correccion WHERE fecha_fin IS NOT NULL 
            GROUP BY to_char(fecha_fin, 'yyyy-mm'), corrector) 
            AS sub GROUP BY  anomes) AS max , 
            (SELECT count(*) AS numlibros, corrector AS cor, 
            to_char(fecha_fin, 'yyyy-mm') AS anomes 
            FROM correccion WHERE fecha_fin IS NOT NULL 
            GROUP BY to_char(fecha_fin, 'yyyy-mm'), corrector) AS total_libros  
    WHERE maxlibros = total_libros.numlibros AND usuario.id_usuario = cor 
    ORDER BY ano_mes asc;