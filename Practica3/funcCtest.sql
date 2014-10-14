

\echo 'Obteniendo la tabla de paginas posibles para el usuario 139'
SELECT * FROM damePaginasACorregir(139);
\echo 'Comprobamos para el primer resultado que la pagina que nos da es la primera con orden de fase mas bajo, este caso esta en la fase inicial'
SELECT * FROM correccion WHERE isbn='0000000016531';

