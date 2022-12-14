USE bancaria;

/*La funcion calcular antiguedad, recibe el id del empleado y busca cuantos años de antiguedad presenta en el banco*/

DROP FUNCTION IF EXISTS fn_calcular_antiguedad;
DELIMITER $$
CREATE FUNCTION fn_calcular_antiguedad (p_id INT)
RETURNS BIGINT
READS SQL DATA
BEGIN
	DECLARE antiguedad BIGINT;
	SELECT TIMESTAMPDIFF(YEAR, fecha_ingreso, NOW()) into antiguedad FROM empleados
	WHERE p_id = id_empleado;
    RETURN antiguedad;
END
$$

DROP FUNCTION IF EXISTS fn_calcular_clientes_provincia;
DELIMITER $$
CREATE FUNCTION fn_calcular_clientes_provincia (p_provincia_id INT)
RETURNS VARCHAR
READS SQL DATA
BEGIN
	DECLARE antiguedad
    
    