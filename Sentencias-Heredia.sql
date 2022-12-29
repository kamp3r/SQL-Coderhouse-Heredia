USE bancaria;

CREATE USER IF NOT EXISTS 'reader'@'localhost' IDENTIFIED BY 'reader'; /* Se crea el usuario reader el cual tendra permisos de lectura */

GRANT SELECT ON bancaria.* TO 'reader'@'localhost'; /* Se otorgan los permisos de lectura al usuario reader*/

CREATE USER IF NOT EXISTS 'CRUUser'@'localhost' IDENTIFIED BY 'cruuser'; /* Se crea el usuario CRUUser (CREATE READ UPDATE USER) el cual tendra permisos de leer, insertar, y modificar registros */

GRANT SELECT, UPDATE, INSERT ON bancaria.* TO 'CRUUser'@'localhost'; /*Se otorgan los permisos de lectura, actualizacion e insercion al usuario CRUUser*/