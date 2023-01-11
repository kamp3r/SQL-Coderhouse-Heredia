/*Empezamos seteando la variable global autocommit en 0 para evitar que automaticamente realice los commits, asi mismo tambien se deshabilita el checkeo de claves foraneas*/
USE bancaria;

SET @@AUTOCOMMIT = 0;
SET @@FOREIGN_KEY_CHECK = 0;

START TRANSACTION;

DELETE FROM clientes WHERE cliente_id = 1;
DELETE FROM clientes WHERE cliente_id = 2;
DELETE FROM clientes WHERE cliente_id = 3;

-- ROLLBACK;
-- SENTENCIAS PARA REINSERTAR LOS DATOS ELIMINADOS
-- INSERT INTO clientes VALUES (1, 'Marcos', 'Acuña', '38145789', 'San Jorge 1234', '1993-12-01'),
-- (2, 'Jaime', 'Allon', '18746879', 'Pieres 456', '1963-05-21'),
-- (3, 'Maria Laura', 'Tazer', '30695123', 'Coquimboe 777', '1982-04-02');

COMMIT;

SELECT * FROM clientes; -- SENTENCIA PARA VERIFICAR QUE LA ELIMINACION FUE CORRECTA

/*FINAL DE LA ELIMINACION DE CLIENTES, COMIENZO DE LA SEGUNDA TRANSACCION, DONDE VAMOS A INSERTAR LOCALIDADES EN LA TABLA DEL MISMO NOMBRE*/

START TRANSACTION;

INSERT INTO localidades VALUES (NULL, 'Moreno'),
	(NULL, 'San Justo'),
    (NULL, 'Vicente Lopez'),
    (NULL, 'San Martin');
SAVEPOINT localidades1;
INSERT INTO localidades VALUES (NULL, 'Moron'),
	(NULL, 'San Miguel'),
    (NULL, 'Trujui'),
    (NULL, 'Villa Celina');
SAVEPOINT localidades2;

-- RELEASE SAVEPOINT localidades1;

COMMIT;

