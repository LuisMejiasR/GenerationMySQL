select * from grupos g;
select * from alumnos a;

-- base de INNER JOIN
select * 
FROM tablaA a
inner join tableB b 
on a.key= b.key;


-- INNER JOIN
select *
from alumnos a
inner join grupos g 
on a.grupo_id = g.id;

-- Agregando las columnas y otro filtro dentro del INNER JOIN
select a.Id, a.Nombre as Alumno, g.Nombre 'Nombre Grupos'  
from alumnos a
inner join grupos g 
on a.grupo_id = g.id
where g.id = 1;

-- LEFT JOIN: Se da prioridad a la tabla de la izquierda
select *
from alumnos a
left join grupos g 
on a.grupo_id = g.id;


select a.Id, a.Nombre as Alumno, g.Nombre 'Nombre Grupos'  
from alumnos a
left join grupos g 
on a.grupo_id = g.id;

-- RIGHT JOIN: Se da prioridad a la tabla de la derecha

select *
from alumnos a
right join grupos g 
on a.grupo_id = g.id;


select a.Id, a.Nombre as Alumno, g.Nombre 'Nombre Grupos'  
from alumnos a
right join grupos g 
on a.grupo_id = g.id;

-- FULL JOIN: Trae todo el universio de datos
-- PERO no sirve en esta versión de MySQL
/*select *
from alumnos a
full outer join grupos g 
on a.grupo_id = g.id;


select a.Id, a.Nombre as Alumno, g.Nombre 'Nombre Grupos'  
from alumnos a
full outer join grupos g 
on a.grupo_id = g.id;*/


-- EN MySQL SE HARÍA CON UNION:

select *
from alumnos a
left outer join grupos g 
on a.grupo_id = g.id
union
select *
from alumnos a
right outer join grupos g 
on a.grupo_id = g.id;

select * from (select *
from alumnos a
left outer join grupos g 
on a.grupo_id = g.id
union
select *
from alumnos c
right outer join grupos d 
on a.grupo_id = g.id) as universo
where d.id is null
or c.grupo_id is null;

select * from (select a.id, a.nombre as 'alumno',g.id as 'grupoId',  g.nombre as 'nombreGrupo'
				FROM alumnos a
				Right JOIN grupos g 
				on a.grupo_id = g.id
				UNION
				select a.id, a.nombre as 'alumno',g.id as 'grupoId', g.nombre as 'nombreGrupo'
				FROM alumnos a
				LEFT JOIN grupos g 
				on a.grupo_id = g.id
				) as universo
-- where -- is null
;
