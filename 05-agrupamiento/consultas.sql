/* Consulta para obtener el número de entradas por cada categoria */
/* La condicion WHERE no se puede aplicar como en las otras sentencias con el Group by */
SELECT COUNT(titulo) AS 'Número de entradas Ana Sofía', categoria_id FROM entradas GROUP BY categoria_id;

/* Consulta agrupada con condiciones */
SELECT COUNT(titulo) AS 'Número de entradas Ana Sofía', categoria_id FROM entradas GROUP BY categoria_id
HAVING COUNT(titulo) >= 4;

SELECT AVG(id) AS 'Promedio id Ana Sofía' FROM entradas; /* Con este, se saca el promedio */
SELECT MAX(id) AS 'Maximo id' FROM entradas; /* Este sirve para sacar el valor más alto de una lista */
SELECT MIN(id) AS 'Maximo id' FROM entradas; /* Este sirve para sacar el valor mínimo de una lista */
SELECT SUM(id) AS 'Suma de ids' FROM entradas; /* Para sumar elementos */
SELECT AVG(id) AS 'Promedio id' FROM entradas WHERE categoria_id = 1; /* Con este, se saca el promedio de los números cuya categoría es id = 1 */