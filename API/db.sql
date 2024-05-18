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
        ('SSD', 'Samsung 970 EVO Plus', 'https://images.samsung.com/is/image/samsung/p6pim/es/mz-v7s1t0bw/gallery/es-970-evoplus-nvme-m2-ssd-mz-v7s1t0bw-503532894?$650_519_PNG$', 'Samsung', 'SSD NVMe de alto rendimiento para almacenamiento de datos rápido y confiable.', 199.99, '970 EVO Plus', '1 TB', '3500 MB/s lectura, 3300 MB/s escritura', '1.5 millones de horas MTBF', 'NAND 3D TLC', 'M.2 2280', 'PCIe Gen3 x4');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'WD Blue SN550', 'https://www.westerndigital.com/content/dam/store/en-us/assets/products/internal-storage/wd-blue-sn550-nvme-ssd/gallery/500gb/wd-blue-sn550-nvme-ssd-front-500gb.png', 'Western Digital', 'SSD NVMe de gran capacidad y velocidad para mejorar el rendimiento del sistema.', 89.99, 'Blue SN550', '500 GB', '2400 MB/s lectura, 1950 MB/s escritura', '600 TBW (Terabytes Written)', 'NAND 3D TLC', 'M.2 2280', 'PCIe Gen3 x4');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'Crucial MX500', 'https://www.crucial.es/content/dam/crucial/marketing-assets/china-etail/12_12/products/crucial-mx500-2-5inch-product-dynamic-2-v2-image.psd.transform/small-png/img.png', 'Crucial', 'SSD SATA de alta capacidad y fiabilidad para almacenamiento de datos rápido.', 119.99, 'MX500', '2 TB', '560 MB/s lectura, 510 MB/s escritura', '360 TBW (Terabytes Written)', 'NAND 3D TLC', '2.5 pulgadas', 'SATA III');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, factor_forma, interfaz)
    VALUES
        ('SSD', 'ADATA SU760', 'https://webapi3.adata.com/storage/product/su760_us.png', 'ADATA', 'SSD SATA con gran relación calidad-precio para una actualización de almacenamiento económica.', 59.99, 'SU760', '1 TB', '560 MB/s lectura, 520 MB/s escritura', '500 TBW (Terabytes Written)', 'NAND 3D TLC', '2.5 pulgadas', 'SATA III');


    -- Inserts para Placa base

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'MSI MPG B550 Gaming Edge WiFi', 'https://asset.msi.com/resize/image/global/product/product_16093852859cb11f7cf193fa449383265b7aa14236.png62405b38c58fe0f07fcef2367d8a9ba1/1024.png', 'MSI', 'Placa base ATX con Wi-Fi integrado, compatible con procesadores AMD Ryzen de 3ª generación.', 189.99, 'MPG B550 Gaming Edge WiFi', 'AM4', 'AMD B550', 4, 'PCIe x16/x1, M.2', 'Wi-Fi 6, Bluetooth 5.1, Ethernet Gigabit', 'DDR4 hasta 5100 MHz', 'ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'GIGABYTE B450 AORUS Elite', 'https://static.gigabyte.com/StaticFile/Image/Global/e016416d858e96856acebd7d08104e54/Product/21214/png/500', 'GIGABYTE', 'Placa base ATX para procesadores AMD Ryzen de primera y segunda generación.', 114.99, 'B450 AORUS Elite', 'AM4', 'AMD B450', 4, 'PCIe x16/x1, M.2', 'Ethernet Gigabit', 'DDR4 hasta 3600 MHz', 'ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'ASUS ROG Strix B550-F Gaming', 'https://dlcdnwebimgs.asus.com/gain/7824F54B-F202-46C5-B170-6F84EAF36061/w717/h525', 'ASUS', 'Placa base ATX para gamers con soporte para procesadores AMD Ryzen de 3ª generación.', 179.99, 'ROG Strix B550-F Gaming', 'AM4', 'AMD B550', 4, 'PCIe x16, M.2', 'Ethernet Gigabit, Wi-Fi 6', 'DDR4 hasta 5100 MHz', 'ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, socket_cpu, chipset, numero_ranuras_ram, slots_expansion, conectividad, ram_soportada, factor_forma)
    VALUES
        ('Placa Base', 'ASRock B450M Steel Legend', 'https://www.asrock.com/mb/photo/B450M%20Steel%20Legend(M1).png', 'ASRock', 'Placa base Micro-ATX con un diseño duradero y soporte para procesadores AMD Ryzen de 2ª generación.', 99.99, 'B450M Steel Legend', 'AM4', 'AMD B450', 4, 'PCIe x16/x1, M.2', 'Ethernet Gigabit', 'DDR4 hasta 3533 MHz', 'Micro-ATX');


    -- Inserts para CPU
    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'AMD Ryzen 9 5900X', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRToIcUzJsw0HMMynff6sOpAv4fP0yZ-QD875wVBnBLlw&s', 'AMD', 'Procesador de alto rendimiento con 12 núcleos y 24 hilos, ideal para gaming y tareas intensivas.', 549.99, 'Ryzen 9 5900X', 12, 3.7, 105.00, 12, '64 MB', '7 nm', 'SSE4.2, AVX2', 'AM4', 'No', 'Sí');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'Intel Core i7-10700K', 'https://cdn-reichelt.de/bilder/web/xxl_ws/E200/BX8070110700K_03.png', 'Intel', 'Procesador de 8 núcleos y 16 hilos, excelente para gaming y aplicaciones de productividad.', 399.99, 'Core i7-10700K', 8, 3.8, 125.00, 8, '16 MB', '14 nm', 'SSE4.2, AVX2, AVX-512', 'LGA1200', 'No', 'Sí');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'AMD Ryzen 5 3600', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv2d4eo5Jcw8K9Od8qA7NYZY7IHkaDcnLQKxwGAWegrw&s', 'AMD', 'Procesador de 6 núcleos y 12 hilos, ofrece un excelente rendimiento a un precio asequible.', 199.99, 'Ryzen 5 3600', 6, 3.6, 65.00, 6, '32 MB', '7 nm', 'SSE4.2, AVX2', 'AM4', 'No', 'Sí');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, nucleos_procesamiento, frecuencia_reloj, consumo_energia, numero_nucleos_hilos, cache_l3, tecnologia_fabricacion, soporte_instrucciones, compatibilidad_plataformas_chipsets, integracion_gpu, actualizabilidad)
    VALUES
        ('CPU', 'Intel Core i5-10400F', 'https://media.game.es/COVERV2/3D_L/V00/V007D7.png', 'Intel', 'Procesador de 6 núcleos y 12 hilos, excelente relación calidad-precio para gaming y tareas diarias.', 179.99, 'Core i5-10400F', 6, 2.9, 65.00, 6, '12 MB', '14 nm', 'SSE4.2, AVX2', 'LGA1200', 'No', 'Sí');

    -- Inserts para GPU

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'NVIDIA GeForce RTX 3080', 'https://static-geektopia.com/storage/t/i/770/77029/geforce-rtx-3080-shop-600.webp', 'NVIDIA', 'Tarjeta gráfica de alto rendimiento con arquitectura Ampere, ideal para gaming y creación de contenido.', 699.99, 'RTX 3080', '10 GB GDDR6X', 8704, 1.71, '760.3 GB/s', 'PCIe 4.0', 320.00, 'Ray Tracing, DLSS', 'Triple Ventilador', '8 nm');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'AMD Radeon RX 6800 XT', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnT4J-5w_nu4ZGY-pOEvBlbuG0P15pgTODjODH8phFJg&s', 'AMD', 'Tarjeta gráfica de alto rendimiento con arquitectura RDNA 2, perfecta para gaming en 4K.', 649.99, 'RX 6800 XT', '16 GB GDDR6', 4608, 2.25, '512 GB/s', 'PCIe 4.0', 300.00, 'Ray Tracing, FidelityFX', 'Triple Ventilador', '7 nm');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'NVIDIA GeForce GTX 1660 Super', 'https://thumb.pccomponentes.com/w-530-530/articles/24/245161/2019102908460796f7a47f882387bf8717e5e317abe67778-src.jpg', 'NVIDIA', 'Tarjeta gráfica de gama media con arquitectura Turing, ideal para gaming en 1080p.', 229.99, 'GTX 1660 Super', '6 GB GDDR6', 1408, 1.78, '336 GB/s', 'PCIe 3.0', 125.00, 'Ansel, G-SYNC', 'Dual Ventilador', '12 nm');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, vram, nucleos_procesamiento, frecuencia_reloj, ancho_banda_memoria, interfaz, consumo_energia, compatibilidad_tecnologias, tamano_tipo_refrigeracion, tecnologia_fabricacion)
    VALUES
        ('GPU', 'AMD Radeon RX 5600 XT', 'https://static.gigabyte.com/StaticFile/Image/Global/2b982e901888f8f8d880b960ca8669dc/Product/24318/Png', 'AMD', 'Tarjeta gráfica de gama media con arquitectura RDNA, excelente para gaming en 1080p.', 279.99, 'RX 5600 XT', '6 GB GDDR6', 2304, 1.56, '288 GB/s', 'PCIe 4.0', 150.00, 'FreeSync, Radeon Anti-Lag', 'Dual Ventilador', '7 nm');

    -- Inserts para PSU


    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'Corsair RM750x', 'https://www.wipoid.com/81410-thickbox_default/corsair-rm750x-750w-80-gold-modular.jpg', 'Corsair', 'Fuente de alimentación completamente modular de 750W con certificación 80 PLUS Gold.', 129.99, 'RM750x', 750.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 750.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Full Modular', 'Protección contra sobrevoltaje, protección contra sobrecorriente', 'Bajo ruido', 'Compatible con cajas ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'EVGA SuperNOVA 650 G5', 'https://images.evga.com/products/gallery/png/220-G5-0650-RX_LG_1.png', 'EVGA', 'Fuente de alimentación totalmente modular de 650W con certificación 80 PLUS Gold.', 109.99, 'SuperNOVA 650 G5', 650.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 650.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Full Modular', 'Protección contra sobrevoltaje, protección contra sobrecorriente', 'Ultra silencioso', 'Compatible con cajas ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'Seasonic FOCUS GX-850', 'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MP_123156033/fee_786_587_png', 'Seasonic', 'Fuente de alimentación de 850W completamente modular con certificación 80 PLUS Gold.', 139.99, 'FOCUS GX-850', 850.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 850.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Full Modular', 'Protección contra cortocircuito, protección contra sobrevoltaje', 'Ventilador silencioso', 'Compatible con cajas ATX');

    INSERT INTO Componentes
        (tipo, nombre, imagen, marca, descripcion, precio, modelo, consumo_energia, actualizabilidad, potencia_nominal, eficiencia_energetica, conectores, modularidad, protecciones, ruido, compatibilidad)
    VALUES
        ('PSU', 'Cooler Master MWE Gold 750', 'https://cdn.coolermaster.com/media/assets/1035/mwe-gold-750-v2-full-modular-380x380-1-hover.png', 'Cooler Master', 'Fuente de alimentación modular de 750W con certificación 80 PLUS Gold.', 99.99, 'MWE Gold 750', 750.00, 'Compatible con ATX, Micro-ATX, Mini-ITX', 750.00, '80 PLUS Gold', 'ATX, EPS, PCIe, SATA, Peripheral', 'Semi Modular', 'Protección contra sobrecorriente, protección contra cortocircuito', 'Operación silenciosa', 'Compatible con cajas ATX');



    -- inserts para RAM

  INSERT INTO Componentes
    (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje, latencia)
