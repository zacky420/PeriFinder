const express = require("express");
const mysql = require("mysql2/promise");
const cors = require('cors');
const app = express();
const PORT = process.env.PORT || 3000;

const pool = mysql.createPool({
  host: "localhost",
  port: 3306,
  user: "periadmin",
  password: "periadmin12345",
  database: "perifinder",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

function filtrarCampos(componente) {
  const tipo = componente.tipo;

  const camposComunes = {
    id: componente.id,
    tipo: componente.tipo,
    nombre: componente.nombre,
    imagen:componente.imagen,
    marca: componente.marca,
    descripcion: componente.descripcion,
    precio: componente.precio,
    modelo: componente.modelo,
  };

  switch (tipo) {
    case "CPU":
      return {
        ...camposComunes,
        nucleos: componente.nucleos_procesamiento,
        hilos: componente.numero_nucleos_hilos,
        frecuencia_reloj: componente.frecuencia_reloj,
        cache_l3: componente.cache_l3,
        tecnologia_fabricacion: componente.tecnologia_fabricacion,
        soporte_instrucciones: componente.soporte_instrucciones,
        compatibilidad_chipset: componente.compatibilidad_plataformas_chipsets,
        integracion_gpu: componente.integracion_gpu,
        actualizabilidad: componente.actualizabilidad,
      };
    case "GPU":
      return {
        ...camposComunes,
        vram: componente.vram,
        nucleos_CUDA: componente.nucleos_procesamiento,
        frecuencia_reloj: componente.frecuencia_reloj,
        ancho_banda_memoria: componente.ancho_banda_memoria,
        interfaz: componente.interfaz,
        consumo_energia: componente.consumo_energia,
        compatibilidad_tecnologias: componente.compatibilidad_tecnologias,
        tamano_tipo_refrigeracion: componente.tamano_tipo_refrigeracion,
        tecnologia_fabricacion: componente.tecnologia_fabricacion,
      };
    case "RAM":
      return {
        ...camposComunes,
        capacidad: componente.capacidad,
        megaHercios: componente.velocidad_lectura_escritura,
        latencia: componente.latencia,
        tipo_memoria: componente.tipo_memoria,
        canales_memoria: componente.canales_memoria,
        voltaje: componente.voltaje,
        durabilidad: componente.durabilidad,
      };
    case "SSD":
      return {
        ...camposComunes,
        capacidad: componente.capacidad,
        velocidad_lectura_escritura: componente.velocidad_lectura_escritura,
        tipo_interfaz: componente.interfaz,
        durabilidad: componente.durabilidad,
        factor_forma: componente.factor_forma,
        tipo_memoria: componente.tipo_memoria,
      };
    case "Placa Base":
      return {
        ...camposComunes,
        socket_cpu: componente.socket_cpu,
        chipset: componente.chipset,
        numero_ranuras_ram: componente.numero_ranuras_ram,
        factor_forma: componente.factor_forma,
        slots_expansion: componente.slots_expansion,
        conectividad: componente.conectividad,
        ram_soportada: componente.ram_soportada,
      };
    case "PSU":
      return {
        ...camposComunes,
        Wattage: componente.potencia_nominal,
        conectores: componente.conectores,
        eficiencia_energetica: componente.eficiencia_energetica,
        modularidad: componente.modularidad,
        protecciones: componente.protecciones,
        ruido: componente.ruido,
        compatibilidad: componente.compatibilidad,
        actualizabilidad: componente.actualizabilidad,
      };
    default:
      return camposComunes;
  }
}
app.use(cors());
app.get("/api/componentes", async (req, res) => {
  try {
    const [rows, fields] = await pool.query("SELECT * FROM Componentes");
    const componentesFiltrados = rows.map(filtrarCampos);
    res.json(componentesFiltrados);
  } catch (error) {
    console.error("Error al obtener los componentes:", error);
    res.status(500).json({ error: "Error al obtener los componentes" });
  }
});

app.listen(PORT, () => {
  console.log(`Servidor activado,para utilizar la API, por favor vaya a  http://localhost:${PORT}/api/componentes`);
});
