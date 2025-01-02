--inserción valores tabla cliente
INSERT INTO cliente (id_cliente, nombre, apellidos, dni, direccion, email, telefono) VALUES
(1, 'Juan', 'Pérez López', '12345678A', 'Calle Mayor 10', 'juan.perez@example.com', '600123456'),
(2, 'María', 'García Sánchez', '23456789B', 'Avenida Sol 5', 'maria.garcia@example.com', '610234567'),
(3, 'Carlos', 'Martínez Gómez', '34567890C', 'Calle Luna 20', 'carlos.martinez@example.com', '620345678'),
(4, 'Lucía', 'Fernández Ruiz', '45678901D', 'Plaza Real 15', 'lucia.fernandez@example.com', '630456789'),
(5, 'Ana', 'Hernández Díaz', '56789012E', 'Calle Jardín 25', 'ana.hernandez@example.com', '640567890'),
(6, 'David', 'López Torres', '67890123F', 'Avenida Mar 8', 'david.lopez@example.com', '650678901'),
(7, 'Sofía', 'Ramírez Vega', '78901234G', 'Calle Río 12', 'sofia.ramirez@example.com', '660789012'),
(8, 'Pedro', 'Gómez Martín', '89012345H', 'Plaza Norte 7', 'pedro.gomez@example.com', '670890123'),
(9, 'Laura', 'Sánchez Ortiz', '90123456I', 'Calle Sur 3', 'laura.sanchez@example.com', '680901234'),
(10, 'Javier', 'Ruiz Molina', '01234567J', 'Avenida Este 2', 'javier.ruiz@example.com', '690012345');

--insertar valores en categoria
INSERT INTO categoria (id_categoria, nombre_categoria, descripcion_categoría) VALUES
(1, 'Electrónica', 'Productos electrónicos como ordenadores y teléfonos'),
(2, 'Accesorios', 'Accesorios para dispositivos electrónicos'),
(3, 'Mobiliario', 'Muebles para oficina y hogar');


-- insercción valores tabla producto
INSERT INTO producto (id_producto, nombre, descripcion_producto, precio, stock, id_categoria) VALUES
(1, 'Ordenador Portátil', 'Portátil de 15 pulgadas', 699.99, 50, 1),
(2, 'Smartphone', 'Teléfono móvil 5G', 499.99, 100, 1),
(3, 'Auriculares', 'Auriculares inalámbricos con micrófono', 59.99, 200, 2),
(4, 'Teclado Mecánico', 'Teclado retroiluminado RGB', 89.99, 150, 2),
(5, 'Monitor 24"', 'Monitor Full HD', 149.99, 75, 1),
(6, 'Impresora', 'Impresora multifunción', 129.99, 40, 1),
(7, 'Silla de Oficina', 'Silla ergonómica ajustable', 199.99, 30, 3),
(8, 'Disco Duro Externo', '1TB USB 3.0', 79.99, 120, 2),
(9, 'Cámara Web', 'Cámara Full HD para videoconferencias', 39.99, 80, 2),
(10, 'Altavoces', 'Altavoces estéreo Bluetooth', 49.99, 60, 2);

--inserción valores tabla pedido
INSERT INTO pedido (id_pedido, id_cliente, fecha, total) VALUES
(1, 1, '2025-01-01 10:30:00', 1259.97), -- Cliente 1, Pedido 1
(2, 1, '2025-01-03 14:15:00', 549.98),  -- Cliente 1, Pedido 2
(3, 2, '2025-01-02 11:45:00', 149.98),  -- Cliente 2, Pedido 1
(4, 2, '2025-01-04 09:30:00', 349.97),  -- Cliente 2, Pedido 2
(5, 3, '2025-01-05 12:00:00', 59.99),   -- Cliente 3, Pedido 1
(6, 4, '2025-01-06 15:20:00', 269.98),  -- Cliente 4, Pedido 1
(7, 5, '2025-01-07 16:45:00', 449.97),  -- Cliente 5, Pedido 1
(8, 1, '2025-01-08 13:00:00', 199.99),  -- Cliente 1, Pedido 3
(9, 2, '2025-01-09 17:30:00', 79.98),   -- Cliente 2, Pedido 3
(10, 3, '2025-01-10 18:00:00', 129.98), -- Cliente 3, Pedido 2
(11, 4, '2025-01-11 19:15:00', 319.97), -- Cliente 4, Pedido 2
(12, 5, '2025-01-12 20:30:00', 299.97), -- Cliente 5, Pedido 2
(13, 6, '2025-01-13 10:00:00', 89.99),  -- Cliente 6, Pedido 1
(14, 6, '2025-01-14 14:30:00', 149.99), -- Cliente 6, Pedido 2
(15, 7, '2025-01-15 11:45:00', 199.98); -- Cliente 7, Pedido 1

