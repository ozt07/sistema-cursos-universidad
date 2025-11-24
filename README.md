Esquema Github
sistema-cursos-universidad/
├── README.md
├── esquema/
│   ├── create_tables.sql
│   └── sample_data.sql
│   └── join_query.sql
└── images/
    ├── dashboard.png
    └── query_results.png

# sistema-cursos-universidad
Base de datos en la nube - Sistema de gestión de cursos universitarios

1. Descripción de la aplicación 
Sistema de gestión de cursos universitarios que permite administrar estudiantes, cursos y sus inscripciones.
2. Proveedor cloud
**Supabase** (PostgreSQL)
3. Diagrama ER
estudiantes (id, nombre, email, fecha_creacion)
│
│ 1:N
▼
inscripciones (id, estudiante_id, curso_id, fecha_inscripcion)
│
│ N:1
▼
cursos (id, nombre, descripcion, creditos, fecha_creacion)

"Para ver mejor ver imagen Diagrama ER"

4. Descripción de tablas

Tabla: estudiantes
- Campos y tipos de datos:
  - id SERIAL PRIMARY KEY
  - nombre VARCHAR(100) NOT NULL
  - email VARCHAR(100) UNIQUE NOT NULL
  - fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
- Llaves primarias: id
- Llaves foráneas:** No aplica

Tabla: cursos
- Campos y tipos de datos:
  - id SERIAL PRIMARY KEY
  - nombre VARCHAR(100) NOT NULL
  - descripcion TEXT
  - creditos INT NOT NULL
  - fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
- **Llaves primarias:** id
- **Llaves foráneas:** No aplica

Tabla: inscripciones
- Campos y tipos de datos:
  - id SERIAL PRIMARY KEY
  - estudiante_id INT NOT NULL
  - curso_id INT NOT NULL
  - fecha_inscripcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
- Llaves primarias: id
- laves foráneas: 
  - estudiante_id REFERENCES estudiantes(id)
  - curso_id REFERENCES cursos(id)

Relación entre las tablas
- estudiantes ↔ inscripciones: Relación uno a muchos (1:N)
- cursos ↔ inscripciones: Relación uno a muchos (1:N)
- Relación completa: Muchos a muchos (N:M) entre estudiantes y cursos a través de la tabla inscripciones

5. Cadena de conexión
postgresql://postgres:Password123!@db.vykgdjbpsqdqjtfrivzh.supabase.co:5432/postgres
6. Scritpt en create_tables.sql
7. Datos de prueba creado en Sample_data.sql
8. Join creado en Join_query.sql
9. Imagenes solicitadas carpeta imagenes
10. Credenciales de Acceso para Pruebas

🔗 URLs de Acceso:
- Panel Supabase:** https://vykgdjbpsqdqjtfrivzh.supabase.co
- API REST Base:** https://vykgdjbpsqdqjtfrivzh.supabase.co/rest/v1/

🔑 Credenciales API:
- API Key: `sb_publishable_0_lgoaqQNFvkBumC7AQzrw_e0cPxkti`
- Host: `db.vykgdjbpsqdqjtfrivzh.supabase.co`
- Puerto: `5432`
- Usuario: `postgres`
- Contraseña: `Password123!`
