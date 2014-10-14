#Por favor especifique su grupo y numero de pareja en las dos
#líneas siguientes
GRUPO=B
PAREJA=08
#Por lo general no se requiere modificar el fichero
#a partir de esta línea
export PGDATABASE:=$(GRUPO)_$(PAREJA)
export PGUSER :=alumnodb
export PGPASSWORD :=alumnodb
#export PGCLIENTENCODING:=LATIN9  
export PGHOST:=localhost
DBNAME =$(PGDATABASE)
PSQL = psql
CREATEDB = createdb
DROPDB = dropdb
PG_DUMP = pg_dump
all: borrar db tablas datos respaldo
db:
	@echo Creando BBDD
	@$(CREATEDB) $(DBNAME)
tablas:
	@echo Creando tablas
	@cat tablas.sql | $(PSQL) $(DBNAME)
datos:
	@echo Poblando tablas
	@cat datos.sql | $(PSQL)  $(DBNAME)
borrar:
	@echo Eliminando BBDD
	@$(DROPDB) $(DBNAME)
respaldo:
	@echo creando dumpfile
	@$(PG_DUMP) > $(DBNAME).sql
