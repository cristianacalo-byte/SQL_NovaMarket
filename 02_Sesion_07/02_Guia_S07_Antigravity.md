# Sesión 07 | Laboratorio Antigravity
## Guía: El Interrogatorio (SQL con NovaMarket)

Hoy aprenderás a transformar datos de Excel a una base de datos SQLite usando Python, y luego realizarás el "Interrogatorio" (SELECT y WHERE) usando VS Code, con el apoyo de **Antigravity** como tu tutor.

---

## 1. El Puente de Datos: Del Excel al SQLite
En lugar de escribir cientos de comandos `INSERT` a mano, usaremos un pequeño script de Python para automatizar el proceso de carga. Así es como se hace en el mundo profesional.

### Paso A: Preparar el Entorno
Abre la terminal de VS Code y asegúrate de tener instaladas las librerías necesarias:
```bash
pip install pandas openpyxl
```

> [!NOTE]
> **¿Para qué sirven estas librerías?**
> - **Pandas:** Es la herramienta líder para manipulación y análisis de datos en Python. Nos permite leer y procesar tablas de forma ultra rápida.
> - **Openpyxl:** Es el "motor" o traductor que permite a Pandas abrir equipos y leer archivos modernos de Excel (`.xlsx`).

### Paso B: Ejecutar el Cargador
Localiza el archivo **`03_Cargador_Excel_a_SQLite.py`** y ejecútalo. Este script leerá el archivo de Excel **`04_Ventas_Datos_Limpios_S03.xlsx`** y creará automáticamente el archivo de base de datos **`Novamarket_S07.db`**.

> [!TIP]
> **¿Quieres entender el código?** Revisa la guía **[03_Detalle_Codigo_Python.md](file:///Users/macbookpro/Developer/Learning/SQL/02_Sesion_07/03_Detalle_Codigo_Python.md)** para ver la explicación paso a paso de lo que hace Python con tus datos.

> [!NOTE]
> Puedes ejecutarlo haciendo clic en el botón ▶️ (Run) de Python en la esquina superior derecha o escribiendo en la terminal:
> `python 03_Cargador_Excel_a_SQLite.py`

---

## 2. Conexión con SQLTools
Una vez generada la base de datos `Novamarket_S07.db`, debemos conectar VS Code para realizar nuestras consultas SQL.

1.  Ve al menú de **SQLTools** (icono del cilindro).
2.  Crea una **Nueva Conexión** (Add New Connection).
    - **Driver:** SQLite (Node.js).
    - **Nombre:** `NovaMarket_S07`.
    - **Database File:** Busca el archivo **`Novamarket_S07.db`** en la carpeta `02_Sesion_07`.
3.  Haz clic en **SAVE CONNECTION** y luego en **CONNECT**.

---

## 3. Laboratorio: El Interrogatorio (Bloques A - E)
Abre el archivo **`06_Laboratorio_Consultas.sql`**. Escribe allí tus propias consultas SQL y ejecútalas contra la base de datos confirmando que tienes los 500 registros iniciales.

**Recuerda pedir ayuda a Antigravity de esta forma:**
- **Sintaxis:** *"@antigravity, ¿cómo funciona el operador BETWEEN para fechas?"*
- **Lógica:** *"@antigravity, ¿qué expresión necesito para calcular el margen bruto?"*
- **Errores:** *"@antigravity, mi SQL da error, ¿puedes explicarme qué está mal?"*

### Bloques de Práctica
1.  **Bloque A (Exploración):** Usa `SELECT *` y `LIMIT` para conocer tus datos.
2.  **Bloque B (Cálculos):** Practica el uso de alias (`AS`) y operaciones matemáticas.
3.  **Bloque C (Filtros WHERE):** El corazón de la sesión. Prueba filtros por texto, rangos (`BETWEEN`) y listas (`IN`).
4.  **Bloque D (Orden y Límites):** Usa `ORDER BY` para encontrar los extremos.
5.  **Bloque E (Desafíos):** Intenta resolver los problemas de negocio planteados.

---

> [!IMPORTANT]
> **Consistencia del Nombre:** Asegúrate de que el archivo generado sea **`Novamarket_S07.db`**. Si usas un nombre diferente, SQLTools no encontrará los datos.

---
*Sesión 07 | Antigravity Lab | NovaMarket Tech*
