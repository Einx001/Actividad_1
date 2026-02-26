USE centroFormacion;

INSERT INTO programas VALUES
(1001, 'ADSO', 'Centro de comercio y servicios', 'Tecnologo', 'Diurna'),
(1002, 'Contabilidad', 'Centro de comercio y servicios', 'Tecnico', 'Nocturna'),
(1003, 'Diseno Grafico', 'Centro de comercio y servicios', 'Tecnologo', 'Mixta'),
(1004, 'Mantenimiento Industrial', 'Centro agropecuario y de Informatica', 'Tecnico', 'Diurna'),
(1005, 'Marketing Digital', 'Centro de comercio y servicios', 'Tecnologo', 'Virtual');

INSERT INTO modalidades VALUES
(1, 'Presencial', 1001),
(2, 'Virtual', 1002),
(3, 'Distancia', 1003),
(4, 'Presencial', 1004),
(5, 'Virtual', 1005);

INSERT INTO competencias VALUES
(1, 'Bases de datos', 1001),
(2, 'Gestion Contable', 1002),
(3, 'Diseno Publicitario', 1003),
(4, 'Mantenimiento Preventivo', 1004),
(5, 'Estrategias Digitales', 1005);

INSERT INTO aprendices VALUES
(1010, 'Carlos', 'Perez', 'Calle 10', '3001112233', 'Bachiller Basico'),
(1020, 'Laura', 'Gomez', 'Carrera 15', '3002223344', 'Bachiller Secundario'),
(1030, 'Andres', 'Martinez', 'Calle 25', '3003334455', 'Primaria'),
(1040, 'Sofia', 'Ramirez', 'Avenida 30', '3004445566', 'Bachiller Secundario'),
(1050, 'Juan', 'Lopez', 'Calle 45', '3005556677', 'Bachiller Secundario');

INSERT INTO matriculas VALUES
(1, 1001, 1010),
(2, 1002, 1020),
(3, 1003, 1030),
(4, 1004, 1040),
(5, 1005, 1050);

INSERT INTO instructores VALUES
(2010, 'Miguel', 'Torres', 'Calle 5', '3101112233', 'Planta'),
(2020, 'Ana', 'Morales', 'Carrera 8', '3102223344', 'Contrato'),
(2030, 'Pedro', 'Castro', 'Calle 12', '3103334455', 'Planta'),
(2040, 'Diana', 'Herrera', 'Avenida 18', '3104445566', 'Contrato'),
(2050, 'Luis', 'Rojas', 'Calle 22', '3105556677', 'Planta');

INSERT INTO orientaciones VALUES
(1, 1001, 2010),
(2, 1002, 2020),
(3, 1003, 2030),
(4, 1004, 2040),
(5, 1005, 2050);