-- inserción valores tabla detalle pedido
INSERT INTO detallePedido (id_detallePedido, id_pedido, id_producto, cantidad, subtotal) VALUES
-- Pedido 1 (Cliente 1)
(1, 1, 1, 1, 699.99), -- Ordenador Portátil
(2, 1, 2, 1, 499.99), -- Smartphone
(3, 1, 3, 1, 59.99),  -- Auriculares

-- Pedido 2 (Cliente 1)
(4, 2, 5, 1, 149.99), -- Monitor 24"
(5, 2, 8, 5, 399.99), -- Disco Duro Externo (5 unidades)

-- Pedido 3 (Cliente 2)
(6, 3, 4, 1, 89.99),  -- Teclado Mecánico
(7, 3, 9, 1, 39.99),  -- Cámara Web

-- Pedido 4 (Cliente 2)
(8, 4, 7, 1, 199.99), -- Silla de Oficina
(9, 4, 6, 1, 149.99), -- Impresora

-- Pedido 5 (Cliente 3)
(10, 5, 3, 1, 59.99), -- Auriculares

-- Pedido 6 (Cliente 4)
(11, 6, 7, 1, 199.99), -- Silla de Oficina
(12, 6, 6, 1, 69.99),  -- Impresora

-- Pedido 7 (Cliente 5)
(13, 7, 1, 1, 699.99), -- Ordenador Portátil
(14, 7, 2, 1, 499.99), -- Smartphone
(15, 7, 3, 1, 59.99),  -- Auriculares

-- Pedido 8 (Cliente 1, tercer pedido)
(16, 8, 4, 2, 179.98), -- Teclado Mecánico (2 unidades)

-- Pedido 9 (Cliente 2, tercer pedido)
(17, 9, 9, 2, 79.98),  -- Cámara Web (2 unidades)

-- Pedido 10 (Cliente 3, segundo pedido)
(18, 10, 6, 1, 129.99), -- Impresora

-- Pedido 11 (Cliente 4, segundo pedido)
(19, 11, 5, 1, 149.99), -- Monitor 24"
(20, 11, 8, 2, 159.98), -- Disco Duro Externo (2 unidades)

-- Pedido 12 (Cliente 5, segundo pedido)
(21, 12, 7, 1, 199.99), -- Silla de Oficina
(22, 12, 3, 2, 99.98),  -- Auriculares (2 unidades)

-- Pedido 13 (Cliente 6)
(23, 13, 4, 1, 89.99),  -- Teclado Mecánico

-- Pedido 14 (Cliente 6, segundo pedido)
(24, 14, 2, 1, 149.99), -- Smartphone

-- Pedido 15 (Cliente 7)
(25, 15, 5, 1, 149.99), -- Monitor 24"
(26, 15, 6, 1, 49.99);  -- Impresora


-- consulta total ventas por categoría
select 
	c.nombre_categoria,
	sum(cantidad) as cantidad_total
from detallepedido dp
inner join producto p 
on dp.id_producto = p.id_producto 
inner join categoria c 
on p.id_categoria = c.id_categoria 
group by c.nombre_categoria;


-- consulta gastro promedio por cada cliente
select 
	cl.id_cliente,
	avg(p.total) as gasto_promedio
from cliente cl
left join 
	(select
			id_cliente,
			sum(total) as total
	from
			pedido
	group by 
			id_cliente) p
on cl.id_cliente = p.id_cliente 
group by cl.id_cliente;


-- productos más vendidos en orden descendente
select
	p.nombre,
	sum(d.cantidad) as cantidad_vendida
from 
	detallepedido d 
left join 
	producto p
on d.id_producto  = p.id_producto 
group by d.id_producto
order by d.cantidad desc;

-- clientes sin pedidos
select
	cl.id_cliente,
	concat(cl.nombre, ' ', cl.apellidos) as nombre_cliente
from
	cliente cl
left join
	pedido p 
on cl.id_cliente = p.id_cliente 
where p.id_pedido is null;




