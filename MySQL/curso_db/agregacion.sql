select CONCAT(nombre, " ", apellido) AS nombre_completo, "" AS email, pais_origen AS pais_de_origen FROM autores
UNION
SELECT CONCAT(nombre, " ", apellidos) AS nombre_completo, email, "" FROM usuarios;

SELECT AVG(ventas) FROM libros; -- 254.5091

SET @promedio = (SELECT AVG(ventas) FROM libros);

SELECT 
  autor_id 
FROM libros 
GROUP BY autor_id 
HAVING SUM(ventas) > @promedio;

SET @promedio = (SELECT AVG(ventas) FROM libros);

SELECT 
  autor_id 
FROM libros 
GROUP BY autor_id 
HAVING SUM(ventas) > (SELECT AVG(ventas) FROM libros);

SELECT CONCAT(nombre, " ", apellido) AS nombre
FROM autores
WHERE autor_id IN(
SELECT 
  autor_id 
FROM libros 
GROUP BY autor_id 
HAVING SUM(ventas) > (SELECT AVG(ventas) FROM libros));

SELECT IF(
    EXISTS(SELECT libro_id FROM libros WHERE titulo = "El hobbit"),
    "Disponible",
    "No disponible"
) AS mensaje;
