--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: tgcheckcorreccion(); Type: FUNCTION; Schema: public; Owner: alumnodb
--

CREATE FUNCTION tgcheckcorreccion() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  DECLARE

    proyectoRow proyecto%ROWTYPE;
    usuarioRow usuario%ROWTYPE;
    promocion integer;
    mensaje text;

  BEGIN
    IF NEW.fecha_fin IS NOT NULL  THEN

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

	  PERFORM pg_sleep(10);
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

$$;


ALTER FUNCTION public.tgcheckcorreccion() OWNER TO alumnodb;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alerta; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE alerta (
    fecha timestamp with time zone DEFAULT now() NOT NULL,
    id_usuario integer,
    texto text NOT NULL
);


ALTER TABLE public.alerta OWNER TO alumnodb;

--
-- Name: autorlibro; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE autorlibro (
    isbn character(13) NOT NULL,
    autor character varying NOT NULL
);


ALTER TABLE public.autorlibro OWNER TO alumnodb;

--
-- Name: correccion; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE correccion (
    isbn character(13) NOT NULL,
    n_pagina integer NOT NULL,
    fecha_inicio timestamp with time zone DEFAULT '2011-10-09 14:45:51.596608+02'::timestamp with time zone NOT NULL,
    fecha_fin timestamp with time zone,
    id_fase character(2) DEFAULT 'F0'::bpchar NOT NULL,
    corrector integer
);


ALTER TABLE public.correccion OWNER TO alumnodb;

--
-- Name: dificultad; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE dificultad (
    id_dificultad integer NOT NULL,
    descripcion character varying NOT NULL
);


ALTER TABLE public.dificultad OWNER TO alumnodb;

--
-- Name: fase; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE fase (
    id_fase character(2) NOT NULL,
    descripcion character varying NOT NULL,
    orden integer NOT NULL
);


ALTER TABLE public.fase OWNER TO alumnodb;

--
-- Name: generolibro; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE generolibro (
    isbn character(13) NOT NULL,
    genero character varying NOT NULL
);


ALTER TABLE public.generolibro OWNER TO alumnodb;

--
-- Name: libro; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE libro (
    isbn character(13) NOT NULL,
    titulo character varying NOT NULL,
    idioma character varying NOT NULL,
    fecha date,
    uploader integer,
    CONSTRAINT libro_isbn_check CHECK ((isbn ~ '^[0-9]+$'::text))
);


ALTER TABLE public.libro OWNER TO alumnodb;

--
-- Name: log; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE log (
    mensaje character varying NOT NULL,
    fecha timestamp without time zone NOT NULL
);


ALTER TABLE public.log OWNER TO alumnodb;

--
-- Name: pagina; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE pagina (
    isbn character(13) NOT NULL,
    n_pagina integer NOT NULL,
    id_fase character(2) DEFAULT 'F0'::bpchar
);


ALTER TABLE public.pagina OWNER TO alumnodb;

--
-- Name: proyecto; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE proyecto (
    isbn character(13) NOT NULL,
    fecha date DEFAULT '2011-10-09'::date NOT NULL,
    n_paginas integer DEFAULT 0 NOT NULL,
    id_fase character(2) DEFAULT 'F0'::bpchar NOT NULL,
    coordinador integer,
    id_dificultad integer DEFAULT 0,
    n_paginaspf integer DEFAULT 0 NOT NULL,
    n_paginassf integer DEFAULT 0 NOT NULL,
    n_paginastf integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.proyecto OWNER TO alumnodb;

--
-- Name: traductorlibro; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE traductorlibro (
    isbn character(13) NOT NULL,
    traductor character varying NOT NULL
);


ALTER TABLE public.traductorlibro OWNER TO alumnodb;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    login character varying(15) NOT NULL,
    password character varying(15) NOT NULL,
    fecha date DEFAULT '2011-10-09'::date NOT NULL,
    nivel character(2) DEFAULT 'F0'::bpchar NOT NULL,
    n_paginaspf integer DEFAULT 0 NOT NULL,
    n_paginassf integer DEFAULT 0 NOT NULL,
    n_paginastf integer DEFAULT 0 NOT NULL,
    escoordinador boolean DEFAULT false NOT NULL,
    escorrector boolean DEFAULT false NOT NULL,
    escolaborador boolean DEFAULT false NOT NULL,
    email character varying,
    essysadmin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.usuario OWNER TO alumnodb;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: alumnodb
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1436
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO alumnodb;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alumnodb
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: alumnodb
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 1436, false);


