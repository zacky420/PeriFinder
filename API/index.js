const express = require('express');
const mysql = require('mysql2/promise'); // Módulo para interactuar con MySQL

const app = express();
const PORT = process.env.PORT || 3000;

// Configuración de la conexión a la base de datos
const pool = mysql.createPool({
    host: 'localhost',
    user: 'periadmin',
    password: 'periadmin12345',
    database: 'perifinder',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Ruta para obtener todos los componentes
app.get('/api/componentes', async (req, res) => {
    try {
        const [rows, fields] = await pool.query('SELECT * FROM Componentes');
        res.json(rows); // Enviar respuesta en formato JSON con los datos de los componentes
    } catch (error) {
        console.error('Error al obtener los componentes:', error);
        res.status(500).json({ error: 'Error al obtener los componentes' });
    }
});

// Iniciar el servidor
app.listen(PORT, () => {
    console.log(`Servidor API corriendo en http://localhost:${PORT}`);
});
