-- Consulta JOIN para ver estudiantes con sus cursos
SELECT 
    e.nombre AS estudiante,
    e.email,
    c.nombre AS curso,
    c.descripcion,
    c.creditos,
    i.fecha_inscripcion
FROM inscripciones i
JOIN estudiantes e ON i.estudiante_id = e.id
JOIN cursos c ON i.curso_id = c.id
ORDER BY e.nombre, c.nombre;
