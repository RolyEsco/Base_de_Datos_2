
-- DML Manipulacion
-- actualizando registro de psicologia

update carrera set nombre='PSICOLOGIA' 
WHERE id_carrera=9;

update carrera set nombre=upper(nombre) 
WHERE id_carrera=9;

-- las dos sentencias son equivalentes


-- update factura set total=total+55 where id=144

-- ELIMINACION DE REGISTROS

delete from persona;
-- las sentecias delete from no es muy USADA
-- ES PREFERIBLE SOLO CAMBIAR EL ESTADO DE ACTIVO

update persona set activo=false where id_persona=1;







