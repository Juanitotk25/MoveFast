INSERT INTO cliente (id_cliente, nombre, apellido, observaciones) VALUES
(1001, 'Juan', 'Pérez', 'Cliente frecuente'),
(1009, 'Manuel', 'Pedroza Gonzalez', 'Cliente VIP'),
(1002, 'Laura', 'Gómez', 'Solicita siempre postre'),
(1003, 'Carlos', 'Ruiz', 'Nuevo cliente'),
(1004, 'Ana', 'Torres', 'Alérgico a frutos secos'),
(1005, 'Luis', 'Fernández', 'Cliente VIP'),
(1006, 'María', 'Ríos', 'Comedor habitual'),
(1007, 'José', 'Martínez', 'Preferencia por carnes'),
(1008, 'Sofía', 'González', 'Pide siempre vegetales');

INSERT INTO platillo (id_platillo, nombre, importe) VALUES
(2001, 'Arroz a la marinera', 350000),
(2002, 'Tacos al pastor', 250000),
(2003, 'Pollo asado', 150000),
(2004, 'Ensalada César', 90000),
(2005, 'Ravioles de espinaca', 200000),
(2006, 'Salmón grillado', 450000),
(2007, 'Pasta carbonara', 220000),
(2008, 'Pizza margarita', 180000);

INSERT INTO mesero (id_mesero, nombre, apellido1, apellido2) VALUES
(3001, 'Andrés', 'Martínez', 'Gómez'),
(3002, 'Beatriz', 'Pérez', 'Ruiz'),
(3003, 'Carlos', 'López', 'Fernández'),
(3004, 'David', 'González', 'Rodríguez'),
(3005, 'Elena', 'Sánchez', 'Vega'),
(3006, 'Francisco', 'Jiménez', 'Martín'),
(3007, 'Gabriela', 'Torres', 'Alvarez'),
(3008, 'Héctor', 'Ramírez', 'Cordero');

INSERT INTO bebida (id_bebida, nombre, importe) VALUES
(4001, 'Agua mineral', 50000),
(4002, 'Cerveza', 70000),
(4003, 'Vino tinto', 150000),
(4004, 'Vino blanco', 130000),
(4005, 'Jugo de naranja', 60000),
(4006, 'Refresco de cola', 40000),
(4007, 'Cerveza artesanal', 120000),
(4008, 'Limonada', 45000);

INSERT INTO mesa (id_mesa, num_comensales, ubicacion) VALUES
(5001, 4, 'Primer piso, junto a la ventana'),
(5002, 2, 'Segundo piso, junto a la barra'),
(5003, 6, 'Primer piso, cerca del escenario'),
(5004, 3, 'Segundo piso, junto a la ventana'),
(5005, 5, 'Primer piso, al lado de la puerta'),
(5006, 4, 'Segundo piso, junto al baño'),
(5007, 8, 'Primer piso, en el centro del salón'),
(5008, 2, 'Segundo piso, junto a la cocina');

INSERT INTO factura (id_factura, fecha_factura, id_cliente, id_mesero, id_mesa, id_platillo, id_bebida) VALUES
(6001, '2025-04-01 18:00:00', 1001, 3001, 5001, 2001, 4001),
(6002, '2025-04-02 19:00:00', 1002, 3002, 5002, 2002, 4003),
(6003, '2025-04-03 20:00:00', 1003, 3003, 5003, 2003, 4004),
(6004, '2025-04-04 21:00:00', 1004, 3004, 5004, 2004, 4005),
(6005, '2025-04-05 22:00:00', 1005, 3005, 5005, 2005, 4006),
(6006, '2025-04-06 18:30:00', 1006, 3006, 5006, 2006, 4007),
(6007, '2025-04-07 19:30:00', 1007, 3007, 5007, 2007, 4008),
(6009, '2025-04-05 20:30:00', 1009, 3008, 5008, 2005, 4004),
(6008, '2025-04-08 20:30:00', 1008, 3008, 5008, 2008, 4002);