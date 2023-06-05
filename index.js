require('dotenv').config();
const express = require('express');
const dw = require('./config/datawarehouse.config');
const app = express();
const port = process.env.PORT || 3000;


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

app.listen(port,'0.0.0.0' ,() => {
  console.log(`Servidor iniciado en el puerto ${process.env.APP_PORT}`);
});