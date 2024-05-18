const express = require('express');
const mysql = require('mysql2/promise'); 

const app = express();
const PORT = process.env.PORT || 3000;

const pool = mysql.createPool({
    host: 'localhost',
    port: 3306,
    user: 'periadmin',
    password: 'periadmin12345',
    database: 'perifinder',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

function filtrarCampos(componente) {
    const tipo = componente.tipo;

    const camposComunes = {
        id: componente.id,
        tipo: componente.tipo,
        nombre: componente.nombre,
        marca: componente.marca,
        descripcion: componente.descripcion,
        precio: componente.precio
    };

    switch (tipo) {
        case 'CPU':
            return {
                ...camposComunes,
                modelo: componente.modelo,
                nucleos_procesamiento: componente.nucleos_procesamiento,
                frecuencia_reloj: componente.frecuencia_reloj,
                numero_nucleos_hilos: componente.numero_nucleos_hilos,
                cache_l3: componente.cache_l3,
                tecnologia_fabricacion: componente.tecnologia_fabricacion,
                soporte_instrucciones: componente.soporte_instrucciones,
                integracion_gpu: componente.integracion_gpu
            };
        case 'GPU':
            return {
                ...camposComunes,
                modelo: componente.modelo,
                vram: componente.vram,
                nucleos_procesamiento: componente.nucleos_procesamiento,
                frecuencia_reloj: componente.frecuencia_reloj,
                ancho_banda_memoria: componente.ancho_banda_memoria,
                interfaz_memoria: componente.interfaz_memoria,
                consumo_energia: componente.consumo_energia,
                compatibilidad_tecnologias: componente.compatibilidad_tecnologias,
                tamano_tipo_refrigeracion: componente.tamano_tipo_refrigeracion
            };
        case 'RAM':
            return {
                ...camposComunes,
                capacidad: componente.capacidad,
                velocidad_lectura_escritura: componente.velocidad_lectura_escritura
            };
        case 'SSD':
            return {
                ...camposComunes,
                capacidad: componente.capacidad,
                tipo_interfaz: componente.tipo_interfaz,
                velocidad_lectura_escritura: componente.velocidad_lectura_escritura,
                durabilidad: componente.durabilidad
            };
        case 'Placa Base':
            return {
                ...camposComunes,
                socket_cpu: componente.socket_cpu,
                chipset: componente.chipset,
                numero_ranuras_ram: componente.numero_ranuras_ram,
                slots_expansion: componente.slots_expansion,
                conectividad: componente.conectividad,
                ram_soportada: componente.ram_soportada
            };
        default:
            return camposComunes;
    }
}

app.get('/api/componentes', async (req, res) => {
    try {
        const [rows, fields] = await pool.query('SELECT * FROM Componentes');
        const componentesFiltrados = rows.map(filtrarCampos);
        res.json(componentesFiltrados);
    } catch (error) {
        console.error('Error al obtener los componentes:', error);
        res.status(500).json({ error: 'Error al obtener los componentes' });
    }
});

app.listen(PORT, () => {
    console.log(`Servidor API corriendo en http://localhost:${PORT}`);
});
