
https://github.com/RolyEsco/Base_de_Datos_2

-- DDL Lenguaje de defifinion de datos
--  create table
-- alter table

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
id_persona int REFERENCES persona(id_persona)
);

-- DML  Lenguaje de Manipulacion de DAtos
-- insert (insertar), update (actualizar), delete (eliminar)

insert into persona values(primer_apellido,segundo_apellido,nombre,ci,fecha_nacimiento)
values
('ESCOBAR','COLQUE','ROLLY','4073157','1989-05-30'),
('MAMANI','CHOQUE','MARIA','4032337','1999-12-12'),
('ESCALERA','GUTIERREZ','MARCELA','5025457','1999-12-25');








