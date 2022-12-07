/*Base de datos BANCARIA
La misma fue modificada desde la ultima entrega.
Se crearon nuevas tablas para darle mas maniobrabilidad a la base de datos.
Tenemos las tablas cliente que posee los datos del mismo, la tabla sucursal que alberga direccion e id de sucursal
Luego la tabla cuenta la cual fue desmenuzada y sacados a parte el tipo de moneda (tabla moneda) y tipo de cuenta (tabla clasificacion de moneda)
Esto mismo fue hecho con transacciones, que fue creada la tabla de estado y operaciones para dejar de albergar esa informacion dentro de la tabla transacciones.alter
Se elimino la tabla prestamos ante esta modificacion, ya que va a ser manejado por transacciones y las dos tablas de estado y operaciones, como asi tambien se adiciono la tabla
empleados, la cual se vincula con sucursal y posee una tabla a parte la cual brinda los datos del puesto que ocupa cada empleado llamda puesto_laboral.
Se adjunta en la entrega el DER generado por workbench para mayor ilustracion de esta breve descripcion.
*/


CREATE DATABASE bancaria;

USE bancaria;

CREATE TABLE IF NOT EXISTS sucursal(
id_sucursal INT NOT NULL AUTO_INCREMENT,
direccion VARCHAR(50),
PRIMARY KEY(id_sucursal)
);

CREATE TABLE IF NOT EXISTS cliente(
cliente_id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
apellido VARCHAR(20) NOT NULL,
dni INT NOT NULL,
direccion VARCHAR(50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
PRIMARY KEY (cliente_id)
);

CREATE TABLE IF NOT EXISTS operaciones(
id_operacion INT NOT NULL AUTO_INCREMENT,
tipo_operacion VARCHAR(20),
PRIMARY KEY (id_operacion)
);

CREATE TABLE IF NOT EXISTS estado(
id_estado INT NOT NULL AUTO_INCREMENT,
estado_operacion VARCHAR(20),
PRIMARY KEY (id_estado)
);

CREATE TABLE IF NOT EXISTS clasificacion_cuenta(
id_tipo INT NOT NULL AUTO_INCREMENT,
tipo_cuenta VARCHAR(30),
PRIMARY KEY(id_tipo)
);

CREATE TABLE IF NOT EXISTS puesto_laboral(
id_puesto INT NOT NULL AUTO_INCREMENT,
puesto_nombre VARCHAR(20),
PRIMARY KEY(id_puesto)
);

CREATE TABLE IF NOT EXISTS moneda(
id_moneda INT NOT NULL AUTO_INCREMENT,
nombre_moneda VARCHAR(10),
PRIMARY KEY(id_moneda)
);

CREATE TABLE IF NOT EXISTS transacciones(
id_transaccion INT NOT NULL AUTO_INCREMENT,
tipo_transaccion INT NOT NULL,
fecha TIMESTAMP NOT NULL,
estado INT,
monto INT,
id_cliente INT NOT NULL,
PRIMARY KEY (id_transaccion),
FOREIGN KEY (id_cliente) references cliente(cliente_id),
FOREIGN KEY(tipo_transaccion) references operaciones(id_operacion),
FOREIGN KEY(estado) references estado(id_estado)
);

CREATE TABLE IF NOT EXISTS cuenta(
id_cuenta INT NOT NULL,
id_cliente INT NOT NULL,
tipo_cuenta INT,
tipo_moneda INT,
saldo INT,
movimiento_id INT,
id_sucursal INT,
PRIMARY KEY(id_cuenta),
FOREIGN KEY(id_cliente) references cliente(cliente_id),
FOREIGN KEY(tipo_cuenta) references clasificacion_cuenta(id_tipo),
FOREIGN KEY(tipo_moneda) references moneda(id_moneda),
FOREIGN KEY(id_sucursal) references sucursal(id_sucursal)
);

CREATE TABLE IF NOT EXISTS empleados(
id_empleado INT NOT NULL,
nombre VARCHAR(20),
apellido VARCHAR(20),
cuil INT,
direccion VARCHAR(50),
telefono INT,
fecha_ingreso DATE,
puesto INT,
sucursal_empleo INT,
PRIMARY KEY(id_empleado),
FOREIGN KEY(puesto) references puesto_laboral(id_puesto),
FOREIGN KEY(sucursal_empleo) references sucursal(id_sucursal)
);

