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
    year INT,
    month INT,
    day INT,
    hour INT,
    CONSTRAINT PK_tiempo PRIMARY KEY(year,month,day,hour)
);

CREATE TABLE metodo_pago(
    id SERIAL,
    nombre VARCHAR(200),
    fecha_carga DATE DEFAULT CURRENT_DATE,
    CONSTRAINT PK_metodo_pago PRIMARY KEY(id)

);

CREATE TABLE vehiculo(
    id SERIAL,
    placa VARCHAR(250),
    marca VARCHAR(250),
    modelo VARCHAR(250),
    color VARCHAR(250),
    fecha_fabricacion DATE,
    fecha_carga DATE DEFAULT CURRENT_DATE, 

    CONSTRAINT PK_vehiculo PRIMARY KEY (id)
);

CREATE TABLE hechos_estadisticas_alquiler(    
    id_sucursal INT,
    id_vehiculo INT,
    id_metodo_pago INT,
    id_year INT DEFAULT 2023,
    id_month INT DEFAULT 0,
    id_day INT DEFAULT 0,
    id_hour INT DEFAULT 0,
    ganancia_neta FLOAT,
    porc_ingresos FLOAT,
    porc_egresos FLOAT,
    porc_satisfaccion_cliente FLOAT,
    posicion_top_metodo_pago INT,
    metodo_pago_veces_utilizado INT,
    porcentaje_utilizacion_metodo_pago FLOAT,
    modelo_veces_alquilado INT,
    modelo_porcentaje_alquilado FLOAT,
    posicion_top_modelo_vehiculo_alquilado INT,
    porcentaje_vehiculos_disponibles FLOAT,
    ingresos FLOAT,
    egresos FLOAT,
    duracion_promedio_alquiler FLOAT,
    total_alquileres FLOAT,
    porcentaje_vehiculos_utilizados FLOAT,

    CONSTRAINT PK_hecho PRIMARY KEY(id_vehiculo,id_metodo_pago,id_year,id_month,id_day,id_hour,id_sucursal),
    CONSTRAINT FK_hecho_vehiculo FOREIGN KEY(id_vehiculo) references vehiculo(id),
    CONSTRAINT FK_hecho_metodo_pago FOREIGN KEY(id_metodo_pago) references metodo_pago(id),
    CONSTRAINT FK_hecho_tiempo FOREIGN KEY(id_year,id_month,id_day,id_hour) references tiempo(year,month,day,hour),
    CONSTRAINT FK_hecho_sucursal FOREIGN KEY(id_sucursal) references sucursal(id)
);
