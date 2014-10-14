\echo
\echo Seleccionamos los libros que tuvieron una página corregida hace 5 días (con fecha_fin dentro del intervalo de 5 días)
\echo
SELECT correccion.isbn ,n_pagina,fecha_fin
      FROM correccion,proyecto WHERE correccion.isbn=proyecto.isbn
      AND proyecto.isbn!='FI' AND fecha_fin IS NOT NULL
      AND fecha_fin>=timestamp'2011-10-16'-5*interval'1 days' 
      AND fecha_fin<=timestamp'2011-10-16';


\echo
\echo
\echo Puesto que el libro con isbn=0000000021472 cumple con los requisitos no debe estar en el conjunto inverso,
\echo es decir, los libros que no tienen una página corregida en ese intervalo.
\echo

SELECT DISTINCT correccion.isbn
      FROM correccion,proyecto WHERE correccion.isbn=proyecto.isbn
      AND proyecto.isbn!='FI' AND fecha_fin IS NOT NULL EXCEPT 
      SELECT DISTINCT correccion.isbn FROM correccion,proyecto WHERE correccion.isbn=proyecto.isbn
      AND proyecto.isbn!='FI'   AND fecha_fin IS NOT NULL
      AND fecha_fin>=timestamp'2011-10-16'-90*interval'1 days' 
      AND fecha_fin<=timestamp'2011-10-16';
