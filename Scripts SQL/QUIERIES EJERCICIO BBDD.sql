CREATE TABLE intake (
    id_intake int NOT NULL,
    Vertical varchar(255),
	Campus varchar(255),
	Fecha_promocion int,
	PRIMARY KEY (id_intake)
);


CREATE TABLE alumnos (
  	ID_Estudiante int NOT NULL,
	ID_Intake int,
    Nombre varchar(255),
    Email varchar(255),
    PRIMARY KEY (ID_Estudiante),
	FOREIGN KEY (ID_Intake) REFERENCES intake(id_intake)
);


CREATE TABLE claustro (
	ID_Claustro int NOT NULL,
  	ID_Intake int,
    Nombre varchar(255),
	Rol varchar(255),
	PRIMARY KEY (ID_Claustro),
	FOREIGN KEY (ID_Intake) REFERENCES intake(id_intake)
);

CREATE TABLE proyectosds (
	ID_calificacionesDS int NOT NULL,
	ID_Intake int,
  	ID_Estudiante int,
	Proyecto_HLF varchar(255),
	Proyecto_EDA varchar(255),
	Proyecto_BBDD varchar(255),
	Proyecto_ML varchar(255),
	Proyecto_Deployment varchar(255),
	PRIMARY KEY (ID_calificacionesDS),
	FOREIGN KEY (ID_Intake) REFERENCES intake(id_intake),
	FOREIGN KEY (ID_Estudiante) REFERENCES alumnos(ID_Estudiante)
	
	
);

CREATE TABLE proyectosfs (
	ID_calificacionesFS int NOT NULL,
	ID_Intake int,
  	ID_Estudiante int,
	Proyecto_WebDev varchar(255),
	Proyecto_FrontEnd varchar(255),
	Proyecto_Backend varchar(255),
	Proyecto_React varchar(255),
	Proyecto_FullStack varchar(255),
	PRIMARY KEY (ID_calificacionesFS),
	FOREIGN KEY (ID_Intake) REFERENCES intake(id_intake),
	FOREIGN KEY (ID_Estudiante) REFERENCES alumnos(ID_Estudiante)
);


/*DATOS SERVIDOR:

Server: surus.db.elephantsql.com
User & Default database: qcpeytsu
Password: 7HaAVvTxmmDLdRsyW7xdhje8cwoZ3Ii8
URL:	postgres://qcpeytsu:7HaAVvTxmmDLdRsyW7xdhje8cwoZ3Ii8@surus.db.elephantsql.com/qcpeytsu
API Key: a4899089-23c8-4cce-9bf7-361d5c298f8f

*/

