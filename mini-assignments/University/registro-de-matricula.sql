-- 1. Cuáles son las (10) secciones más utilizadas? Hay alguna sección que no es usada en ningún curso?

select section, COUNT(*) as counter from registration
GROUP BY section
ORDER BY counter DESC LIMIT 2;


-- 2. Cuáles son las 5 especialidades que tienen la mayor cantidad de alumnos?

select s.speciality, COUNT(*) as counter from registration as r
inner JOIN students as s on r.student_id = s.student_id
GROUP BY s.speciality
ORDER BY counter DESC LIMIT 5;


-- 3. Cuáles son los alumnos que tienen más de 6 cursos?

select s.name, COUNT(*) as counter from registration as r
inner join students as s on r.student_id = s.student_id
GROUP BY s.name
HAVING count(s.name) >= 6
ORDER BY counter DESC;
