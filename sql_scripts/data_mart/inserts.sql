--SUCURSAL
INSERT INTO sucursal(
    nombre,
    ubicacion,
    latitud,
    longitud
) VALUES(
    'sucursal equipo 5',
    'Venezuela, Caracas, Las mercedes, Calle Paris',
    10.482949, 
    -66.860921
);

--VEHICULO
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (1, null, 'Jeep', '11/22/2022', 'Grand Cherokee', '2023-02-11 22:30:41');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (2, null, 'Mercury', '10/27/2022', 'Sable', '2022-01-22 01:36:57');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (3, null, 'Mazda', '11/21/2022', 'Miata MX-5', '2022-04-11 04:37:01');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (4, null, 'Dodge', '6/11/2022', 'Ram 50', '2022-11-29 20:21:11');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (5, null, 'Honda', '7/6/2022', 'Passport', '2022-05-01 17:22:54');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (6, null, 'Acura', '5/12/2023', 'TL', '2022-02-03 20:26:44');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (7, null, 'Chevrolet', '11/30/2022', 'Astro', '2023-02-27 21:51:46');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (8, null, 'Toyota', '7/13/2022', 'Land Cruiser', '2022-09-27 18:25:09');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (9, null, 'Ferrari', '1/8/2023', '599 GTB Fiorano', '2022-01-30 09:48:17');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (10, null, 'GMC', '7/25/2022', 'Sonoma', '2023-05-23 08:35:25');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (11, null, 'Plymouth', '11/15/2022', 'Prowler', '2022-06-22 14:46:24');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (12, null, 'Kia', '9/21/2022', 'Sedona', '2022-08-26 04:47:21');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (13, null, 'Mercedes-Benz', '11/19/2022', 'SLK-Class', '2022-10-10 05:17:54');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (14, null, 'Porsche', '6/20/2022', 'Cayenne', '2023-01-03 06:35:25');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (15, null, 'Subaru', '5/22/2023', 'Tribeca', '2023-01-17 20:16:37');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (16, null, 'Plymouth', '7/20/2022', 'Prowler', '2022-07-02 10:46:25');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (17, null, 'Dodge', '2/12/2023', 'Omni', '2022-04-04 17:20:25');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (18, null, 'Mazda', '6/1/2023', 'Mazda6', '2022-01-23 03:43:04');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (19, null, 'Kia', '9/29/2022', 'Sorento', '2023-01-23 22:56:22');
insert into vehiculo (id, tipo_vehiculo, marca, fecha_fabricacion, modelo, fecha_carga) values (20, null, 'Ford', '1/31/2023', 'Econoline E150', '2022-09-11 17:41:58');


--METODO_PAGO
insert into metodo_pago (nombre) values ('Zelle');
insert into metodo_pago (nombre) values ('Paypal');
insert into metodo_pago (nombre) values ('laser');
insert into metodo_pago (nombre) values ('Ubii');
insert into metodo_pago (nombre) values ('switch');
insert into metodo_pago (nombre) values ('jcb');
insert into metodo_pago (nombre) values ('switch');
insert into metodo_pago (nombre) values ('bankcard');
insert into metodo_pago (nombre) values ('americanexpress');
insert into metodo_pago (nombre) values ('mastercard');


--TIEMPO
insert into tiempo (year, month, day, hour) values (2022, 1, 20, 0);
insert into tiempo (year, month, day, hour) values (2022, 6, 4, 19);
insert into tiempo (year, month, day, hour) values (2022, 7, 21, 23);
insert into tiempo (year, month, day, hour) values (2023, 5, 16, 1);
insert into tiempo (year, month, day, hour) values (2023, 2, 13, 10);
insert into tiempo (year, month, day, hour) values (2022, 7, 24, 4);
insert into tiempo (year, month, day, hour) values (2022, 4, 20, 13);
insert into tiempo (year, month, day, hour) values (2023, 4, 5, 4);
insert into tiempo (year, month, day, hour) values (2023, 4, 16, 22);
insert into tiempo (year, month, day, hour) values (2023, 12, 4, 1);
insert into tiempo (year, month, day, hour) values (2023, 9, 11, 20);
insert into tiempo (year, month, day, hour) values (2023, 10, 27, 0);
insert into tiempo (year, month, day, hour) values (2022, 7, 8, 23);
insert into tiempo (year, month, day, hour) values (2022, 5, 4, 4);
insert into tiempo (year, month, day, hour) values (2023, 5, 11, 11);
insert into tiempo (year, month, day, hour) values (2022, 3, 5, 9);
insert into tiempo (year, month, day, hour) values (2023, 4, 7, 12);
insert into tiempo (year, month, day, hour) values (2022, 10, 24, 8);
insert into tiempo (year, month, day, hour) values (2022, 8, 12, 19);
insert into tiempo (year, month, day, hour) values (2022, 10, 15, 13);
insert into tiempo (year, month, day, hour) values (2022, 12, 4, 15);
insert into tiempo (year, month, day, hour) values (2022, 5, 1, 22);
insert into tiempo (year, month, day, hour) values (2022, 9, 16, 16);
insert into tiempo (year, month, day, hour) values (2022, 10, 9, 22);
insert into tiempo (year, month, day, hour) values (2022, 11, 17, 13);


