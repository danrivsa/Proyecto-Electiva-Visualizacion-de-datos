require('dotenv').config();
const express = require('express');
const dw = require('./config/datawarehouse.config');
const app = express();
const port = process.env.PORT || 3000;


app.get('/', (req, res) => {
    res.send('¡Hola, mundo desde equipo 5!');
  });

app.get('/datamart-equipo-5/obtener-datos-dw',async (req,res)=>{
  try{
    //preparar envio de data
    //datos de la sucursal
    const res_sucursal = await dw.query('SELECT * FROM sucursal where id = 1');
    const data_sucursal = res_sucursal.rows.map((res)=>{
      return {
        id_sucursal: res.id,
        nombre: res.nombre,
        ubicacion: res.ubicacion,
        longitud: res.longitud,
        latitud: res.latitud,
        fecha_carga: res.fecha_carga

      }
    })[0];

    //inventario vehiculos
    const res_vehiculos = await dw.query(`SELECT * FROM vehiculo`);
    const inventario_vehiculos = res_vehiculos.rows.map((res)=>{
      return{
        id_modelo: res.id,
        marca: res.marca,
        anio_fabricacion: new Date(res.fecha_fabricacion).getFullYear(),
        nombre_modelo: res.modelo,
        fecha_carga: res.fecha_carga
      }
    });

    //metodo de pago
    const res_metodo_pago = await dw.query(`SELECT * FROM metodo_pago`);
    const metodos_de_pago = res_metodo_pago.rows.map((res)=>{
      return {
        id_metodo: res.id,
        nombre:res.nombre,
        fecha_carga:res.fecha_carga
      }
    });

    const res_estadisticas_alquiler = await dw.query(`SELECT h.*,t.* FROM hechos_estadisticas_alquiler h INNER JOIN tiempo t on t.id = h.id_tiempo`);
    const hechos_estadisticas_alquiler = res_estadisticas_alquiler.rows.map((res)=>{
      return {
        tiempo:{
          id_anio: res.year,
          id_mes: res.month,
          id_dia: res.day,
          id_hora: res.hour
        },
        porc_satisfaccion_cliente: res.porc_satisfaccion_cliente,
        top_metodo_pago_utilizado: res.top_metodo_pago,
        top_metodo_pago_porcentaje_util : 0,
        top_modelo_vehiculo_alquilado : res.top_vehiculo_alquilado,
        modelo_veces_alquilado : 0,
        modelo_porcentaje_alquilado:0,
        ingresos:res.ingresos,
        egresos:res.egresos,
        porc_ingresos_egresos:res.porc_ingresos_egresos,
        balance_general:res.balance_general,
        porc_vehiculos_disponibles:20,
        duracion_promedio_alquiler:res.duracion_promedio_alquiler,
        total_alquileres:res.total_alquileres,
        porC_VEHICULOS_UTILIZADOS: 0,
        modelO_VEHICULO_ID_MODELO: 0,
        metodO_PAGO_ID_METODO: 0

      }
    });
    const res_data = {
      sucursal: data_sucursal,
      modelo_vehiculos: inventario_vehiculos,
      metodo_pagos:metodos_de_pago,
      estadisticas_sucursal:hechos_estadisticas_alquiler
    }
    res.status(200).send(res_data);
  }catch(err){
    console.log(err);
    res.status(500).send('Ocurrio un error inesperado', err);
  }
});

app.listen(port,'0.0.0.0' ,() => {
  console.log(`Servidor iniciado en el puerto ${process.env.PORT}`);
});