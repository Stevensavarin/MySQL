DELIMITER //


CREATE FUNCTION agregar_dias(fecha DATE, dias INT)
RETURNS DATE
BEGIN
  RETURN fecha + INTERVAL dias DAY;
END//

DELIMITER ;

UPDATE libros SET paginas = obtener_paginas();