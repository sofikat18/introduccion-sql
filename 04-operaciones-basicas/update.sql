/*Se recomienda que se use el id para señalar los cambios que se quieren hacer, por ejemplo WHERE id = 3*/
/*Esto porque los ids son unicos y es más dificil que se cambien datos por error */
UPDATE usuarios SET nombre='Joaquin', fecha='2020-05-12' WHERE nombre='Juan';