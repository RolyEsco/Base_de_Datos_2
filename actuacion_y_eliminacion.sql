
-- actualizar regsitro de psicologia

update carrera set nombre='PSICOLOGIA' 
WHERE id_carrera=3;

-- son equivalente

update carrera set nombre=upper(nombre) 
WHERE id_carrera in (3,6,70); -- between

