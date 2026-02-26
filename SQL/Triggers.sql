DELIMITER //

CREATE TRIGGER validar_matricula
BEFORE INSERT ON matriculas
FOR EACH ROW
BEGIN

    DECLARE nivel VARCHAR(50);
    DECLARE tipoPrograma VARCHAR(50);
    DECLARE cantidad INT;

    -- Obtener nivel académico del aprendiz
    SELECT Nivel_Academico_aprendiz
    INTO nivel
    FROM aprendices
    WHERE Cedula_aprendiz = NEW.aprendices_cedula_aprendiz;

    -- Validar regla 1
    IF nivel NOT IN ('Bachiller Basico', 'Bachiller Secundario') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El aprendiz no cumple con el nivel academico requerido';
    END IF;

    -- Obtener tipo del programa al que se quiere matricular
    SELECT Tipo_programa
    INTO tipoPrograma
    FROM programas
    WHERE No_ficha_programa = NEW.programas_No_ficha_programa;

    -- Contar si ya está matriculado en un Técnico o Tecnólogo
    SELECT COUNT(*)
    INTO cantidad
    FROM matriculas m
    INNER JOIN programas p 
        ON m.programas_No_ficha_programa = p.No_ficha_programa
    WHERE m.aprendices_cedula_aprendiz = NEW.aprendices_cedula_aprendiz
    AND p.Tipo_programa IN ('Tecnico','Tecnologo');

    -- Validar regla 2
    IF cantidad > 0 AND tipoPrograma IN ('Tecnico','Tecnologo') THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El aprendiz ya esta matriculado en un programa tecnico o tecnologo';
    END IF;

END //

DELIMITER ;