--
-- Name: var_config; Type: TABLE; Schema: public; Owner: alumnodb; Tablespace: 
--

CREATE TABLE var_config (
    variable character(15) NOT NULL,
    valor character varying NOT NULL
);


ALTER TABLE public.var_config OWNER TO alumnodb;

--
-- Name: TABLE var_config; Type: COMMENT; Schema: public; Owner: alumnodb
--

COMMENT ON TABLE var_config IS 'variables de configuracion';


--
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: alumnodb
--

ALTER TABLE usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- Data for Name: alerta; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY alerta (fecha, id_usuario, texto) FROM stdin;
2011-10-16 00:00:00+02	1	El libro con isbn 0000000000541 esta listo para ser cerrado.
2011-10-16 00:00:00+02	1	El libro con isbn 0000000000541 esta listo para ser cerrado.
2011-10-16 00:00:00+02	1	El libro con isbn 0000000000541 esta listo para ser cerrado.
\.


--
-- Data for Name: autorlibro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY autorlibro (isbn, autor) FROM stdin;
\.


--
-- Data for Name: correccion; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY correccion (isbn, n_pagina, fecha_inicio, fecha_fin, id_fase, corrector) FROM stdin;
0000000000541	1	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	1
0000000000541	1	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	1
0000000000541	1	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	2	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	1
0000000000541	2	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	1
0000000000541	2	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	1
0000000000541	3	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	1
0000000000541	3	2011-04-19 00:00:00+02	2011-04-22 00:00:00+02	SF	1
0000000000541	3	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	1
0000000000541	4	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	1
0000000000541	4	2011-04-19 00:00:00+02	2011-04-21 00:00:00+02	SF	1
0000000000541	4	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	1
0000000000541	5	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	1
0000000000541	5	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	1
0000000000541	5	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	1
0000000000541	6	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	1
0000000000541	6	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	1
0000000000541	6	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	7	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	1
0000000000541	7	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	1
0000000000541	7	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	1
0000000000541	8	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	1
0000000000541	8	2011-03-20 00:00:00+01	2011-03-25 00:00:00+01	SF	1
0000000000541	8	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	1
0000000000541	9	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	1
0000000000541	9	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	1
0000000000541	9	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	1
0000000000541	10	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	1
0000000000541	10	2011-03-20 00:00:00+01	2011-03-20 00:00:00+01	SF	1
0000000000541	10	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	1
0000000000541	11	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	1
0000000000541	11	2011-04-19 00:00:00+02	2011-04-19 00:00:00+02	SF	1
0000000000541	11	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	1
0000000000541	12	2010-12-20 00:00:00+01	2010-12-21 00:00:00+01	PF	1
0000000000541	12	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	1
0000000000541	12	2011-06-18 00:00:00+02	2011-06-22 00:00:00+02	TF	1
0000000000541	13	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	1
0000000000541	13	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	1
0000000000541	13	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	14	2010-12-20 00:00:00+01	2010-12-22 00:00:00+01	PF	1
0000000000541	14	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	1
0000000000541	14	2011-07-18 00:00:00+02	2011-07-23 00:00:00+02	TF	1
0000000000541	15	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	1
0000000000541	15	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	1
0000000000541	15	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	1
0000000000541	16	2010-12-20 00:00:00+01	2010-12-23 00:00:00+01	PF	1
0000000000541	16	2011-04-19 00:00:00+02	2011-04-24 00:00:00+02	SF	1
0000000000541	16	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	17	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	1
0000000000541	17	2011-03-20 00:00:00+01	2011-03-22 00:00:00+01	SF	1
0000000000541	17	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	1
0000000000541	18	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	1
0000000000541	18	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	1
0000000000541	18	2011-06-18 00:00:00+02	2011-06-21 00:00:00+02	TF	1
0000000000541	19	2011-01-19 00:00:00+01	2011-01-23 00:00:00+01	PF	1
0000000000541	19	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	1
0000000000541	19	2011-07-18 00:00:00+02	2011-07-20 00:00:00+02	TF	1
0000000000541	20	2011-01-19 00:00:00+01	2011-01-21 00:00:00+01	PF	1
0000000000541	20	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	1
0000000000541	20	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	21	2011-01-19 00:00:00+01	2011-01-24 00:00:00+01	PF	1
0000000000541	21	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	1
0000000000541	21	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	1
0000000000541	22	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	1
0000000000541	22	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	1
0000000000541	22	2011-06-18 00:00:00+02	2011-06-23 00:00:00+02	TF	1
0000000000541	23	2010-12-20 00:00:00+01	2010-12-24 00:00:00+01	PF	1
0000000000541	23	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	1
0000000000541	23	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	24	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	1
0000000000541	24	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	1
0000000000541	24	2011-06-18 00:00:00+02	2011-06-18 00:00:00+02	TF	1
0000000000541	25	2011-01-19 00:00:00+01	2011-01-20 00:00:00+01	PF	1
0000000000541	25	2011-04-19 00:00:00+02	2011-04-20 00:00:00+02	SF	1
0000000000541	25	2011-06-18 00:00:00+02	2011-06-20 00:00:00+02	TF	1
0000000000541	26	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	1
0000000000541	26	2011-04-19 00:00:00+02	2011-04-23 00:00:00+02	SF	1
0000000000541	26	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	27	2011-01-19 00:00:00+01	2011-01-19 00:00:00+01	PF	1
0000000000541	27	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	1
0000000000541	27	2011-07-18 00:00:00+02	2011-07-22 00:00:00+02	TF	1
0000000000541	28	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	1
0000000000541	28	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	1
0000000000541	28	2011-06-18 00:00:00+02	2011-06-19 00:00:00+02	TF	1
0000000000541	29	2010-12-20 00:00:00+01	2010-12-25 00:00:00+01	PF	1
0000000000541	29	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	1
0000000000541	29	2011-07-18 00:00:00+02	2011-07-21 00:00:00+02	TF	1
0000000000541	30	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	1
0000000000541	30	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	1
0000000000541	30	2011-07-18 00:00:00+02	2011-07-19 00:00:00+02	TF	1
0000000000541	31	2010-12-20 00:00:00+01	2010-12-20 00:00:00+01	PF	1
0000000000541	31	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	SF	1
0000000000541	31	2011-03-20 00:00:00+01	2011-03-24 00:00:00+01	TF	1
0000000000541	32	2011-01-19 00:00:00+01	2011-01-22 00:00:00+01	PF	1
0000000000541	32	2011-03-20 00:00:00+01	2011-03-21 00:00:00+01	SF	1
0000000000541	32	2011-12-20 15:49:48+01	\N	TF	1
\.


