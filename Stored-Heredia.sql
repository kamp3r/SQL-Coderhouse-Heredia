USE bancaria;

/*Stored procedure dinamico que nos permite ordenar cualquier tabla, por cualquier campo, en order ascendente o descendente segun se le indique en los parametros*/

DROP PROCEDURE IF EXISTS sp_ordenar_tabla;
DELIMITER $$
CREATE PROCEDURE sp_ordenar_tabla(IN p_nombre_tabla VARCHAR(255), IN p_nombre_campo VARCHAR(255), IN p_asc_desc VARCHAR(4))
BEGIN
	SET @v1 = concat('SELECT * FROM ', p_nombre_tabla,' ORDER BY ',p_nombre_campo,' ',p_asc_desc);
    PREPARE consulta FROM @v1 ;
    EXECUTE consulta;
    DEALLOCATE PREPARE consulta;
END $$
DELIMITER ;

/*SP que permite agregar o eliminar cliente segun la letra que se indique en caso de eliminar, se requiere usar la letra 'd' y el id de cliente y en caso de agregar, se debe utilizar la letra
'a' y dejar null el cliente id*/

DROP PROCEDURE IF EXISTS sp_agregar_eliminar_cliente;
DELIMITER $$
CREATE PROCEDURE sp_agregar_eliminar_cliente(IN add_delete VARCHAR(1), IN id_cliente INT, in nombre VARCHAR(20), apellido VARCHAR(20), in dni VARCHAR(8), IN direccion VARCHAR(50), fecha_nacimiento VARCHAR(10))
BEGIN
	IF (add_delete = 'a') -- INSERTAR
    THEN
	INSERT INTO clientes (cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento)
    VALUES (NULL, nombre, apellido, dni, direccion, fecha_nacimiento);
  
    ELSEIF (add_delete = 'd') -- ELIMINAR
    THEN
    DELETE FROM clientes where id_cliente = cliente_id;
    END IF;
END $$
DELIMITER ;
