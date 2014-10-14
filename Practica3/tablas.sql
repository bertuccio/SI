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
-- Name: TABLE log; Type: TABLE; Schema: public; Owner: alumnodb
--


CREATE TABLE log (
    mensaje varchar NOT NULL,
    fecha timestamp NOT NULL
);

--
-- Name: TABLE log; Type: COMMENT; Schema: public; Owner: alumnodb
--


ALTER TABLE public.log OWNER TO alumnodb;







--
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: alumnodb
--

ALTER TABLE usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


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
-- Name: autorlibro_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY autorlibro
    ADD CONSTRAINT autorlibro_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON DELETE CASCADE on update cascade;


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
    ADD CONSTRAINT correccion_isbn_fkey FOREIGN KEY (isbn) REFERENCES proyecto(isbn) ON DELETE CASCADE on update cascade;


--
-- Name: correccion_isbn_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY correccion
    ADD CONSTRAINT correccion_isbn_fkey1 FOREIGN KEY (isbn, n_pagina) REFERENCES pagina(isbn, n_pagina) ON DELETE CASCADE;


--
-- Name: generolibro_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY generolibro
    ADD CONSTRAINT generolibro_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON DELETE CASCADE on update cascade;


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
    ADD CONSTRAINT pagina_isbn_fkey FOREIGN KEY (isbn) REFERENCES proyecto(isbn) ON DELETE CASCADE on update cascade;


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
    ADD CONSTRAINT proyecto_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON DELETE CASCADE on update cascade;


--
-- Name: traductorlibro_isbn_fkey; Type: FK CONSTRAINT; Schema: public; Owner: alumnodb
--

ALTER TABLE ONLY traductorlibro
    ADD CONSTRAINT traductorlibro_isbn_fkey FOREIGN KEY (isbn) REFERENCES libro(isbn) ON DELETE CASCADE on update cascade;


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

