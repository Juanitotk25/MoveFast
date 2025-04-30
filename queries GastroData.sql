-- Muestra los nombres y apellidos de los clientes que han consumido un platillo específico
SELECT c.nombre, c.apellido
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
JOIN platillo p ON f.id_platillo = p.id_platillo
WHERE p.nombre = 'Tacos al pastor';

-- Muestra los nombres y apellidos de los clientes que han consumido "Arroz a la marinera"
SELECT c.nombre, c.apellido
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
JOIN platillo p ON f.id_platillo = p.id_platillo
WHERE p.nombre = 'Arroz a la marinera';

-- Muestra el nombre del mesero y la fecha en que atendió la mesa 10 en el segundo piso
SELECT m.nombre, f.fecha_factura
FROM mesero m
JOIN factura f ON m.id_mesero = f.id_mesero
JOIN mesa me ON f.id_mesa = me.id_mesa
WHERE me.id_mesa = 10 AND me.ubicacion = 'Segundo piso';

-- Muestra el nombre de los clientes y las bebidas que consumieron en sus facturas
SELECT c.nombre, b.nombre AS bebida
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
JOIN bebida b ON f.id_bebida = b.id_bebida;

-- Muestra el ID de la factura, el nombre del cliente y el platillo de las facturas con platillos mayores a $300,000
SELECT f.id_factura, c.nombre AS cliente, p.nombre AS platillo
FROM factura f
JOIN cliente c ON f.id_cliente = c.id_cliente
JOIN platillo p ON f.id_platillo = p.id_platillo
WHERE p.importe > 300000;

-- Muestra el total de consumo de platillos y bebidas de un cliente específico llamado Manuel Pedroza Gonzalez
SELECT c.nombre, SUM(p.importe + b.importe) AS total_consumo
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
JOIN platillo p ON f.id_platillo = p.id_platillo
JOIN bebida b ON f.id_bebida = b.id_bebida
WHERE c.nombre = 'Manuel' AND c.apellido = 'Pedroza Gonzalez'
GROUP BY c.nombre;

-- Muestra las mesas utilizadas al menos una vez, con su ubicación y el número de comensales
SELECT DISTINCT me.ubicacion, me.num_comensales, me.id_mesa
FROM mesa me
JOIN factura f ON me.id_mesa = f.id_mesa;