VALUES
    ('RAM', 'Corsair Vengeance LPX 16GB (2x8GB)', 'https://assets.corsair.com/image/upload/c_pad,q_auto,h_1024,w_1024,f_auto/products/Memory/CMK16GX4M2Z2400C16/Gallery/VENG_LPX_BLK_00.webp?width=3840&quality=85&auto=webp&format=pjpg', 'Corsair', 'Kit de memoria RAM DDR4 de 16GB (2x8GB) para un rendimiento óptimo en juegos y multitarea.', 89.99, 'Vengeance LPX', '16GB (2x8GB)', '3200 MHz', 'Duradera y confiable', 'DDR4', 'Dual', '1.35V', 'CL16');

INSERT INTO Componentes
    (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje, latencia)
VALUES
    ('RAM', 'G.Skill Ripjaws V Series 32GB (2x16GB)', 'https://www.gskill.com/_upload/images/153611092211.png', 'G.Skill', 'Kit de memoria RAM DDR4 de 32GB (2x16GB) diseñado para rendimiento extremo en aplicaciones intensivas.', 169.99, 'Ripjaws V Series', '32GB (2x16GB)', '3600 MHz', 'Alta durabilidad y estabilidad', 'DDR4', 'Dual', '1.35V', 'CL18');

INSERT INTO Componentes
    (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje, latencia)
