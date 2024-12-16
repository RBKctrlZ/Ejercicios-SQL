-- creación base de batos
create databases if not exists samurai;
-- usar base de datos
use samurai;

-- crear tabla cliente
create table cliente (
	id_cliente INT UNIQUE primary KEY,
	nombre VARCHAR (40) not NULL, 
	apellidos VARCHAR (80) not NULL,
	dni VARCHAR(9) not null UNIQUE,
	direccion VARCHAR (40),
	email VARCHAR(50),
	telefono VARCHAR (20)
);

-- alter table cliente id_cliente autoincrement
-- ALTER TABLE cliente MODIFY COLUMN id_cliente INT AUTO_INCREMENT;

-- creacion tabla producto
create table producto (
	id_producto INT unique primary key,
	nombre VARCHAR (50) not null,
	descripcion_producto VARCHAR(80),
	precio DECIMAL (10,2) not null, 
	stock INT not NULL
);

-- creacion tabla pedido
create table pedido (
	id_pedido INT primary key, 
	id_cliente INT not null, 
	fecha DATETIME,
	total DECIMAL (10,2) not null,
	foreign key (id_cliente) references cliente (id_cliente)
);
-- creacion tabla detallePedido
create table detallePedido (
	id_detallePedido INT primary key,
	id_pedido INT not null,
	id_producto INT not null,
	cantidad INT not null,
	subtotal DECIMAL (10,2) not null,
	foreign key (id_pedido) references pedido(id_pedido),
	foreign key (id_producto) references producto (id_producto)
	);

-- MOSTRAR LA TABLA
show TABLES;

