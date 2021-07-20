/*Obtener registro de base de datos */
/*Se puede llama la tabla desde cualquier docuemento del workbench*/
/*el asterisco * representa todos los elementos de la tabla*/
/*Cuesta más traer toda la info de la base de datos que solo unas columnas */
SELECT * FROM usuarios; 

/*Obetener la columna de una tabla*/
SELECT nombre, apellidos FROM usuarios;
SELECT email, password FROM usuarios;