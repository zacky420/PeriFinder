const express = require('express');
const mysql = require('mysql2/promise');

const app = express();
const PORT = process.env.PORT || 3000;

const pool = mysql.createPool({
    host: 'localhost',
    user: 'periadmin',
    password: 'periadmin12345',
    database: 'perifinder',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});


app.get('/api/componentes', async (req, res) => {
    try {
        const [rows, fields] = await pool.query('SELECT * FROM Componentes');
        res.json(rows); 
    } catch (error) {
        console.error('Error al obtener los componentes:', error);
        res.status(500).json({ error: 'Error al obtener los componentes' });
    }
});


app.listen(PORT, () => {
    console.log(`Servidor API corriendo en http://localhost:${PORT}`);
});