--HECHOS ESTADISTICAS ALQUILER
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 11, 16, 20, 29.83, 58.95, 66.27, 0, 13, 5, 4946, 758, 3, 20, 9, 24);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 15, 4, 18, 22.35, 36.95, 56.2, 1, 19, 14, 4633, 3328, 0, 10, 9, 60);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 11, 18, 20, 84.91, 64.85, 15.25, 5, 19, 1, 1328, 2830, 7, 15, 9, 93);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 12, 6, 5, 77.96, 70.96, 78.55, 10, 13, 16, 3362, 3021, 4, 19, 9, 81);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 2, 14, 14, 83.39, 63.23, 94.03, 9, 3, 2, 980, 1687, 5, 18, 7, 80);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 6, 1, 17, 90.83, 62.11, 58.51, 5, 11, 10, 1757, 2907, 13, 12, 7, 64);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 11, 8, 15, 58.59, 1.76, 22.85, 5, 13, 0, 2511, 674, 3, 14, 7, 60);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 12, 9, 14, 57.3, 99.99, 56.57, 10, 0, 0, 1362, 1514, 7, 3, 8, 18);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 8, 12, 3, 25.4, 91.95, 25.96, 9, 18, 20, 3485, 3487, 5, 12, 8, 48);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 2, 25, 19, 39.42, 47.32, 84.01, 4, 1, 9, 1872, 1316, 13, 3, 7, 66);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 9, 5, 16, 87.71, 92.39, 35.81, 2, 6, 11, 4653, 2258, 5, 2, 1, 100);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 18, 7, 20, 7.13, 48.0, 47.45, 5, 4, 9, 3690, 3186, 3, 8, 5, 70);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 5, 1, 9, 39.05, 8.91, 18.41, 3, 15, 17, 413, 514, 2, 4, 10, 8);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 9, 20, 16, 32.1, 50.32, 60.76, 0, 15, 13, 2229, 3822, 5, 1, 4, 86);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 2, 20, 10, 76.04, 39.82, 72.04, 0, 10, 9, 3606, 3698, 13, 16, 7, 1);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 5, 11, 24, 5.61, 87.1, 14.07, 1, 3, 7, 490, 3978, 4, 15, 1, 59);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 1, 2, 7, 73.86, 37.64, 41.38, 2, 0, 2, 2431, 1901, 2, 8, 4, 19);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 7, 12, 11, 52.68, 10.33, 34.05, 2, 3, 9, 968, 41, 14, 19, 5, 52);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 12, 10, 16, 3.99, 12.39, 26.64, 9, 15, 16, 2455, 2374, 7, 3, 3, 65);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 10, 1, 25, 80.02, 13.78, 33.56, 10, 13, 1, 4315, 4428, 4, 6, 8, 71);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 14, 2, 17, 81.12, 10.92, 73.23, 10, 10, 0, 2626, 1157, 10, 6, 5, 23);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 12, 4, 19, 67.55, 14.36, 24.51, 9, 17, 8, 4435, 3292, 1, 18, 7, 28);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 14, 24, 19, 7.6, 7.6, 87.92, 3, 14, 6, 2134, 1065, 0, 12, 5, 48);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 12, 17, 17, 29.8, 69.22, 20.9, 3, 14, 10, 2794, 4995, 3, 13, 9, 78);
insert into hechos_estadisticas_alquiler (id_sucursal, id_vehiculo, id_tiempo, id_alquiler, balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos, duracion_promedio_alquiler, total_alquileres, id_metodo_pago, porc_satisfaccion_cliente) values (1, 17, 19, 11, 76.99, 86.26, 31.71, 7, 1, 19, 175, 1285, 9, 15, 3, 52);


