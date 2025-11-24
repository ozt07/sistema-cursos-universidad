-- Insertar estudiantes
INSERT INTO estudiantes (nombre, email) VALUES
('Ana García', 'ana@email.com'),
('Luis Martínez', 'luis@email.com'),
('Marta Rodríguez', 'marta@email.com'),
('Carlos López', 'carlos@email.com'),
('Sofía Pérez', 'sofia@email.com');

-- Insertar cursos
INSERT INTO cursos (nombre, descripcion, creditos) VALUES
('Programación I', 'Introducción a la programación', 4),
('Bases de Datos', 'Fundamentos de bases de datos relacionales', 3),
('Redes de Computadoras', 'Protocolos y arquitecturas de red', 3),
('Inteligencia Artificial', 'Conceptos básicos de IA', 4),
('Seguridad Informática', 'Principios de ciberseguridad', 3);

-- Insertar inscripciones
INSERT INTO inscripciones (estudiante_id, curso_id) VALUES
(1, 1), (1, 2), (2, 1), (2, 3), (3, 2), (3, 4), (4, 1), (4, 5), (5, 3), (5, 4);
