/*WHERE es la condicion de la información que va a traer */
/* nos permite seleccionar elementos específicos */
SELECT nombre, email FROM usuarios WHERE id = 4;

SELECT * FROM usuarios WHERE email = 'anasolori.92@gmail.com';

SELECT *  FROM usuarios WHERE apellidos = 'López de Rivera';

/* Operadores de comparación

Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

/*Con YEAR pedimos que nos traiga solo los elementos que tengan determinado año en el campo de fecha */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2020';

/*Se pueden tener dos condiciones, con OR o AND */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2020' OR YEAR(fecha) = '2021';

/*Se pueden traer datos a partir de cierto punto*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';

/*Traer usuarios que no se hayan registrado en 2020 */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha);

/*Seleccionar registros por dos columnas */
SELECT nombre, apellidos FROM usuarios WHERE email = 'anasolori.92@gmail.com' AND password = '1234';

/*Elementos que contengan un texto: %elemento% que contenga el elemento; %elemento que termine en el elemento; elemento% que empiece con el elemento */
SELECT * FROM usuarios WHERE nombre LIKE '%a%';
SELECT * FROM usuarios WHERE email LIKE '%gmail%';
