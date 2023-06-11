const dw = require("../config/datawarehouse.config");
class Datamart {
  async InsertarSucursal(id_sucursal, data, nro_equipo) {
    try {
      await dw.query(`
            Insert into sucursal(
                id,
                nombre,
                ubicacion,
                longitud,
                latitud,
                fecha_carga
                ) 
                VALUES 
                (
                    
                ${id_sucursal},
                '${data.nombre}',
                '${data.ubicacion}',
                ${data.longitud},
                ${data.latitud},
                '${data.fecha_carga}'                 
                );
            `);
    } catch (err) {
      console.error(`error al insertar sucursal de equipo ${nro_equipo}`, err);
    }
  }

  async InsertarMetodosDePago(data, nro_equipo) {
    try {
      await dw.query(
        `
            insert into metodo_pago (id,nombre, fecha_carga) 
            SELECT id,nombre,fecha_carga 
            FROM json_populate_recordset(NULL::metodo_pago,'${JSON.stringify(
              data
            )}');
            `
      );
    } catch (err) {
      console.error(
        `error al insertar metodos de pago del equipo ${nro_equipo}`,
        err
      );
    }
  }

  async InsertarVehiculos(data, nro_equipo) {
    try {
      await dw.query(
        `
            insert into vehiculo (id, marca, modelo, fecha_fabricacion, fecha_carga) 
            SELECT id, marca, modelo, fecha_fabricacion, fecha_carga
            FROM json_populate_recordset(NULL::vehiculo,'${JSON.stringify(
              data
            )}');
            `
      );
    } catch (err) {
      console.error(
        `error al insertar vehiculos del equipo ${nro_equipo}`,
        err
      );
    }
  }

  async InsertarTiempo(data, nro_equipo) {
    try {
      await dw.query(
        `
            insert into tiempo (year,month,day,hour) 
            SELECT year,month,day,hour
            FROM json_populate_recordset(NULL::tiempo,'${JSON.stringify(
              data
            )}');
            `
      );
    } catch (err) {
      console.error(`error al insertar tiempos del equipo ${nro_equipo}`, err);
    }
  }

  async InsertarEstadisticas(data, nro_equipo) {
    try {
      await dw.query(
        `
            insert into hechos_estadisticas_alquiler 
            (
                id_year, 
                id_month, 
                id_day, 
                id_hour, 
                id_sucursal, 
                id_vehiculo, 
                id_metodo_pago, 
                ganancia_neta, 
                porc_ingresos, 
                porc_egresos, 
                porc_satisfaccion_cliente, 
                posicion_top_metodo_pago, 
                metodo_pago_veces_utilizado, 
                porcentaje_utilizacion_metodo_pago, 
                modelo_veces_alquilado, 
                modelo_porcentaje_alquilado,
                posicion_top_modelo_vehiculo_alquilado, 
                porcentaje_vehiculos_disponibles, 
                ingresos, 
                egresos, 
                duracion_promedio_alquiler, 
                total_alquileres, 
                porcentaje_vehiculos_utilizados
            ) 
            SELECT
            id_year, 
            id_month, 
            id_day, 
            id_hour, 
            id_sucursal, 
            id_vehiculo, 
            id_metodo_pago, 
            ganancia_neta, 
            porc_ingresos, 
            porc_egresos, 
            porc_satisfaccion_cliente, 
            posicion_top_metodo_pago, 
            metodo_pago_veces_utilizado, 
            porcentaje_utilizacion_metodo_pago, 
            modelo_veces_alquilado, 
            modelo_porcentaje_alquilado,
            posicion_top_modelo_vehiculo_alquilado, 
            porcentaje_vehiculos_disponibles, 
            ingresos, 
            egresos, 
            duracion_promedio_alquiler, 
            total_alquileres, 
            porcentaje_vehiculos_utilizados
            FROM json_populate_recordset(NULL::hechos_estadisticas_alquiler,'${JSON.stringify(
              data
            )}');
            `
      );
    } catch (err) {
      console.error(
        `error al insertar estadisticas del equipo ${nro_equipo}`,
        err
      );
    }
  }
}

module.exports = new Datamart();
