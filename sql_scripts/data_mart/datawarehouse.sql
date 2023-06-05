CREATE DATABASE datamart_equipo5;

--COMANDO PGSQL PARA CONECTARSE A LA BD \c datamart_equipo5

CREATE TABLE sucursal(
    id SERIAL,
    nombre VARCHAR(200),
    fecha_carga DATE DEFAULT CURRENT_DATE,
    ubicacion VARCHAR(350),
    longitud FLOAT,
    latitud FLOAT,
    CONSTRAINT PK_sucursal PRIMARY KEY(id)
);

CREATE TABLE tiempo(
    id SERIAL,
    year INT,
    month INT,
    day INT,
    hour INT,
    CONSTRAINT PK_tiempo PRIMARY KEY(id)
);

CREATE TABLE metodo_pago(
    id SERIAL,
    nombre VARCHAR(200),
    fecha_carga DATE DEFAULT CURRENT_DATE,
    CONSTRAINT PK_metodo_pago PRIMARY KEY(id)

);

CREATE TABLE vehiculo(
    id SERIAL,
    tipo_vehiculo VARCHAR(250),
    fecha_carga DATE DEFAULT CURRENT_DATE, 
    marca VARCHAR(250),
    modelo VARCHAR(250),
    fecha_fabricacion DATE,

    CONSTRAINT PK_vehiculo PRIMARY KEY (id)
);

CREATE TABLE hechos_estadisticas_alquiler(
    id SERIAL,
    id_alquiler INT,
    id_vehiculo INT,
    id_metodo_pago INT,
    id_tiempo INT,
    id_sucursal INT,
    balance_general FLOAT,
    porc_ingresos_egresos FLOAT,
    porc_vehiculos_utilizados FLOAT,
    porc_satisfaccion_cliente FLOAT,
    top_metodo_pago VARCHAR(250),
    metodo_pago_veces_utilizado INT,
    top_vehiculo_alquilado VARCHAR(250),
    ingresos FLOAT,
    egresos FLOAT,
    duracion_promedio_alquiler FLOAT,
    total_alquileres FLOAT,


    CONSTRAINT PK_hecho PRIMARY KEY(id),
    CONSTRAINT FK_hecho_vehiculo FOREIGN KEY(id_vehiculo) references vehiculo(id),
    CONSTRAINT FK_hecho_metodo_pago FOREIGN KEY(id_metodo_pago) references metodo_pago(id),
    CONSTRAINT FK_hecho_tiempo FOREIGN KEY(id_tiempo) references tiempo(id),
    CONSTRAINT FK_hecho_sucursal FOREIGN KEY(id_sucursal) references sucursal(id)
);
