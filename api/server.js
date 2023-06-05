require('dotenv').config();
const express = require('express');
const dw = require('./config/datawarehouse.config');
const app = express();

app.get('/', (req, res) => {
    res.send('¡Hola, mundo desde equipo 5!');
  });

app.get('/sucursal',async (req,res)=>{
  try{
    const dw_res = await dw.query('SELECT * FROM sucursal');
    res.send(dw_res.rows); 
  }catch(err){
    res.status(500).send('error al pedir sucursal', err);
  }
});

app.listen(process.env.APP_PORT, () => {
  console.log(`Servidor iniciado en el puerto ${process.env.APP_PORT}`);
});