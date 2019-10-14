
https://github.com/RolyEsco/Base_de_Datos_2


CREATE TABLE persona
(id_persona serial PRIMARY KEY,
primer_apellido varchar(30) NOT NULL,
segundo_apellido varchar(30) NOT NULL,
nombre varchar(40) NOT NULL,
ci varchar(15) NOT NULL,
fecha_nacimiento date not null,
Activo boolean default true
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



