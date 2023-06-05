const pg = require('pg');
require('dotenv').config();
 
const pool = new pg.Pool({
    user: process.env.DW_USER,
    host: process.env.DW_HOST,
    database: process.env.DW_NAME,
    password: process.env.DW_PASSWORD,
    port: process.env.DW_PORT,
});

module.exports = pool;