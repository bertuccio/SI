\echo Se va a probar el trigger sobre el isbn 0000000019312 para ver si se actualiza el proyecto y las páginas


INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',39,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',40,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',41,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',42,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',44,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',45,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',46,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',47,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',49,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',51,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',52,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',53,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',54,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',55,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',56,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',57,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',58,151,'SF',timestamp'2011-10-16');
INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000019312',59,151,'SF',timestamp'2011-10-16');

UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=43;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=48;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=50;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=39;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=40;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=41;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=42;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=44;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=45;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=46;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=47;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=49;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=51;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=52;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=53;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=54;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=55;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=56;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=57;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=58;
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000019312' and id_fase='SF' and n_pagina=59;

\echo
\echo Comprobamos que el proyecto ha cambiado de fase
\echo

SELECT * FROM proyecto WHERE isbn='0000000019312';

\echo
\echo Comprobamos que las páginas han cambiado de fase
\echo

SELECT * FROM pagina WHERE isbn='0000000019312' AND id_fase='SF';


\echo
\echo Ahora vamos a comprobar que el usuario con id_usuario 79 y nivel PF se promociona a SF al corregir una página
\echo va a corregir una página SF
\echo

INSERT INTO correccion(isbn,n_pagina,corrector,id_fase,fecha_inicio) VALUES('0000000000813',5,79,'SF',timestamp'2011-10-16');
UPDATE correccion set fecha_fin=timestamp'2011-10-16' where isbn='0000000000813' and id_fase='SF' and n_pagina=5;

\echo
\echo ATENCIÓN: ES NECESARIO VOLVER A HACER MAKE DE LA BASE DE DATOS, YA QUE SE HAN INTRODUCIDO Y MODIFICADO TUPLAS
\echo

