-- consulta de agrupamiento de dos columnas

select 
c.nombre as Carrera,
count(*) cantidad
from 
persona as p,
estudiante as e,
carrera as c
where
p.id_persona = e.id_persona and
c.id_carrera = e.id_carrera
group by 
Carrera
order by 
Carrera


-- inner join
-- left join  


select 
c.nombre as Carrera,
date_part('year',fecha_inscripcion) as anio,
count(*) cantidad
from 
estudiante e left join 
carrera c on c.id_carrera = e.id_carrera
where
e.activo = true
group by 
Carrera,
anio
-- having 
-- count(*) = 0
order by 
Carrera





-- funciones

create function suma(integer, integer) returns integer as
$BODY$
declare  
suma integer;
begin
suma:= $1 + $2;
return suma;
end;
$BODY$
LANGUAGE 'plpgsql';

-- llamada a la funcion sumar

select suma(15,3)


--  trigger. los triggers son funciones que se llaman de forma automatica
-- cuando se realiza una operacion en una tabla (insersion, actualizacion o eliminacion)

-- ejemplo de trigger
-- convertir a mayuscula los datos de una nueva carrera

create or replace function mayuscula() returns trigger as 
$$
begin
  	new.nombre := upper(new.nombre);
	new.mec := true;
	return new;
end;
$$ language plpgsql;


-- crear trigger para convertir el nombre de una carrera a mayuscula

create trigger a_may
before insert on carrera
for each row execute procedure mayuscula();

-- invocando al trigger  

insert into carrera(nombre) values
('arquitectura');

select * from carrera;




