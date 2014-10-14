-------------------------------------------------------
--
--  LIBROS
--
-------------------------------------------------------
INSERT INTO libro(id_libro,titulo,autor,lenguaje,fecha_publicacion,fecha_proyecto) VALUES ('book_1','The Song My Paddle Sings','Johnson, E. Pauline','English','Dec 1, 2007',current_date);
INSERT INTO tema_libro VALUES ('book_1','Canoes and canoeing -- Poetry');
INSERT INTO tema_libro VALUES ('book_1','Canadian poetry');

INSERT INTO libro(id_libro,titulo,autor,lenguaje,fecha_publicacion,fecha_proyecto) VALUES ('book_2','The Kama Sutra of Vatsyayana Translated From the Sanscrit in Seven Parts With Preface, Introduction and Concluding Remarks','Vatsyayana','English','Jan 18, 2009',current_date);
INSERT INTO traductor_libro VALUES ('book_2','Bhide, Shivaram Parashuram');
INSERT INTO traductor_libro VALUES ('book_2','Burton, Richard Francis, Sir');
INSERT INTO traductor_libro VALUES ('book_2','Indrajit, Bhagavanlal');
INSERT INTO tema_libro VALUES ('book_2','Love');
INSERT INTO tema_libro VALUES ('book_2','Sex');

INSERT INTO libro(id_libro,titulo,autor,lenguaje,fecha_publicacion,fecha_proyecto) VALUES ('book_3','The Adventures of Sherlock Holmes','Doyle, Arthur Conan, Sir','English','Mar 1, 1999',current_date);
INSERT INTO tema_libro VALUES ('book_3','Detective and mystery stories');

INSERT INTO libro(id_libro,titulo,autor,lenguaje,fecha_publicacion,fecha_proyecto) VALUES ('book_4','The Notebooks of Leonardo Da Vinci — Complete','Leonardo da Vinci','English','Jan 1, 2004',current_date);
INSERT INTO tema_libro VALUES ('book_4','Leonardo, da Vinci, 1452-1519 -- Notebooks, sketchbooks');
INSERT INTO traductor_libro VALUES ('book_4','Richter, Jean Paul');

INSERT INTO libro(id_libro,titulo,autor,lenguaje,fecha_publicacion,fecha_proyecto) VALUES ('book_5','Pride and Prejudice','Austen, Jane','English','Jun 1, 1998',current_date);
INSERT INTO tema_libro VALUES ('book_5','Love stories');
INSERT INTO tema_libro VALUES ('book_5','Social classes -- Fiction');

-------------------------------------------------------
--
--  USUARIO
--
-------------------------------------------------------

INSERT INTO usuario(nombre,apellidos,id_usuario,password,fecha_registro) VALUES ('Pepito','Perez','User_PF','123','01/08/2010'); 
INSERT INTO usuario(nombre,apellidos,id_usuario,password,fecha_registro) VALUES ('Menganita','Perez','User_SF','123','01/07/2010'); 
INSERT INTO usuario(nombre,apellidos,id_usuario,password,fecha_registro) VALUES ('Fulanita','Perez','User_TF','123','11/10/2010'); 
INSERT INTO usuario(nombre,apellidos,id_usuario,password,fecha_registro) VALUES ('Fulanito','Perez','User_adm','123','01/07/2010'); 

-------------------------------------------------------
--
--  PAGINAS
--
-------------------------------------------------------

INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro,corrector) VALUES(1,'a','a','book_1','User_PF');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(2,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(3,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(4,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(5,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(6,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(7,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(8,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(9,'a','a','book_1');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(10,'a','a','book_1');

INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(1,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(2,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(3,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(4,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(5,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(6,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(7,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(8,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(9,'a','a','book_2');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(10,'a','a','book_2');

INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(1,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(2,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(3,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(4,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(5,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(6,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(7,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(8,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(9,'a','a','book_3');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(10,'a','a','book_3');

INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(1,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(2,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(3,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(4,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(5,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(6,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(7,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(8,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(9,'a','a','book_4');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(10,'a','a','book_4');

INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(1,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(2,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(3,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(4,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(5,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(6,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(7,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(8,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(9,'a','a','book_5');
INSERT INTO pagina(num_pagina,ref_texto,ref_imagen,id_libro) VALUES(10,'a','a','book_5');

