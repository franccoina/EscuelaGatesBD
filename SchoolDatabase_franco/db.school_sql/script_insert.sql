/*INSERCIONES CON INSERT INTO*/

/*Inserciones en tabla de Estudiantes*/

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("lucas","ponce","2008-11-09","161001210101",2,4);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("andres","carreño","2008-01-03","161001210801",2,3);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("tara","alvarez","2008-02-07","161641210801",2,3);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("carlos","casas","2008-11-09","101001210101",2,5);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("albeiro","villa","2008-01-01","101001010901",1,1);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("andy","roberts","2008-01-01","101001010901",2,2);

INSERT INTO estudiantes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,grupos_id)
VALUES("mary","grohl","2008-04-01","101055010901",2,2);

/*Inserciones en tabla de Docentes*/

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,oficinas_id)
VALUES("jose","perez","2000-11-02","101601010151",1,2);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,oficinas_id)
VALUES("juan","torres","2000-11-01","101001510131",4,1);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,oficinas_id)
VALUES("luisa","ramos","2000-10-09","101001210181",2,3);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,oficinas_id)
VALUES("olga","lopera","2000-04-09","107401210101",2,1);

INSERT INTO docentes (nombre,apellido,fecha_nacimiento,numero_identificacion,tipos_identificacion_id,oficinas_id)
VALUES("hugo","boss","2000-11-09","101401210101",2,5);

/*Inserciones en tabla de Oficinas*/

INSERT INTO oficinas (nombre_oficina)
VALUES("101");

INSERT INTO oficinas (nombre_oficina)
VALUES("102");

INSERT INTO oficinas (nombre_oficina)
VALUES("103");

INSERT INTO oficinas (nombre_oficina)
VALUES("104");

INSERT INTO oficinas (nombre_oficina)
VALUES("105");

/*Inserciones en tabla de Aulas*/

INSERT INTO aulas (nombre_aula)
VALUES("201");

INSERT INTO aulas (nombre_aula)
VALUES("202");

INSERT INTO aulas (nombre_aula)
VALUES("203");

INSERT INTO aulas (nombre_aula)
VALUES("204");

INSERT INTO aulas (nombre_aula)
VALUES("05");

/*Inserciones en tabla de Tipos de documentos*/

INSERT INTO tipos_identificacion (nombre_identificacion,abreviatura)
VALUES("cedula de ciudadania","cc");

INSERT INTO tipos_identificacion (nombre_identificacion,abreviatura)
VALUES("tarjeta de identidad","ti");

INSERT INTO tipos_identificacion (nombre_identificacion,abreviatura)
VALUES("registro civil","rc");

INSERT INTO tipos_identificacion (nombre_identificacion,abreviatura)
VALUES("pasaporte","pa");

INSERT INTO tipos_identificacion (nombre_identificacion,abreviatura)
VALUES("cedula de extranjeria","ce");

/*Inserciones en tabla de Grados*/

INSERT INTO grados (nombre_grado)
VALUES("sexto");

INSERT INTO grados (nombre_grado)
VALUES("septimo");

INSERT INTO grados (nombre_grado)
VALUES("octavo");

INSERT INTO grados (nombre_grado)
VALUES("noveno");

INSERT INTO grados (nombre_grado)
VALUES("decimo");

INSERT INTO grados (nombre_grado)
VALUES("once");

/*Inserciones en tabla de Grupos*/

INSERT INTO grupos (nombre_grupo,jornadas_id,grados_id,aulas_id)
VALUES("a",1,1,3);

INSERT INTO grupos (nombre_grupo,jornadas_id,grados_id,aulas_id)
VALUES("b",2,5,1);

INSERT INTO grupos (nombre_grupo,jornadas_id,grados_id,aulas_id)
VALUES("c",1,2,5);

INSERT INTO grupos (nombre_grupo,jornadas_id,grados_id,aulas_id)
VALUES("d",1,4,4);

INSERT INTO grupos (nombre_grupo,jornadas_id,grados_id,aulas_id)
VALUES("e",2,3,2);

/*Inserciones en tabla de Jornadas*/

INSERT INTO jornadas (nombre_jornada)
VALUES("diurna");

INSERT INTO jornadas (nombre_jornada)
VALUES("nocturna");

/*Inserciones en tabla de Asignaturas*/

INSERT INTO asignaturas (nombre_asignatura)
VALUES("matematicas");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("gimnasia");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("lenguaje");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("ingles");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("ciencias");

INSERT INTO asignaturas (nombre_asignatura)
VALUES("sociales");

/*Inserciones en tabla de Horarios*/

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(1,2,3,"lun","07:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(1,1,3,"mar","09:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(1,2,1,"lun","10:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(2,2,2,"mie","07:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(2,4,3,"vie","14:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(1,4,3,"lun","09:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(1,3,1,"jue","14:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(2,3,2,"jue","16:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(2,4,3,"mar","16:00:00");

INSERT INTO horarios (asignaturas_id,grupos_id,docentes_id,dia,hora)
VALUES(2,5,3,"mar","17:00:00");