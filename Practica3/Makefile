#Por favor especifique su grupo y numero de pareja en las dos
#líneas siguientes
GRUPO=B
PAREJA=08
#Por lo general no se requiere modificar el fichero
#a parir de esta línea
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
all: borrar db tablas datos respaldo triggerA triggerB procaA funcB funcC procaD
db:
	@echo Creando BBDD
	@$(CREATEDB)
tablas:
	@echo Creando tablas
	@cat tablas.sql | $(PSQL)
datos:
	@echo Poblando tablas
	@cat datos.sql | $(PSQL)
borrar:
	@echo Eliminando BBDD
	@$(DROPDB) $(DBNAME)
respaldo:
	@echo creando dumpfile
	@$(PG_DUMP) > $(DBNAME).sql
consultaA:
	@echo consultaA
	@cat consultaA.sql | $(PSQL) | tee consultaA.log
consultaB:
	@echo consultaB
	@cat consultaB.sql | $(PSQL) | tee consultaB.log
consultaC:
	@echo consultaC
	@cat consultaC.sql | $(PSQL) | tee consultaC.log
triggerA:
	@echo triggerA:
	@cat triggerA.sql | $(PSQL)
triggerAtest:
	@echo triggerAtest:
	@cat triggerAtest.sql | $(PSQL)
triggerB:
	@echo triggerB:
	@cat triggerB.sql | $(PSQL)
triggerBtest:
	@echo triggerBtest:
	@cat triggerBtest.sql | $(PSQL)
procaA:
	@echo procaA:
	@cat procaA.sql | $(PSQL)
procaAtest:
	@echo procaAtest:
	@cat procaAtest.sql | $(PSQL)
funcB:
	@echo funcB:
	@cat funcB.sql | $(PSQL)
funcBtest:
	@echo funcBtest:
	@cat funcBtest.sql | $(PSQL)
funcC:
	@echo funcC:
	@cat funcC.sql | $(PSQL)
funcCtest:
	@echo funcCtest:
	@cat funcCtest.sql | $(PSQL)
procaD:
	@echo procaD:
	@cat procaD.sql | $(PSQL)
procaDtest:
	@echo procaDtest:
	@cat procaDtest.sql | $(PSQL)

