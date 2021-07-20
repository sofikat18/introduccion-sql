/* Insertar valores en una tabla */
INSERT INTO usuarios VALUES(NULL, 'Ana Sofía', 'López de Rivera', 'anasolori.92@gmail.com', '1234', '2021-06-20');
INSERT INTO usuarios VALUES(NULL, 'Luis Ernesto', 'López de Rivera', 'luiserlopez@gmail.com', '5678', '2021-06-20');
INSERT INTO usuarios VALUES(NULL, 'Jorge', 'Alcantar', 'jorge@gmail.com', '2929', '2021-06-20');
INSERT INTO usuarios VALUES(NULL, 'Pedro', 'Perez', 'pedro@gmail.com', '2929', '2020-06-20');

/*Insertar datos en ciertas columnas */
/* el orden que se establezca en los primeros paréntesis, es el orden que deben llevar los valores en VALUES */
INSERT INTO usuarios(fecha, password, nombre, apellidos, email) VALUES ('2021-07-20', '3030', 'Juan', 'Diaz', 'juan@diaz.com');