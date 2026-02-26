DROP DATABASE IF EXISTS centroFormacion;

CREATE DATABASE IF NOT EXISTS centroFormacion;
USE centroFormacion;

CREATE TABLE IF NOT EXISTS programas(
	No_ficha_programa INT NOT NULL,
    Nombre_programa VARCHAR(50) NOT NULL,
    Ubicacion_programa VARCHAR(50) NOT NULL,
    Tipo_programa VARCHAR(50) NOT NULL,
    Jornada_programa VARCHAR(50) NOT NULL,
    PRIMARY KEY (No_ficha_programa)    
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS modalidades(
	Id_modalidad INT NOT NULL,
    Tipo_modalidad VARCHAR(50) NOT NULL,
    PRIMARY KEY (Id_modalidad),
    
    programas_No_ficha_programa INT NOT NULL,
    
    CONSTRAINT fkmodalidades_programas
    FOREIGN KEY (programas_No_ficha_programa)
    REFERENCES programas(No_ficha_programa)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS competencias(
	Id_competencia INT NOT NULL,
	Nombre_competencia VARCHAR(50) NOT NULL,
	PRIMARY KEY(Id_competencia),

	programas_No_ficha_programa INT NOT NULL,
    
    CONSTRAINT fkcompetencias_programas
    FOREIGN KEY (programas_No_ficha_programa)
    REFERENCES programas(No_ficha_programa)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS aprendices(
	Cedula_aprendiz INT NOT NULL,
	Nombre_aprendiz VARCHAR(50) NOT NULL,
    Apellido_aprendiz VARCHAR(50) NOT NULL,
    Direccion_aprendiz VARCHAR(50) NOT NULL,
    Telefono_aprendiz VARCHAR(50) NOT NULL,
    Nivel_Academico_aprendiz VARCHAR(50) NOT NULL,
	PRIMARY KEY(Cedula_aprendiz)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS matriculas(
	Id_matricula INT NOT NULL,
	PRIMARY KEY(Id_matricula),

	programas_No_ficha_programa INT NOT NULL,
    aprendices_cedula_aprendiz INT NOT NULL,
    
    CONSTRAINT fkmatriculas_programas
    FOREIGN KEY (programas_No_ficha_programa)
    REFERENCES programas(No_ficha_programa),
    
    CONSTRAINT fkmatriculas_aprendices
    FOREIGN KEY (aprendices_cedula_aprendiz)
    REFERENCES aprendices(Cedula_aprendiz)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS instructores(
	Cedula_instructor INT NOT NULL,
	Nombre_instructor VARCHAR(50) NOT NULL,
    Apellido_instructor VARCHAR(50) NOT NULL,
    Direccion_instructor VARCHAR(50) NOT NULL,
    Telefono_instructor VARCHAR(50) NOT NULL,
    Tipo_instructor VARCHAR(50) NOT NULL,
	PRIMARY KEY(Cedula_instructor)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS orientaciones(
	Id_orientacion INT NOT NULL,
	PRIMARY KEY(Id_orientacion),

	programas_No_ficha_programa INT NOT NULL,
    instructores_cedula_instructor INT NOT NULL,
    
    CONSTRAINT fkorientaciones_programas
    FOREIGN KEY (programas_No_ficha_programa)
    REFERENCES programas(No_ficha_programa),
    
    CONSTRAINT fkorientaciones_instructores
    FOREIGN KEY (instructores_cedula_instructor)
    REFERENCES instructores(Cedula_instructor)
)ENGINE = INNODB;
