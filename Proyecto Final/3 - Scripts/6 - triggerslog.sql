USE bancaria;

/*Se crearon un total de 6 triggers, 3 para cada tabla. Se trabajo sobre la tabla clientes y sobre la tabla cuentas, Esto se realiza para mantener el control sobre estas columnas
ya que el uso malicioso de base de datos podria prevenir y evitar que se modifiquen datos de saldo, datos personales entre otros.*/

DROP TABLE IF EXISTS log_clientes;
CREATE TABLE IF NOT EXISTS log_clientes
	(
	id_logueo INT AUTO_INCREMENT,
	tipo_accion VARCHAR(50),
	nombre_de_tabla VARCHAR(50),
    cliente_id INT,
	nombre VARCHAR(20),
    apellido VARCHAR(20),
    dni VARCHAR (8),
    direccion VARCHAR(50),
    fecha_nacimiento DATE,
	usuario VARCHAR(100),
	fecha_log DATE,
    detalle_log TEXT,
	PRIMARY KEY (id_logueo)
	);

DROP TRIGGER IF EXISTS trg_insert_clientes;
DELIMITER $$
CREATE TRIGGER trg_insert_clientes
	AFTER INSERT
    ON clientes
	FOR EACH ROW
	BEGIN
		INSERT INTO log_clientes (tipo_accion, nombre_de_tabla, cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento, usuario, fecha_log, detalle_log) 
        VALUES ('INSERT', 'CLIENTES', NEW.cliente_id, NEW.nombre, NEW.apellido, NEW.dni, NEW.direccion, NEW.fecha_nacimiento, CURRENT_USER(), TIMESTAMP, 'Este es un cliente nuevo');
    END $$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_update_clientes;
DELIMITER $$
CREATE TRIGGER trg_update_clientes
	BEFORE UPDATE
    ON clientes
	FOR EACH ROW
	BEGIN
		INSERT INTO log_clientes ( tipo_accion, nombre_de_tabla, cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento, usuario, fecha_log, detalle_log)
		VALUES ( 'UPDATE', 'CLIENTES',new.cliente_id, new.nombre, new.apellido, new.dni, new.direccion, new.fecha_nacimiento, CURRENT_USER(), TIMESTAMP,
        CONCAT('Las columnas mostradas han reemplazado a los siguientes valores:',' ', IF( NEW.cliente_id != OLD.cliente_id, CONCAT('ID: ', old.cliente_id), '' ),
        '-', IF (NEW.nombre != OLD.nombre, CONCAT('Nombre:', old.nombre), ''),'-', IF(NEW.apellido != OLD.apellido, CONCAT('Apellido:', old.apellido), ''), '-',
        IF(NEW.dni != OLD.dni, CONCAT('DNI:', old.dni), ''),'-', IF(NEW.direccion != OLD.direccion, CONCAT('Direccion: ', old.direccion), ''),'-',
        IF(NEW.fecha_nacimiento != old.fecha_nacimiento, CONCAT('Fecha de Nacimiento:', old.fecha_nacimiento),''))
        );
    END $$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_delete_clientes;
DELIMITER $$
CREATE TRIGGER trg_delete_clientes
	AFTER DELETE
    ON clientes
	FOR EACH ROW
	BEGIN
		INSERT INTO log_clientes ( tipo_accion, nombre_de_tabla, cliente_id, nombre, apellido, dni, direccion, fecha_nacimiento, usuario, fecha_log, detalle_log)
		VALUES ( 'DELETE', 'CLIENTES',OLD.cliente_id, OLD.nombre, OLD.apellido, OLD.dni, OLD.direccion, OLD.fecha_nacimiento, CURRENT_USER(), TIMESTAMP,
        CONCAT('Este cliente ha sido borrado con exito')
        );
    END $$
DELIMITER ;


/*Triggers para la tabla transacciones*/

DROP TABLE IF EXISTS log_cuentas;
CREATE TABLE IF NOT EXISTS log_cuentas
	(
	id_logueo INT AUTO_INCREMENT,
	tipo_accion VARCHAR(50),
	nombre_de_tabla VARCHAR(50),
    id_cuenta INT,
	id_cliente INT,
    tipo_cuenta INT,
    tipo_moneda INT,
    saldo INT,
    id_sucursal INT,
	usuario VARCHAR(100),
	fecha_log DATE,
    detalle_log TEXT,
	PRIMARY KEY (id_logueo)
	);
    
DROP TRIGGER IF EXISTS trg_insert_cuentas;
DELIMITER $$
CREATE TRIGGER trg_insert_cuentas
	AFTER INSERT
    ON cuentas
	FOR EACH ROW
	BEGIN
		INSERT INTO log_cuentas (tipo_accion, nombre_de_tabla, id_cuenta, id_cliente, tipo_cuenta, tipo_moneda, saldo, id_sucursal, usuario, fecha_log, detalle_log) 
        VALUES ('INSERT', 'CUENTA', NEW.id_cuenta, NEW.id_cliente, NEW.tipo_cuenta, NEW.tipo_moneda, NEW.saldo, NEW.id_sucursal, CURRENT_USER(), TIMESTAMP, 'Esta cuenta es nueva');
    END $$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_update_cuentas;
DELIMITER $$
CREATE TRIGGER trg_update_cuentas
	BEFORE UPDATE
    ON cuentas
	FOR EACH ROW
	BEGIN
		INSERT INTO log_cuentas (tipo_accion, nombre_de_tabla, id_cuenta, id_cliente, tipo_cuenta, tipo_moneda, saldo, id_sucursal, usuario, fecha_log, detalle_log) 
		VALUES ('INSERT', 'CUENTA', NEW.id_cuenta, NEW.id_cliente, NEW.tipo_cuenta, NEW.tipo_moneda, NEW.saldo, NEW.id_sucursal, CURRENT_USER(), TIMESTAMP,
        CONCAT('Los datos que han sido modificados son: ',' ', IF( NEW.id_cuenta != OLD.id_cuenta, CONCAT('ID de Cuenta: ', old.id_cuenta), '' ),
        '-', IF (NEW.id_cliente != OLD.id_cliente, CONCAT('ID de Cliente:', old.id_cliente), ''),'-', IF(NEW.tipo_cuenta != OLD.tipo_cuenta, CONCAT('Tipo de Cuenta:', old.tipo_cuenta), ''), '-',
        IF(NEW.tipo_moneda != OLD.tipo_moneda, CONCAT('Tipo de Moneda:', old.tipo_moneda), ''),'-', IF(NEW.saldo != OLD.saldo, CONCAT('Saldo: ', old.saldo), ''),'-',
        IF(NEW.id_sucursal != old.id_sucursal, CONCAT('ID de Sucursal:', old.id_sucursal),''))
        );
    END $$
DELIMITER ;

DROP TRIGGER IF EXISTS trg_delete_cuentas;
DELIMITER $$
CREATE TRIGGER trg_delete_cuentas
	AFTER DELETE
    ON cuentas
	FOR EACH ROW
	BEGIN
		INSERT INTO log_cuentas (tipo_accion, nombre_de_tabla, id_cuenta, id_cliente, tipo_cuenta, tipo_moneda, saldo, id_sucursal, usuario, fecha_log, detalle_log)
		VALUES ( 'DELETE', 'CLIENTES', OLD.id_cuenta, OLD.id_cliente, OLD.tipo_cuenta, OLD.tipo_moneda, OLD.saldo, OLD.id_sucursal, CURRENT_USER(), TIMESTAMP,
        CONCAT('Este cliente ha sido borrado con exito')
        );
    END $$
DELIMITER ;


