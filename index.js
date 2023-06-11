require('dotenv').config();
const express = require('express');
const dw = require('./config/datawarehouse.config');
const app = express();
const port = process.env.PORT || 3000;
const axios = require('axios');
const datamart_model = require('./models/modelo_datamart');
const modelo_datamart = require('./models/modelo_datamart');


app.post('/integracion-equipos',async (req, res) => {
   //ontener url de consulta y numero de equipo
   const equipo = {
    url:req.query.equipo_url,
    n_equipo: req.query.num_equipo
   }
   //consultar api de los equipos
   await axios.get(equipo.url).then( async(res)=>{
     const data_equipo = res.data;
     //INSERTAR SUCURSAL
     
     //obtener id mas alto de sucursal en bd
     const max_id_sucursal_res = await dw.query(`SELECT MAX(id) from sucursal`);
     //sumar +1 al id obtenido para tener nuevo id del registro
     const id_sucursal = max_id_sucursal_res.rows[0].max +1;
     //insertar en base de datos
     await datamart_model.InsertarSucursal(id_sucursal,data_equipo.sucursal,equipo.n_equipo);

     //INSERTAR METODOS DE PAGO

     //obtener id maximo de metodos de pago
     const max_id_mp_res = await dw.query(`SELECT MAX(id) from metodo_pago`);
     const max_id_metodo_pago = max_id_mp_res.rows[0].max;

     //cambiar el id de los metodos de pago de la respuesta de la api y guardarlo en un nuevo array
     const array_metodo_pago = data_equipo.metodo_Pagos.map((metodo)=>{
       return {
         ...metodo,
         id: metodo.id_metodo + max_id_metodo_pago,
       }
     });
     //insertar en BD
     await datamart_model.InsertarMetodosDePago(array_metodo_pago,equipo.n_equipo);
     
     //VEHICULOS

     //seleccionar id maximo de vehiculos
     const id_max_vehiculo_res = await dw.query(`SELECT MAX(id) from vehiculo`);
     const id_max_vehiculo = id_max_vehiculo_res.rows[0].max;

     //cambiar ids de array de vehiculos
     const arr_vehiculos = data_equipo.modelo_Vehiculos.map((vehiculo)=>{
       return {
         id: vehiculo.id_modelo + id_max_vehiculo,
         marca:vehiculo.marca,
         modelo:vehiculo.nombre_modelo,
         fecha_carga:vehiculo.fecha_carga,
         fecha_fabricacion:`01-01-${new Date(vehiculo.anio_fabricacion).getUTCFullYear()}`
       }
     });

     //insertar en bd
     await modelo_datamart.InsertarVehiculos(arr_vehiculos,equipo.n_equipo);
     //INSERTAR HECHOS ESTADISTICAS ALQUILER
     
     //mapear datos y adaptarlo a la tabla de hechos
     const arr_estadisticas_sucursal = data_equipo.estadisticas_sucursal.map((item)=>{
       return{
         id_year:item.tiempo.id_anio,
         id_month:item.tiempo.id_mes,
         id_day:item.tiempo.id_dia,
         id_hour:item.tiempo.id_hora,
         id_sucursal:id_sucursal,
         id_vehiculo:item.id_modelo_vehiculo + id_max_vehiculo,
         id_metodo_pago: item.id_metodo_pago + max_id_metodo_pago,
         ganancia_neta:item.ganancia_neta,
         porc_ingresos:item.porc_ingresos,
         porc_egresos:item.porc_egresos,
         porc_satisfaccion_cliente:item.porc_Satisfaccion_Cliente,
         posicion_top_metodo_pago:item.posicion_top_metodo_pago_utilizado,
         metodo_pago_veces_utilizado: item.metodo_pago_veces_utilizado,
         porcentaje_utilizacion_metodo_pago:item.porcentaje_utilizacion_metodo_pago,
         modelo_veces_alquilado:item.modelo_veces_alquilado,
         modelo_porcentaje_alquilado: item.modelo_porcentaje_alquilado,
         posicion_top_modelo_vehiculo_alquilado:item.posicion_top_modelo_vehiculo_alquilado,
         porcentaje_vehiculos_disponibles: item.porc_vehiculos_disponibles,
         ingresos:item.ingresos,
         egresos:item.egresos,
         duracion_promedio_alquiler:item.duracion_promedio_alquiler,
         total_alquileres:item.total_alquileres,
         porcentaje_vehiculos_utilizados:item.porc_vehiculos_utilizados
       }
     });

     //insertar en bd 
     await modelo_datamart.InsertarEstadisticas(arr_estadisticas_sucursal,equipo.n_equipo);

   });
   /*
   */
  res.send('¡Registros, actualizados!');
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

    const res_estadisticas_alquiler = await dw.query(`SELECT * FROM hechos_estadisticas_alquiler`);
    const hechos_estadisticas_alquiler = res_estadisticas_alquiler.rows.map((res)=>{
      return {
        tiempo:{
          id_anio: res.id_year,
          id_mes: res.id_month,
          id_dia: res.id_day,
          id_hora: res.id_hour
        },
        porc_Satisfaccion_Cliente: res.porc_satisfaccion_cliente, //porcentaje de satifficacion cliente -> promedio de calificacion de cliente
        id_metodo_pago: res.id_metodo_pago,
        posicion_top_metodo_pago_utilizado: res.posicion_top_metodo_pago,
        metodo_pago_veces_utilizado: res.metodo_pago_veces_utilizado,
        porcentaje_utilizacion_metodo_pago: res.porcentaje_utilizacion_metodo_pago,
        id_modelo_vehiculo: res.id_vehiculo,
        posicion_top_modelo_vehiculo_alquilado: res.posicion_top_modelo_vehiculo_alquilado, //para top 10 vehiculos alquilados
        modelo_veces_alquilado: res.modelo_veces_alquilado, //cantidad de veces que fue alquilado este modelo de vehiculo
        modelo_porcentaje_alquilado: res.modelo_porcentaje_alquilado, //cantidad de veces que fue alquilado / total de alquileres
        ingresos: res.ingresos, //registro de ingresos diario o mensual o annual o como se elija
        egresos: res.egresos, //registro de egresos diario o mensual o annual o como se elija
        porc_ingresos: res.porc_ingresos, //formula de calculo ((ingresos-egresos)/ingresos) x 100
        porc_egresos: res.porc_egresos, //formula de calculo (egresos/ingresos) x 100
        ganancia_neta: res.ganancia_neta, // formula = ingresos - egresos
        porc_vehiculos_disponibles:res.porcentaje_vehiculos_disponibles, //(vehiculos no alquilados / total de vehiculos) x 100 - tendencia y estadisticas de alquiler 
        duracion_promedio_alquiler:res.duracion_promedio_alquiler, //tendencia y estadisticas de alquiler 
        total_alquileres:res.total_alquileres, //tendencia y estadisticas de alquiler
        porc_vehiculos_utilizados:res.porc_vehiculos_utilizados,  //tendencia y estadisticas de alquer

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