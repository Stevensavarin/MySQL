SELECT 
  titulo,
  CONCAT(nombre, " ", apellido) AS nombre_autor,
  libros.fecha_creacion
FROM libros
INNER JOIN autores ON libros.autor_id = autores.autor_id;

--especificar

SELECT 
  libros.titulo,
  CONCAT(autores.nombre, " ", autores.apellido) AS nombre_autor,
  libros.fecha_creacion
FROM libros
INNER JOIN autores ON libros.autor_id = autores.autor_id;

--cambiar nombre de llave
SELECT 
  libros.titulo,
  CONCAT(autores.nombre, " ", autores.apellido) AS nombre_autor,
  libros.fecha_creacion
FROM libros
INNER JOIN autores USING(autor_id);

CREATE TABLE libros_usuario(
    libro_id INT UNSIGNED NOT NULL,
    usuario_id INT UNSIGNED NOT NULL,

    FOREIGN KEY (libro_id) REFERENCES libros(libro_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT DISTINCT
  CONCAT(usuarios.nombre, " ", usuarios.apellidos) AS nombre_usuario
FROM usuarios
INNER JOIN libros_usuarios ON usuarios.usuario_id = libros_usuarios.usuario_id
            AND DATE(libros_usuarios.fecha_creacion) = CURDATE()
INNER JOIN libros ON libros_usuarios.libro_id = libros.libro_id
INNER JOIN autores ON libros.autor_id = autores.autor_id 
            AND autores.seudonimo is NOT NULL;







