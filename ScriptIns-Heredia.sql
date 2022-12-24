USE bancaria;

INSERT INTO provincias VALUES (NULL, 'Buenos Aires'),
	 (NULL, 'Ciudad Autonoma de Buenos Aires'),
	 (NULL, 'Catamarca'),
	 (NULL, 'Chaco'),
	 (NULL, 'Chubut'), 
	 (NULL, 'Cordoba'),
	 (NULL, 'Corrientes'),
	 (NULL, 'Entre Rios'),
	 (NULL, 'Formosa'),
	 (NULL, 'Jujuy'),
	 (NULL, 'La Pampa'), 
	 (NULL, 'La Rioja'),
	 (NULL, 'Mendoza'),
	 (NULL, 'Misiones'),
	 (NULL, 'Neuquen'),
	 (NULL, 'Rio Negro'), 
	 (NULL, 'Salta'),
	 (NULL, 'San Juan'),
	 (NULL, 'San Luis'),
	 (NULL, 'Santa Cruz'),
	 (NULL, 'Santa Fe'),
	 (NULL, 'Santiago del Estero'),
	 (NULL, 'Tierra del Fuego'),
	 (NULL, 'Tucuman');
	 
 INSERT INTO localidades VALUES (NULL, 'La Plata'),
	 (NULL, 'Ciudad Autonoma de Buenos Aires'),
	 (NULL, 'San Fernando del Valle de Catamarca'),
	 (NULL, 'Resistencia'),
	 (NULL, 'Rawson'), 
	 (NULL, 'Ciudad de Cordoba'),
	 (NULL, 'Ciudad de Corrientes'),
	 (NULL, 'Parana'),
	 (NULL, 'Ciudad de Formosa'),
	 (NULL, 'San Salvador de Jujuy'), 
	 (NULL, 'Santa Rosa'),
	 (NULL, 'Ciudad de La Rioja'),
	 (NULL, 'Ciudad de Mendoza'),
	 (NULL, 'Posadas'),
	 (NULL, 'Ciudad de Neuquen'),
	 (NULL, 'Viedma'), 
	 (NULL, 'Ciudad de Salta'),
	 (NULL, 'Ciudad de San Juan'),
	 (NULL, 'Ciudad de San Luis'),
	 (NULL, 'Rio Gallegos'),
	 (NULL, 'Ciudad de Santa Fe'),
	 (NULL, 'Ciudad de Santiago del Estero'),
	 (NULL, 'Ushuaia'),
	 (NULL, 'San Miguel de Tucuman');
 
 INSERT INTO clientes VALUES (NULL, 'Marcos', 'Acuña', '38145789', 'San Jorge 1234', '1993-12-01'),
	 (NULL, 'Jaime', 'Allon', '18746879', 'Pieres 456', '1963-05-21'),
	 (NULL, 'Maria Laura', 'Tazer', '30695123', 'Coquimboe 777', '1982-04-02'),
	 (NULL, 'Lilian', 'Clark', '9133412', 'Besares 734', '1933-04-04'),
	 (NULL, 'Ramon', 'Pelle', '26984621', 'San Luis 698', '1968-08-06'),
	 (NULL, 'Adriana', 'Perrone', '40145789', 'Salta 1123', '2000-05-05'),
	 (NULL, 'Lautaro', 'Romero', '39561023', 'Virasoro 756', '1995-03-16'),
	 (NULL, 'Mario', 'Santos', '20126789', 'Campos Eliseos 1717', '1960-10-10'),
	 (NULL, 'Melisa', 'Hernandez', '35001321', 'Formosa 115', '1989-12-22'),
	 (NULL, 'Ramona', 'Ayala', '15698563', 'Vuelta de Obligado 799', '1955-02-10'),
	 (NULL, 'Vanina', 'Valenzuela', '29144789', 'Santo Tome 723', '1980-03-29'),
	 (NULL, 'Julian', 'Becerra', '43127922', 'Monroe 7136', '2003-07-14'),
	 (NULL, 'Athos', 'Pomier', '37446332', 'Marcos Sastre 55', '1990-08-08'),
	 (NULL, 'Daiana', 'Rodriguez', '92756123', 'Almirante Brown 7789', '1996-06-06'),
	 (NULL, 'Pablo', 'San Filippo', '12356998', 'Pichincha 12', '1949-01-02');
 
INSERT INTO operaciones VALUES (NULL, 'Extraccion ATM'),
	(NULL, 'Extraccion Ventanilla'),
	(NULL, 'Deposito Cuenta Propia'),
    (NULL, 'Deposito Cuenta Tercero'),
	(NULL, 'Pago Haberes'),
	(NULL, 'Prestamo');

INSERT INTO estado VALUES (NULL, 'Aprobado'),
	(NULL, 'En proceso'),
	(NULL, 'Rechazado');

INSERT INTO clasificacion_cuenta VALUES (NULL, 'Caja de Ahorros'),
	(NULL, 'Cuenta Corriente');

INSERT INTO moneda VALUES (NULL, 'Pesos Argentinos'),
	(NULL, 'Dolares Americanos');

INSERT INTO puesto_laboral VALUES (NULL, 'Presidente'),
	(NULL, 'Vice Presidente'),
	(NULL, 'Gerente'),
	(NULL, 'Cajero'),
	(NULL, 'Oficial de cuentas'),
	(NULL, 'Administrativo'),
	(NULL, 'Contable');

