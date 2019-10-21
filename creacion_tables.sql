

-- DDL  Lenguaje de Defincion de Datos
-- ========================================
-- create table, alter table


CREATE TABLE persona
(id_persona serial PRIMARY KEY,
primer_apellido varchar(30) NOT NULL,
segundo_apellido varchar(30) NOT NULL,
nombre varchar(40) NOT NULL,
ci varchar(15) NOT NULL,
fecha_nacimiento date not null,
activo boolean default true
);

CREATE TABLE carrera
(id_carrera SERIAL PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
mec boolean NOT NULL
);

CREATE TABLE estudiante
(id_estudiante SERIAL PRIMARY KEY,
fecha_inscripcion date NOT NULL,
id_carrera int REFERENCES carrera(id_carrera),
id_persona int REFERENCES persona(id_persona),
activo boolean default true
);

-- DML  Lenguaje de Manipulacion de Datos
-- ========================================
-- insert (insertar), update (actualizar), delete (eliminar)

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Ingresando registros a la tabla persona

insert into persona (primer_apellido,segundo_apellido,nombre,ci,fecha_nacimiento)
values
('ESCOBAR','COLQUE','ROLLY','4073157','1989-05-30'),
('MAMANI','CHOQUE','MARIA','4032337','1999-12-12'),
('ESCALERA','GUTIERREZ','MARCELA','5025457','1999-12-25'),
('YUCRA','HUERTA','MARISOL','4076187','1989-05-30'),
('JIMENEZ','ARCE','KATHIA MARIA','4882337','1990-11-06'),
('AJHUACHO','CHAMBI','SAMUEL ELIAS','4545555','1989-04-02');

-- se nos olvido agregar el atributo genero
-- alterando la tabla agregando una columna

alter table persona add column genero varchar(9) default 'FEMENINO';

-- Debemos actualizar los datos de genero en los registros existentes

-- PRIMERA FORMA

update persona set genero='FEMENINO'; 
-- CONSULTA NO eficiente ya que actualizara todos los registros

update persona set genero='FEMENINO' where id_persona in (2,3,4,5); 
update persona set genero='FEMENINO' where id_persona between 2 and 5; 

-- consulta eficiente

update persona set genero='MASCULINO' where id_persona in (1,6);

-- drop table estudiante
-- drop table persona
-- drop table materia

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Ingresando carreras

insert into carrera (nombre,mec)
values
('INGENIERIA DE REDES Y TELECOMUNICACION',TRUE),
('INGENIERIA DE SISTEMAS',FALSE),
('DERECHO',TRUE),
('ADMINISTRACION DE EMPRESAS',TRUE),
('MARKETING',TRUE),
('CONTADURIA PLUBLICA',TRUE),
('INGENIERIA INDUSTRIAL',TRUE),
('INGENIERIA MEDIO AMBIENTAL',FALSE);


insert into carrera (nombre,mec)
values
('psicologia',FALSE);


-- MUESTRA UN MENSAJE DE ERROR POR QUE LA SOBREPASAMOS LA LONGITUD EN NUMERO DE CARACTERES

-- alterando la dimension de la columna nombre

alter table carrera alter column nombre type varchar(40);


-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- Ingresando regsitros a la tabla estudiante

INSERT INTO estudiante
(fecha_inscripcion,id_persona,id_carrera,activo)
values
('2019-01-02',1,1,true);
('2019-01-02',2,2,true);
('2019-01-02',3,1,true);
('2019-01-02',4,4,true);
('2019-01-02',5,6,true);
('2019-01-02',6,2,true);

-- sentencia para actualizar el campo autonumerico

ALTER SEQUENCE campo_id_seq RESTART WITH 1;

