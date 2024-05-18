DROP DATABASE IF EXISTS perifinder;
CREATE DATABASE perifinder;
USE perifinder;


CREATE TABLE Componentes
(
    id INT
    AUTO_INCREMENT PRIMARY KEY, -- Identificador único para cada componente
    tipo ENUM
    ('GPU', 'CPU', 'RAM', 'PSU', 'SSD', 'Placa Base') NOT NULL, -- Tipo de componente: GPU, CPU, RAM, PSU, SSD, Placa Base
    nombre VARCHAR
    (255) NOT NULL, -- Nombre del componente
	imagen VARCHAR
    (255) NOT NULL, -- Imagen del Componente
    marca VARCHAR
    (255), -- Marca del componente
    descripcion TEXT, -- Descripción del componente
    precio DECIMAL
    (10, 2) NOT NULL, -- Precio del componente
    modelo VARCHAR
    (255), -- Modelo del componente
    vram VARCHAR
    (255), -- VRAM (Memoria de Acceso Aleatorio para Video) - Pertenece a GPU y SSD
    nucleos_procesamiento INT, -- Número de núcleos de procesamiento - Pertenece a GPU y CPU
    frecuencia_reloj FLOAT, -- Frecuencia de Reloj - Pertenece a GPU y CPU
    ancho_banda_memoria VARCHAR
    (255), -- Ancho de Banda de Memoria - Pertenece a GPU y SSD
    interfaz VARCHAR
    (255), -- Interfaz de Memoria - Pertenece a GPU y SSD
    consumo_energia DECIMAL
    (5, 2), -- Consumo de Energía - Pertenece a GPU, CPU y PSU
    compatibilidad_tecnologias TEXT, -- Compatibilidad con Tecnologías Específicas - Pertenece a GPU y CPU
    tamano_tipo_refrigeracion VARCHAR
    (255), -- Tamaño y Tipo de Refrigeración - Pertenece a GPU y CPU
    numero_nucleos_hilos INT, -- Número de Núcleos y Hilos - Pertenece a CPU
    cache_l3 VARCHAR
    (255), -- Caché L3 - Pertenece a CPU
    tecnologia_fabricacion VARCHAR
    (255), -- Tecnología de Fabricación - Pertenece a GPU y CPU
    soporte_instrucciones TEXT, -- Soporte para Instrucciones Específicas - Pertenece a CPU
    compatibilidad_plataformas_chipsets VARCHAR
    (255), -- Compatibilidad con Plataformas y Chipsets - Pertenece a CPU
    integracion_gpu VARCHAR
    (255), -- Integración Gráfica - Pertenece a CPU
    actualizabilidad VARCHAR
    (255), -- Actualizabilidad - Pertenece a CPU y PSU
    capacidad VARCHAR
    (255), -- Capacidad - Pertenece a RAM y SSD
    velocidad_lectura_escritura VARCHAR
    (255), -- Velocidad de Lectura/Escritura - Pertenece a RAM y SSD
    durabilidad VARCHAR
    (255), -- Durabilidad - Pertenece a SSD
    latencia VARCHAR
    (255), -- Latencia - Pertenece a RAM
    tipo_memoria VARCHAR
    (255), -- Tipo de Memoria - Pertenece a RAM y SSD
    canales_memoria VARCHAR
    (255), -- Canal Dual / Cuádruple - Pertenece a RAM
    voltaje VARCHAR
    (255), -- Voltaje - Pertenece a RAM
    potencia_nominal DECIMAL
    (5, 2), -- Potencia Nominal - Pertenece a PSU
    eficiencia_energetica VARCHAR
    (255), -- Eficiencia Energética - Pertenece a PSU
    conectores VARCHAR
    (255), -- Conectores - Pertenece a PSU
    modularidad VARCHAR
    (255), -- Modularidad - Pertenece a PSU
    protecciones VARCHAR
    (255), -- Protecciones - Pertenece a PSU
    ruido VARCHAR
    (255), -- Ruido - Pertenece a PSU
    compatibilidad VARCHAR
    (255), -- Compatibilidad - Pertenece a PSU y Placa Base
    factor_forma VARCHAR
    (255), -- Factor de Forma - Pertenece a Placa Base
    socket_cpu VARCHAR
    (255), -- Socket del Procesador - Pertenece a Placa Base
    chipset VARCHAR
    (255), -- Chipset - Pertenece a Placa Base
    numero_ranuras_ram INT, -- Número de Ranuras RAM - Pertenece a Placa Base
    slots_expansion VARCHAR
    (255), -- Slots de Expansión - Pertenece a Placa Base
    conectividad VARCHAR
    (255), -- Conectividad - Pertenece a Placa Base
    ram_soportada VARCHAR
    (255) -- RAM Soportada - Pertenece a Placa Base
);

    -- Inserts para SSD


    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'Samsung 970 EVO Plus', 'https://ejemplo.com/imagenes/samsung_970_evo_plus.jpg', 'Samsung', 'SSD NVMe de alto rendimiento para almacenamiento de datos rápido y confiable.', 199.99, '970 EVO Plus', '1 TB', '3500 MB/s lectura, 3300 MB/s escritura', '1.5 millones de horas MTBF', 'NAND 3D TLC', 'M.2 2280', 'PCIe Gen3 x4');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'WD Blue SN550', 'https://ejemplo.com/imagenes/wd_blue_sn550.jpg', 'Western Digital', 'SSD NVMe de gran capacidad y velocidad para mejorar el rendimiento del sistema.', 89.99, 'Blue SN550', '500 GB', '2400 MB/s lectura, 1950 MB/s escritura', '600 TBW (Terabytes Written)', 'NAND 3D TLC', 'M.2 2280', 'PCIe Gen3 x4');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'Crucial MX500', 'https://ejemplo.com/imagenes/crucial_mx500.jpg', 'Crucial', 'SSD SATA de alta capacidad y fiabilidad para almacenamiento de datos rápido.', 119.99, 'MX500', '2 TB', '560 MB/s lectura, 510 MB/s escritura', '360 TBW (Terabytes Written)', 'NAND 3D TLC', '2.5 pulgadas', 'SATA III');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'ADATA SU760', 'https://ejemplo.com/imagenes/adata_su760.jpg', 'ADATA', 'SSD SATA con gran relación calidad-precio para una actualización de almacenamiento económica.', 59.99, 'SU760', '1 TB', '560 MB/s lectura, 520 MB/s escritura', '500 TBW (Terabytes Written)', 'NAND 3D TLC', '2.5 pulgadas', 'SATA III');


    -- Inserts para Placa base

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'MSI MPG B550 Gaming Edge WiFi', 'https://ejemplo.com/imagenes/msi_mpg_b550_gaming_edge_wifi.jpg', 'MSI', 'Placa base ATX con Wi-Fi integrado, compatible con procesadores AMD Ryzen de 3ª generación.', 189.99, 'MPG B550 Gaming Edge WiFi', 'AM4', 'AMD B550', 4, 'PCIe x16/x1, M.2', 'Wi-Fi 6, Bluetooth 5.1, Ethernet Gigabit', 'DDR4 hasta 5100 MHz', 'ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'GIGABYTE B450 AORUS Elite', 'https://ejemplo.com/imagenes/gigabyte_b450_aorus_elite.jpg', 'GIGABYTE', 'Placa base ATX para procesadores AMD Ryzen de primera y segunda generación.', 114.99, 'B450 AORUS Elite', 'AM4', 'AMD B450', 4, 'PCIe x16/x1, M.2', 'Ethernet Gigabit', 'DDR4 hasta 3600 MHz', 'ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'ASUS ROG Strix B550-F Gaming', 'https://ejemplo.com/imagenes/asus_rog_strix_b550_f_gaming.jpg', 'ASUS', 'Placa base ATX para gamers con soporte para procesadores AMD Ryzen de 3ª generación.', 179.99, 'ROG Strix B550-F Gaming', 'AM4', 'AMD B550', 4, 'PCIe x16, M.2', 'Ethernet Gigabit, Wi-Fi 6', 'DDR4 hasta 5100 MHz', 'ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'ASRock B450M Steel Legend', 'https://ejemplo.com/imagenes/asrock_b450m_steel_legend.jpg', 'ASRock', 'Placa base Micro-ATX con un diseño duradero y soporte para procesadores AMD Ryzen de 2ª generación.', 99.99, 'B450M Steel Legend', 'AM4', 'AMD B450', 4, 'PCIe x16/x1, M.2', 'Ethernet Gigabit', 'DDR4 hasta 3533 MHz', 'Micro-ATX');


    -- Inserts para CPU
    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'AMD Ryzen 9 5900X', 'https://ejemplo.com/imagenes/amd_ryzen_9_5900x.jpg', 'AMD', 'Procesador de alto rendimiento con 12 núcleos y 24 hilos, ideal para gaming y tareas intensivas.', 549.99, 'Ryzen 9 5900X', 12, 3.7, 105.00, 12, '64 MB', '7 nm', 'SSE4.2, AVX2', 'AM4', 'No', 'Sí');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'Intel Core i7-10700K', 'https://ejemplo.com/imagenes/intel_core_i7_10700k.jpg', 'Intel', 'Procesador de 8 núcleos y 16 hilos, excelente para gaming y aplicaciones de productividad.', 399.99, 'Core i7-10700K', 8, 3.8, 125.00, 8, '16 MB', '14 nm', 'SSE4.2, AVX2, AVX-512', 'LGA1200', 'No', 'Sí');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'AMD Ryzen 5 3600', 'https://ejemplo.com/imagenes/amd_ryzen_5_3600.jpg', 'AMD', 'Procesador de 6 núcleos y 12 hilos, ofrece un excelente rendimiento a un precio asequible.', 199.99, 'Ryzen 5 3600', 6, 3.6, 65.00, 6, '32 MB', '7 nm', 'SSE4.2, AVX2', 'AM4', 'No', 'Sí');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'Intel Core i5-10400F', 'https://ejemplo.com/imagenes/intel_core_i5_10400f.jpg', 'Intel', 'Procesador de 6 núcleos y 12 hilos, excelente relación calidad-precio para gaming y tareas diarias.', 179.99, 'Core i5-10400F', 6, 2.9, 65.00, 6, '12 MB', '14 nm', 'SSE4.2, AVX2', 'LGA1200', 'No', 'Sí');

    -- Inserts para GPU

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'NVIDIA GeForce RTX 3080', 'https://ejemplo.com/imagenes/nvidia_geforce_rtx_3080.jpg', 'NVIDIA', 'Tarjeta gráfica de alto rendimiento con arquitectura Ampere, ideal para gaming y creación de contenido.', 699.99, 'RTX 3080', '10 GB GDDR6X', 8704, 1.71, '760.3 GB/s', 'PCIe 4.0', 320.00, 'Ray Tracing, DLSS', 'Triple Ventilador', '8 nm');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'AMD Radeon RX 6800 XT', 'https://ejemplo.com/imagenes/amd_radeon_rx_6800_xt.jpg', 'AMD', 'Tarjeta gráfica de alto rendimiento con arquitectura RDNA 2, perfecta para gaming en 4K.', 649.99, 'RX 6800 XT', '16 GB GDDR6', 4608, 2.25, '512 GB/s', 'PCIe 4.0', 300.00, 'Ray Tracing, FidelityFX', 'Triple Ventilador', '7 nm');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'NVIDIA GeForce GTX 1660 Super', 'https://ejemplo.com/imagenes/nvidia_geforce_gtx_1660_super.jpg', 'NVIDIA', 'Tarjeta gráfica de gama media con arquitectura Turing, ideal para gaming en 1080p.', 229.99, 'GTX 1660 Super', '6 GB GDDR6', 1408, 1.78, '336 GB/s', 'PCIe 3.0', 125.00, 'Ansel, G-SYNC', 'Dual Ventilador', '12 nm');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'AMD Radeon RX 5600 XT', 'https://ejemplo.com/imagenes/amd_radeon_rx_5600_xt.jpg', 'AMD', 'Tarjeta gráfica de gama media con arquitectura RDNA, excelente para gaming en 1080p.', 279.99, 'RX 5600 XT', '6 GB GDDR6', 2304, 1.56, '288 GB/s', 'PCIe 4.0', 150.00, 'FreeSync, Radeon Anti-Lag', 'Dual Ventilador', '7 nm');

    -- Inserts para PSU


    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'Corsair RM750x', 'https://ejemplo.com/imagenes/corsair_rm750x.jpg', 'Corsair', 'Fuente de alimentación completamente modular de 750W con certificación 80 PLUS Gold.', 129.99, 'RM750x', 750.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 750.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Full Modular', 'Protección contra sobrevoltaje, protección contra sobrecorriente', 'Bajo ruido', 'Compatible con cajas ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'EVGA SuperNOVA 650 G5', 'https://ejemplo.com/imagenes/evga_supernova_650_g5.jpg', 'EVGA', 'Fuente de alimentación totalmente modular de 650W con certificación 80 PLUS Gold.', 109.99, 'SuperNOVA 650 G5', 650.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 650.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Full Modular', 'Protección contra sobrevoltaje, protección contra sobrecorriente', 'Ultra silencioso', 'Compatible con cajas ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'Seasonic FOCUS GX-850', 'https://ejemplo.com/imagenes/seasonic_focus_gx_850.jpg', 'Seasonic', 'Fuente de alimentación de 850W completamente modular con certificación 80 PLUS Gold.', 139.99, 'FOCUS GX-850', 850.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 850.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Full Modular', 'Protección contra cortocircuito, protección contra sobrevoltaje', 'Ventilador silencioso', 'Compatible con cajas ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'Cooler Master MWE Gold 750', 'https://ejemplo.com/imagenes/cooler_master_mwe_gold_750.jpg', 'Cooler Master', 'Fuente de alimentación modular de 750W con certificación 80 PLUS Gold.', 99.99, 'MWE Gold 750', 750.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 750.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Semi Modular', 'Protección contra sobrecorriente, protección contra cortocircuito', 'Operación silenciosa', 'Compatible con cajas ATX');



    --inserts para RAM

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje)
    VALUES
        ('RAM', 'Corsair Vengeance LPX 16GB (2x8GB)', 'https://ejemplo.com/imagenes/corsair_vengeance_lpx_16gb.jpg', 'Corsair', 'Kit de memoria RAM DDR4 de 16GB (2x8GB) para un rendimiento óptimo en juegos y multitarea.', 89.99, 'Vengeance LPX', '16GB (2x8GB)', '3200 MHz', 'Duradera y confiable', 'DDR4', 'Dual', '1.35V');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje)
    VALUES
        ('RAM', 'G.Skill Ripjaws V Series 32GB (2x16GB)', 'https://ejemplo.com/imagenes/g_skill_ripjaws_v_32gb.jpg', 'G.Skill', 'Kit de memoria RAM DDR4 de 32GB (2x16GB) diseñado para rendimiento extremo en aplicaciones intensivas.', 169.99, 'Ripjaws V Series', '32GB (2x16GB)', '3600 MHz', 'Alta durabilidad y estabilidad', 'DDR4', 'Dual', '1.35V');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje)
    VALUES
        ('RAM', 'Crucial Ballistix RGB 32GB (2x16GB)', 'https://ejemplo.com/imagenes/crucial_ballistix_rgb_32gb.jpg', 'Crucial', 'Kit de memoria RAM DDR4 de 32GB (2x16GB) con iluminación RGB para un rendimiento y estilo excepcionales.', 189.99, 'Ballistix RGB', '32GB (2x16GB)', '3600 MHz', 'Alta durabilidad y estabilidad', 'DDR4', 'Dual', '1.35V');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje)
    VALUES
        ('RAM', 'HyperX Fury RGB 64GB (2x32GB)', 'https://ejemplo.com/imagenes/hyperx_fury_rgb_64gb.jpg', 'HyperX', 'Kit de memoria RAM DDR4 de 64GB (2x32GB) con iluminación RGB para un rendimiento superior en aplicaciones exigentes.', 329.99, 'Fury RGB', '64GB (2x32GB)', '3200 MHz', 'Duradera y confiable', 'DDR4', 'Dual', '1.35V');