CREATE TABLE cliente (
	id_cliente SERIAL PRIMARY KEY,
	nombre VARCHAR(45) NOT NULL,
	apellido VARCHAR(45) NOT NULL,
	observaciones VARCHAR(45) NOT NULL
);

CREATE TABLE platillo(
	id_platillo SERIAL PRIMARY KEY,
	nombre VARCHAR(45) NOT NULL,
	importe INT NOT NULL
);

CREATE TABLE mesero(
	id_mesero SERIAL PRIMARY KEY,
	nombre VARCHAR(45) NOT NULL,
	apellido1 VARCHAR(45) NOT NULL,
	apellido2 VARCHAR(45) NOT NULL
);

CREATE TABLE bebida(
	id_bebida SERIAL PRIMARY KEY,
	nombre VARCHAR(45) NOT NULL,
	importe INT NOT NULL
);

CREATE TABLE mesa(
	id_mesa SERIAL PRIMARY KEY,
	num_comensales INT NOT NULL,
	ubicacion VARCHAR(45) NOT NULL
);


CREATE TABLE factura(
    id_factura INT NOT NULL,
    fecha_factura TIMESTAMP NOT NULL,
    id_cliente INT NOT NULL,
    id_mesero INT NOT NULL,
    id_mesa INT,
    id_platillo INT,
    id_bebida INT,
    FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE,  -- Si se elimina o actualiza un cliente, se eliminan o actualizan las facturas asociadas
    FOREIGN KEY(id_mesero) REFERENCES mesero(id_mesero) ON DELETE CASCADE ON UPDATE CASCADE,  -- Si se elimina o actualiza un mesero, se eliminan o actualizan las facturas asociadas
    FOREIGN KEY(id_mesa) REFERENCES mesa(id_mesa) ON DELETE CASCADE ON UPDATE CASCADE,  -- Si se elimina o actualiza una mesa, se eliminan o actualizan las facturas asociadas
    FOREIGN KEY(id_platillo) REFERENCES platillo(id_platillo) ON DELETE CASCADE ON UPDATE CASCADE,  -- Si se elimina o actualiza un platillo, se eliminan o actualizan las facturas asociadas
    FOREIGN KEY(id_bebida) REFERENCES bebida(id_bebida) ON DELETE CASCADE ON UPDATE CASCADE  -- Si se elimina o actualiza una bebida, se eliminan o actualizan las facturas asociadas
);