--
-- Data for Name: dificultad; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY dificultad (id_dificultad, descripcion) FROM stdin;
0	Muy facil
1	Facil
2	Medio
3	Dificil
4	Muy dificil
\.


--
-- Data for Name: fase; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY fase (id_fase, descripcion, orden) FROM stdin;
F0	Fase incial	0
TF	Tercera fase	3
PF	Primera fase	1
SF	Segunda fase	2
\.


--
-- Data for Name: generolibro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY generolibro (isbn, genero) FROM stdin;
\.


--
-- Data for Name: libro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY libro (isbn, titulo, idioma, fecha, uploader) FROM stdin;
0000000000541	LibroTest	Ingles	2011-12-14	1
\.


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY log (mensaje, fecha) FROM stdin;
\.


--
-- Data for Name: pagina; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY pagina (isbn, n_pagina, id_fase) FROM stdin;
0000000000541	1	TF
0000000000541	2	TF
0000000000541	3	TF
0000000000541	4	TF
0000000000541	5	TF
0000000000541	6	TF
0000000000541	7	TF
0000000000541	8	TF
0000000000541	9	TF
0000000000541	10	TF
0000000000541	11	TF
0000000000541	12	TF
0000000000541	13	TF
0000000000541	14	TF
0000000000541	15	TF
0000000000541	16	TF
0000000000541	17	TF
0000000000541	18	TF
0000000000541	19	TF
0000000000541	20	TF
0000000000541	21	TF
0000000000541	22	TF
0000000000541	23	TF
0000000000541	24	TF
0000000000541	25	TF
0000000000541	26	TF
0000000000541	27	TF
0000000000541	28	TF
0000000000541	29	TF
0000000000541	30	TF
0000000000541	31	TF
0000000000541	32	SF
\.


--
-- Data for Name: proyecto; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY proyecto (isbn, fecha, n_paginas, id_fase, coordinador, id_dificultad, n_paginaspf, n_paginassf, n_paginastf) FROM stdin;
0000000000541	2011-12-14	32	SF	1	2	32	32	31
\.