INSERT INTO sucursal VALUES (NULL, 'Paso de los libres 312', 4, 4),
	(NULL, 'Calle 18 145', 1, 1),
	(NULL, 'Av Mitre 124', 3, 3),
	(NULL, 'Av Paseo Colon 1247', 2, 2),
	(NULL, 'Pipore 71', 5, 5),
	(NULL, 'Martin Fierro 1147', 8, 8),
	(NULL, 'Rodrigo Bueno 10', 6, 6),
	(NULL, 'Quilmes 123', 15, 15),
	(NULL, 'Palmar 445', 14, 14),
	(NULL, 'Olmos 568', 23, 23),
	(NULL, 'Zelarrayan 5598', 21, 21),
	(NULL, 'Pehuajo 99', 20, 20),
	(NULL, 'Puerto Montt 901', 19, 19),
	(NULL, 'Av San Martin 774', 9, 9),
	(NULL, 'Av Martin de Guemes 665', 11, 11),
	(NULL, 'Sapucay 75', 10, 10),
	(NULL, 'Simbron 1299', 13, 13),
	(NULL, 'Segundo Sombra 1123', 12, 12),
	(NULL, 'Elmidio Salvigny 9985', 17, 17),
	(NULL, 'Av. de los Incas 546', 18, 18),
	(NULL, 'Av Belgrano 23', 22, 22),
	(NULL, 'Perito Moreno 101', 16, 16),
	(NULL, 'Consejal Tribulato 999', 7, 7),
    (NULL, 'Pareja 96', 24,24);

INSERT INTO transacciones VALUES (NULL, 1, current_timestamp() ,1, 15000.00, 1),
	(NULL, 2, current_timestamp() ,1, 1000000.00, 2),
	(NULL, 6, current_timestamp() ,1, 2000000.00, 3),
	(NULL, 6, current_timestamp() ,3, 5000000.00, 4),
	(NULL, 5, current_timestamp() ,1, 151254.23, 5),
	(NULL, 5, current_timestamp() ,1, 235412.12, 6),
	(NULL, 5, current_timestamp() ,1, 93212.50, 7),
	(NULL, 4, current_timestamp() ,2, 125000.00, 8),
	(NULL, 3, current_timestamp() ,1, 56850.00, 9),
	(NULL, 4, current_timestamp() ,1, 12300.00, 10),
	(NULL, 3, current_timestamp() ,2, 37500.00, 11),
	(NULL, 2, current_timestamp() ,1, 200000.00, 12),
	(NULL, 1, current_timestamp() ,1, 20000.00, 13),
	(NULL, 3, current_timestamp() ,1, 78894.00, 14),
	(NULL, 5, current_timestamp() ,1, 125741.66, 15);

INSERT INTO cuentas VALUES (NULL, 15, 1, 1, 230000 ,7),
	(NULL, 14, 1, 1, 5533 ,6),
	(NULL, 13, 1, 1, 12346 ,5),
	(NULL, 12, 1, 1, 0 ,4),
	(NULL, 11, 1, 1, 70251.10 ,3),
	(NULL, 10, 1, 1, 24120.12 ,2),
	(NULL, 9, 1, 1, 1230 ,1),
	(NULL, 8, 1, 1, 32510.55 ,15),
	(NULL, 7, 1, 1, 41200 ,14),
	(NULL, 6, 1, 1, 23000.10 ,13),
	(NULL, 5, 1, 1, 0 ,12),
	(NULL, 4, 1, 1, 15503.89 ,11),
	(NULL, 3, 1, 1, 77456.10 ,10),
	(NULL, 2, 1, 1, 13501.01 ,8),
	(NULL, 1, 1, 1, 9810.33 ,9);

INSERT INTO empleados VALUES 	 (NULL, 'Soledad', 'Araujo', '21148967712', 'Av Forest 112', '1145956179', '2012-01-02', 1, 2 ),	
	(NULL, 'Jesus', 'Ramos', '20159887791', '25 de mayo 33', '1137459561', '2012-01-02', 2, 2 ),
	(NULL, 'Pedro', 'Gomez', '20348913235', 'Peru 213', '1145371112', '2017-10-05', 3, 2 ),
	(NULL, 'Laura', 'Perez', '21301234453', 'Pilcomayo 321', '3419459561', '2015-07-01', 3, 20 ),
	(NULL, 'Juan Ignacio', 'Oyola', '21319813359', 'Sarasa 447', '3511059510', '2015-03-01', 3, 6 ),
	(NULL, 'Adrian', 'Steilman', '23268895416', 'Saturnino Saa 177', '3704626596', '2013-12-01', 3, 9 ),
	(NULL, 'Richard', 'Vallarta ', '20921236642', 'Talampaya 45', '1154560449', '2022-03-10', 5, 2 ),
	(NULL, 'Brian', 'Baeza', '20112377982', 'El tala 33', '2617814088', '2017-07-01', 3, 13 ),
	(NULL, 'Debora ', 'Saldaña', '20306698255', 'Pje. Garcia 298', '3703232563', '2014-11-10', 5, 9 ),
	(NULL, 'Maria', 'Baez', '21260110455', 'Termopilas 12', '2217590805', '2016-01-05', 3, 1 ),
	(NULL, 'Juan ', 'Reyes', '22158795572', 'Tilcara 555', '2616096633', '2017-06-05', 5, 13 ),
	(NULL, 'Isabelino', 'Pastor', '27327774123', 'Libano 322', '2218704782', '2012-03-03', 5, 1 ),
	(NULL, 'Aurora', 'Lozano', '23372113665', 'Tijuana 679', '3874369188', '2013-08-01', 3, 17 ),
	(NULL, 'Marina', 'Martínez', '20198776523', 'San Martin 98', '3874052129', '2016-02-10', 5, 17 ),
	(NULL, 'Cristina ', 'Enriquez', '22268951232', 'Salas 450', '3857341910', '2014-10-06', 3, 22 ),
	(NULL, 'Rosario', 'Miguez', '25271236635', 'Cuenca 2', '3850679784', '2015-02-03', 5, 22 );