VALUES
    ('RAM', 'Crucial Ballistix RGB 32GB (2x16GB)', 'https://www.crucial.es/content/dam/crucial/dram-products/ballistix-family/images/web/crucial-ballistix-stacked-image.psd.transform/small-png/img.png', 'Crucial', 'Kit de memoria RAM DDR4 de 32GB (2x16GB) con iluminación RGB para un rendimiento y estilo excepcionales.', 189.99, 'Ballistix RGB', '32GB (2x16GB)', '3600 MHz', 'Alta durabilidad y estabilidad', 'DDR4', 'Dual', '1.35V', 'CL16');

INSERT INTO Componentes
    (tipo, nombre, imagen, marca, descripcion, precio, modelo, capacidad, velocidad_lectura_escritura, durabilidad, tipo_memoria, canales_memoria, voltaje, latencia)
VALUES
    ('RAM', 'HyperX Fury RGB 64GB (2x32GB)', 'https://m.media-amazon.com/images/I/61JX70ub-dL._AC_UF894,1000_QL80_.jpg', 'HyperX', 'Kit de memoria RAM DDR4 de 64GB (2x32GB) con iluminación RGB para un rendimiento superior en aplicaciones exigentes.', 329.99, 'Fury RGB', '64GB (2x32GB)', '3200 MHz', 'Duradera y confiable', 'DDR4', 'Dual', '1.35V', 'CL16');
