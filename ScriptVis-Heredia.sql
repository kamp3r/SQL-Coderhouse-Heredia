USE bancaria;

/*Vista que permite tener los datos del cliente con sus saldos y donde tienen radicada la cuenta con la direccion de la sucursal*/

CREATE OR REPLACE VIEW clientes_cuentas_radicacion AS
	(SELECT c.id_cliente, cli.nombre, cli.apellido, c.id_cuenta, cl.tipo_cuenta, tm.nombre_moneda AS tipo_moneda, c.saldo, pr.provincia, lc.localidad, s.direccion AS direccion_sucursal
	FROM cuentas AS c
	INNER JOIN clientes AS cli ON c.id_cliente = cli.cliente_id
	INNER JOIN clasificacion_cuenta AS cl ON c.tipo_cuenta = cl.id_tipo
	INNER JOIN moneda AS tm ON c.tipo_moneda = tm.id_moneda
	INNER JOIN sucursal AS s ON c.id_sucursal = s.id_sucursal
	INNER JOIN provincias AS pr ON s.provincia = pr.id_provincia
	INNER JOIN localidades AS lc ON s.localidad = lc.id_localidad
	ORDER BY id_cliente ASC);

/*Vista que trae los datos de los empleados y en que sucursal se desempeñan*/
CREATE OR REPLACE VIEW datos_empleados AS
	(SELECT e.id_empleado, e.nombre, e.apellido, e.cuil, e.direccion as domicilio_particular, e.telefono, e.fecha_ingreso, pl.puesto_nombre AS puesto, pr.provincia, lc.localidad, s.direccion as domicilio_laboral
	FROM empleados AS e
    INNER JOIN puesto_laboral AS pl ON e.puesto = pl.id_puesto
    INNER JOIN sucursal AS s ON e.sucursal_empleo = s.id_sucursal
    INNER JOIN provincias AS pr ON s.provincia = pr.id_provincia
    INNER JOIN localidades AS lc ON s.localidad = lc.id_localidad
	ORDER BY id_empleado ASC);

/*Vista que permite visualizar las transacciones ordenadas por cliente*/
CREATE OR REPLACE VIEW detalle_operaciones AS
	(SELECT t.id_transaccion, t.id_cliente, t.fecha, o.tipo_operacion, t.monto, e.estado_operacion 
	FROM transacciones AS t
	INNER JOIN operaciones AS o ON t.tipo_transaccion = o.id_operacion
	INNER JOIN estado AS e ON t.estado = e.id_estado
	ORDER BY id_cliente ASC);
      
/*Vista de listado de operaciones aprobadas*/
CREATE OR REPLACE VIEW operaciones_aprobadas AS
 	(SELECT t.id_transaccion, t.id_cliente, t.fecha, o.tipo_operacion, t.monto, e.estado_operacion 
	FROM transacciones AS t
	INNER JOIN operaciones AS o ON t.tipo_transaccion = o.id_operacion
	INNER JOIN estado AS e ON t.estado = e.id_estado
    WHERE estado_operacion like ('%aprobado%'));

/*Vista de listado de operaciones en proceso*/
CREATE OR REPLACE VIEW operaciones_en_proceso AS
 	(SELECT t.id_transaccion, t.id_cliente, t.fecha, o.tipo_operacion, t.monto, e.estado_operacion 
	FROM transacciones AS t
	INNER JOIN operaciones AS o ON t.tipo_transaccion = o.id_operacion
	INNER JOIN estado AS e ON t.estado = e.id_estado
    WHERE estado_operacion like ('%en proceso%'));    

/*Vista de listado de operaciones rechazadas*/
CREATE OR REPLACE VIEW operaciones_rechazada AS
 	(SELECT t.id_transaccion, t.id_cliente, t.fecha, o.tipo_operacion, t.monto, e.estado_operacion 
	FROM transacciones AS t
	INNER JOIN operaciones AS o ON t.tipo_transaccion = o.id_operacion
	INNER JOIN estado AS e ON t.estado = e.id_estado
    WHERE estado_operacion like ('%rechazado%'));    
    