--
-- Data for Name: traductorlibro; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY traductorlibro (isbn, traductor) FROM stdin;
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY usuario (id_usuario, login, password, fecha, nivel, n_paginaspf, n_paginassf, n_paginastf, escoordinador, escorrector, escolaborador, email, essysadmin) FROM stdin;
1	pepe	1234	2011-12-14	TF	500	500	503	t	t	t	pepe@pepe.com	t
\.


--
-- Data for Name: var_config; Type: TABLE DATA; Schema: public; Owner: alumnodb
--

COPY var_config (variable, valor) FROM stdin;
\.


--
-- Name: correccion_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY correccion
    ADD CONSTRAINT correccion_pkey PRIMARY KEY (isbn, n_pagina, id_fase);


--
-- Name: dificultad_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY dificultad
    ADD CONSTRAINT dificultad_pkey PRIMARY KEY (id_dificultad);


--
-- Name: fase_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY fase
    ADD CONSTRAINT fase_pkey PRIMARY KEY (id_fase);


--
-- Name: libro_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (isbn);


--
-- Name: pagina_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY pagina
    ADD CONSTRAINT pagina_pkey PRIMARY KEY (isbn, n_pagina);


--
-- Name: proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY proyecto
    ADD CONSTRAINT proyecto_pkey PRIMARY KEY (isbn);


--
-- Name: usuario_login_key; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_login_key UNIQUE (login);


--
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: var_config_pkey; Type: CONSTRAINT; Schema: public; Owner: alumnodb; Tablespace: 
--

ALTER TABLE ONLY var_config
    ADD CONSTRAINT var_config_pkey PRIMARY KEY (variable);


--
-- Name: tgcheckcorreccion; Type: TRIGGER; Schema: public; Owner: alumnodb
--

CREATE TRIGGER tgcheckcorreccion
    AFTER UPDATE ON correccion
    FOR EACH ROW
    EXECUTE PROCEDURE tgcheckcorreccion();


--
-- Name: autorlibro_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY autorlibro
    ADD CONSTRAINT autorlibro_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: correccion_corrector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY correccion
    ADD CONSTRAINT correccion_corrector_fkey FOREIGN KEY (corrector) REFERENCES usuario(id_usuario) ON DELETE SET NULL;


--
-- Name: correccion_id_fase_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY correccion
    ADD CONSTRAINT correccion_id_fase_fkey FOREIGN KEY (id_fase) REFERENCES fase(id_fase) ON UPDATE CASCADE;


--
-- Name: correccion_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY correccion
    ADD CONSTRAINT correccion_isbn_fkey FOREIGN KEY (isbn) REFERENCES proyecto(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: correccion_isbn_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY correccion
    ADD CONSTRAINT correccion_isbn_fkey1 FOREIGN KEY (isbn, n_pagina) REFERENCES pagina(isbn, n_pagina) ON DELETE CASCADE;


--
-- Name: generolibro_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY generolibro
    ADD CONSTRAINT generolibro_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: libro_uploader_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY libro
    ADD CONSTRAINT libro_uploader_fkey FOREIGN KEY (uploader) REFERENCES usuario(id_usuario) ON DELETE SET NULL;


--
-- Name: pagina_id_fase_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY pagina
    ADD CONSTRAINT pagina_id_fase_fkey FOREIGN KEY (id_fase) REFERENCES fase(id_fase) ON UPDATE CASCADE;


--
-- Name: pagina_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY pagina
    ADD CONSTRAINT pagina_isbn_fkey FOREIGN KEY (isbn) REFERENCES proyecto(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proyecto_coordinador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY proyecto
    ADD CONSTRAINT proyecto_coordinador_fkey FOREIGN KEY (coordinador) REFERENCES usuario(id_usuario) ON DELETE SET NULL;


--
-- Name: proyecto_id_dificultad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY proyecto
    ADD CONSTRAINT proyecto_id_dificultad_fkey FOREIGN KEY (id_dificultad) REFERENCES dificultad(id_dificultad) ON UPDATE CASCADE;


--
-- Name: proyecto_id_fase_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY proyecto
    ADD CONSTRAINT proyecto_id_fase_fkey FOREIGN KEY (id_fase) REFERENCES fase(id_fase) ON UPDATE CASCADE;


--
-- Name: proyecto_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY proyecto
    ADD CONSTRAINT proyecto_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: traductorlibro_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY traductorlibro
    ADD CONSTRAINT traductorlibro_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: usuario_nivel_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_nivel_fkey FOREIGN KEY (nivel) REFERENCES fase(id_fase) ON UPDATE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

