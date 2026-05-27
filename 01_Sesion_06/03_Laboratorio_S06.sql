-- 💻 LABORATORIO SESIÓN 6: EL CONTRATO (Antigravity)
-- ═══════════════════════════════════════════════════════════════
-- Guía de Referencia: 02_Guia_S06_Antigravity.md
-- ═══════════════════════════════════════════════════════════════

-- INSTRUCCIONES:
-- 1. Escribe tu código debajo de cada bloque.
-- 2. Para ejecutar: Selecciona con el mouse y presiona Cmd + E.
-- 3. Observa los resultados en la terminal o pestaña de resultados.

-- ══ BLOQUE B — Crear DimProducto ═══════════════════════════════
CREATE TABLE DimProducto (
    ProductoID   INTEGER       PRIMARY KEY,      -- Identificador único
    Nombre       VARCHAR(100)  NOT NULL,          -- No puede estar vacío
    Categoria    VARCHAR(50)   NOT NULL,          
    Precio       DECIMAL(10,2) NOT NULL,          
    Costo        DECIMAL(10,2) NOT NULL           
);
-- ══ BLOQUE C — Insertar y Consultar Datos ══════════════════════
INSERT INTO DimProducto (ProductoID, Nombre, Categoria, Precio, Costo) VALUES
    (1, 'Laptop Gamer Z',      'Laptops',     2500.00, 1800.00),
    (2, 'Smartphone Pro',      'Smartphones', 1200.00,  800.00),
    (3, 'Smartwatch Q',        'Wearables',    300.00,  180.00),
    (4, 'Audifonos Bluetooth', 'Audio',        150.00,   90.00);

SELECT
    Nombre,
    Precio,
    Costo,
    (Precio - Costo) AS Margen_Bruto
FROM DimProducto;
-- ══ BLOQUE D — DimCiudad + Foreign Key (Desafío) ═══════════════
CREATE TABLE DimCiudad (
    CiudadID       INTEGER       PRIMARY KEY,
    Nombre         VARCHAR(100)  NOT NULL,
    Region         VARCHAR(50)   NOT NULL,
    Factor_Envio   DECIMAL(4,2)  NOT NULL,
    Es_Zona_Remota INTEGER       DEFAULT 0
);

INSERT INTO DimCiudad (CiudadID, Nombre, Region, Factor_Envio, Es_Zona_Remota) VALUES
    (1, 'Bogotá', 'Centro', 1.00, 0),
    (6, 'Leticia', 'Amazonia', 8.00, 1);

PRAGMA foreign_keys = ON;

CREATE TABLE FactVentas_Demo (
    TransaccionID INTEGER PRIMARY KEY,
    CiudadID      INTEGER NOT NULL,
    Cantidad      INTEGER NOT NULL,
    FOREIGN KEY (CiudadID) REFERENCES DimCiudad(CiudadID)
);

-- ESTO DEBE DAR ERROR:
-- INSERT INTO FactVentas_Demo VALUES (101, 99, 5); 
-- ══ VERIFICACIÓN FINAL — PRAGMA table_info y SELECT ════════════
PRAGMA table_info('DimProducto');
PRAGMA table_info('DimCiudad');
PRAGMA table_info('FactVentas_Demo');
-- ═══════════════════════════════════════════════════════════════
-- Fin del Laboratorio 06
