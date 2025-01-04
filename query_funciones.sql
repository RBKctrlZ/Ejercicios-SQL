-- muestra la version que se utiliza. salida: MariaDB 10.4.32
show variables like 'version';

-- usar la base de datos sobre la que se trabaja
use samurai;

-- Selecciona productos disponibles
select 
	c.nombre_categoria,
	p.nombre,
	sum(p.stock)
from
	producto p
left join
	categoria c 
on p.id_categoria = c.id_categoria
group by c.nombre_categoria, p.nombre;

-- seleccionar productos pedidos en fechas especificas
select 
	dp.id_producto,
	pr.nombre,
	sum(dp.cantidad)
from detallepedido dp
inner join pedido p ON p.id_pedido = dp.id_pedido
inner join producto pr on pr.id_producto = dp.id_producto 
where p.fecha between '20250101' and '20250131'
group by dp.id_producto,pr.nombre;


-- funciones. Como las funciones usan ; hay que cambiar el delimitador 
delimiter ##
-- Función para calcular cuantas veces se ha pedido cada producto. Parametro entrada. id_producto, salida cantidad de pedidos
create function samurai.contar_productos (id_producto int)
returns int
deterministic
begin
	declare total_pedidos int default 0;
	-- contar numero de pedidos para el producto
	select sum(dp.cantidad)
	into total_pedidos
	from detallepedido dp
	where dp.id_pedido= id_pedido;
	-- devuelve el resultado
	return IFNULL(total_pedidos, 0);

end##

-- mostrar las funciones creadas aparece nombre contar_productos
SHOW FUNCTION STATUS WHERE Db = 'samurai';

-- usar la funcion dentro de un select
SELECT 
    p.id_producto,
    p.nombre,
    samurai.contar_productos(p.id_producto) AS total_pedidos
FROM producto p;


