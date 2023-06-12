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
      modelo_Vehiculos: inventario_vehiculos,
      metodo_Pagos:metodos_de_pago,
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