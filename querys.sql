

select 
c.nombre as Carrera,
id_persona,
p.nombre, 
primer_apellido, 
segundo_apellido
from 
persona as p,
estudiante as e,
carrera as c
where
p.id_persona = e.id_persona and
c.id_carrera = e.id_persona


