CREATE TABLE usuario 
  (nombre character varying(30)  NOT NULL,
  apellidos character varying(30) NOT NULL,
  id_usuario character varying(30),
  password character varying(30) NOT NULL,
  email character varying(30),
  fecha_registro date NOT NULL,
  nivel character varying(6) DEFAULT 'N/A' NOT NULL,
  tipo character varying(32) DEFAULT 'corrector'  NOT NULL,
  primary key(id_usuario));

CREATE TABLE libro 
  (id_libro varchar(15) NOT NULL,
  titulo varchar(128) NOT NULL,
  autor varchar(60) NOT NULL,
  lenguaje varchar(60) NOT NULL,
  fase varchar(60) DEFAULT 'PF' NOT NULL,
  coordinador_correcion varchar(60),
  fecha_publicacion date NOT NULL,
  fecha_proyecto date NOT NULL,
  foreign key(coordinador_correcion) references usuario(id_usuario),
  primary key(id_libro));

CREATE TABLE traductor_libro
  (id_libro varchar(15),
  traductor varchar(60) NOT NULL,
  foreign key(id_libro) references libro(id_libro) ON DELETE CASCADE,
  primary key(id_libro,traductor));

CREATE TABLE tema_libro
  (id_libro varchar(15),
  tema varchar(60) NOT NULL,
  foreign key(id_libro) references libro(id_libro) ON DELETE CASCADE,
  primary key(id_libro,tema));

CREATE TABLE pagina 
  (num_pagina integer NOT NULL CHECK (num_pagina >= 0),
  ref_texto character varying(50) NOT NULL,
  ref_imagen character varying(50) NOT NULL,
  fecha_correccion date,
  corrector character varying(30),
  estado character varying(15) DEFAULT 'sin_corregir' NOT NULL,
  fase character varying(2) DEFAULT 'PF' NOT NULL,
  id_libro character varying(15) NOT NULL,
  foreign key(id_libro) references libro(id_libro) ON DELETE CASCADE,
  foreign key(corrector) references usuario(id_usuario),
  primary key(num_pagina,id_libro,fase));


