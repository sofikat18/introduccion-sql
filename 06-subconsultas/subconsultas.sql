/* Subconsultas
Son consultas que se ejecutan dentro de otras consultas
*/
/* Consulta para saber qué usuarios tienen publicaciones*/
SELECT * FROM usuarios WHERE id IN(SELECT usuario_id FROM entradas);
/* DESGLOCE DE LA SENTENCIA*/
SELECT usuario_id FROM entradas;
/*LO QUE ESTÁ ENTRE PARENTESIS ES LO QUE DEVUELVE LA SENTENCIA DE ARRIBITA*/
SELECT * FROM usuarios WHERE id IN (1, 1, 1, 2, 2, 2, 3, 3, 3);
/* Consulta equivalente con WHERE */
SELECT * FROM usuarios WHERE id = 1 AND id = 2 AND id = 3;

/* Obtener los usuarios que tengan alguna entrada que el título contenga GTA */
SELECT nombre, apellidos FROM usuarios WHERE id IN(
    SELECT usuario_id FROM entradas WHERE titulo LIKE '%GTA%'
);

/*Obtener todas las categorías de acción utilizando su nombre */
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN(
    SELECT id FROM categorias WHERE nombre = 'Deportes' 
);

/* Obtener todas las categorias sin entradas */

SELECT * FROM categorias WHERE id NOT IN(
  SELECT categoria_id FROM entradas  
); 

/* Mostrar usuarios que crearon una entrada en un miércoles */
SELECT * FROM usuarios WHERE id IN(
    SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) = 4
);