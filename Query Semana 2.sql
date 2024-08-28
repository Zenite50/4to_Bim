-- Crear nuestra base de datps
CREATE DATABASE IF NOT EXISTS db_Usuario;
-- Usar la base de datos ya creadea
USE db_Usuario;
-- Crear una tabla, que nos permitira
-- registrar usuarios
CREATE TABLE IF NOt EXISTS tb_Usuario (
 id_Usuario int auto_increment primary key,
 nombreUsuario varchar(25) NOT NULL,
 dpi varchar(30) NOT NULL,
 direccion varchar(30) NOT NULL,
 telefono int(8) NOT NULL,
 correo_electronico varchar(50) NOT NULL UNIQUE,
 usuario varchar(15) NOT NULL UNIQUE,
 pass varchar(20) NOT NULL,
 fecha_registro timestamp default current_timestamp
 );
-- Seleccionar los campos de la tabla 
 Select * From tb_Usuario;
 -- registro de informacion
 insert into tb_Usuario(nombreUsuario,dpi,direccion,telefono,correo_electronico,usuario,pass)
 values('Jose','123412','Coban','123512','x@gmail.com','Zenite','6969');
-- todos los campos que se van a insertar, tienen que ir dentro de apostrofes simples

select * from tb_Usuario;

-- Seleccionar solo el campo del id = 2
select usuario,pass from tb_Usuario where id_Usuario = 2; 

-- consulta para validad un usuario
Select id_Usuario Where usuario = 'Jose' and pass = '6969'