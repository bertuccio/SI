

\echo Creando usuario colaborador con fecha de entrada en el año 1999 (se tiene que borrar para borraUsuariosInactivos(4000))
\echo 
\echo ID Usuario 1999

COPY usuario (id_usuario, login, password, fecha, nivel, n_paginaspf, n_paginassf, n_paginastf, escoordinador, escorrector, escolaborador, email, essysadmin) FROM stdin;
1999	loren	loren	1999-11-25	TF	9	33	18	f	t	f	mhz@si1.org	f
\.

\echo
\echo  Buscamos al usuario creado
\echo 

SELECT * FROM usuario WHERE id_usuario=1999;

\echo 

SELECT borraUsuariosInactivos(4000);

\echo 
\echo Buscamos al usuario creado 
\echo 

SELECT * FROM usuario WHERE id_usuario=1999;
