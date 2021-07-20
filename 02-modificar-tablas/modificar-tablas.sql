/* Renombrar la tabla */
ALTER TABLE usuarios RENAME TO usuarios_renom;

/* Renombrar una columna */
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) NULL;

/* Modificar una columna sin cambiar el nombre */
ALTER TABLE usuarios_renom MODIFY apellido CHAR(50) NOT NULL;

/* Añadir columna */
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;

/*Añadir una restricción a una columna, se añade con ADD */
/*uq_email es el nombre de mi restricción. Mail debe ser un campo único(Unique)*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email); 

/*Borrar una columna*/
ALTER TABLE usuarios_renom DROP website;

/* Constraint para Foreign Key */
CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)