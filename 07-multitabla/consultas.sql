/* JOINS nos permiten fusionar información de múltiples tablas*/

/* Mostrar las entradas con el nombre del autor y la categoria */
SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre
FROM entradas
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id
INNER JOIN categorias ON entradas.categoria_id = categorias.id;

/* Se puede acotar el nombre, referenciandolo con una letra, por ejemplo */
SELECT e.id, e.titulo, u.nombre, c.nombre
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

/* Obtener el número de entradas de categorias */
SELECT c.nombre, COUNT(e.id) FROM categorias c
INNER JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;

/*Con este se puede ver también los elementos que están en la intersección + la info de la tabla de la izquierda */
SELECT c.nombre, COUNT(e.id) FROM categorias c
LEFT JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;