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

/*La funcion calcular clientes por sucursal, nos permite ingresando el ID de la sucursal, saber cuantos clientes presenta la misma*/

DROP FUNCTION IF EXISTS fn_calcular_clientes_por_sucursal;
DELIMITER $$
CREATE FUNCTION fn_calcular_clientes_por_sucursal (p_sucursal_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE cantidad_clientes_sucursal INT;
    SELECT COUNT(id_cuenta) into cantidad_clientes_sucursal FROM cuentas
    WHERE id_sucursal = p_sucursal_id;
	RETURN cantidad_clientes_sucursal;
END
$$
    