USE centroFormacion;

SELECT *
FROM programas
WHERE Tipo_programa LIKE 'Tecnologo'
AND Jornada_programa LIKE 'Diurna';

SELECT *
FROM programas
WHERE Tipo_programa LIKE 'Tecnologo'
OR Tipo_programa LIKE 'Tecnico';

SELECT *
FROM aprendices
WHERE Nombre_aprendiz LIKE 'C%'
OR Apellido_aprendiz LIKE '%z';

SELECT *
FROM instructores
WHERE Tipo_instructor LIKE 'Planta'
AND Direccion_instructor LIKE '%Calle%';

SELECT *
FROM programas
WHERE Ubicacion_programa LIKE '%comercio%'
AND (Jornada_programa LIKE 'Virtual'
     OR Jornada_programa LIKE 'Mixta');