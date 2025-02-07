import promisedSqlite3 from 'promised-sqlite3';
import fs from 'fs';
import log4js from 'log4js';

log4js.configure({
    appenders: { cheese: { type: "file", filename: "cheese.log" } },
    categories: { default: { appenders: ["cheese"], level: "error" } },
});
const logger = log4js.getLogger("cheese");

logger.level = "debug";

/**
 * Devuelve una conexión de base de datos
 * @returns { Promise<promisedSqlite3.AsyncDatabase>}
 */
export async function initializeDatabase() {

  try {

    const existDatabase = fs.existsSync('mydatabase.db');

    const db = await promisedSqlite3.AsyncDatabase.open('mydatabase.db');

    if(!existDatabase){ 
      const sql = await fs.promises.readFile('schema.sql', 'utf8');
      await db.exec(sql);
      logger.info('Database initialized successfully.');
    }

    return db;

  } catch (err) {
    logger.error('Error initializing database:', err);
    return null;
  }
}

/**
 * Devuelve todos el id, nombre y si es una parada opcional de la linea 1 de TOGSA
 * @returns {any}
 */
export async function getAllNombreParadasLinea1() {
  
  let rows = [];
  const db = await initializeDatabase();
  const sqlQuery = 'SELECT id, nombre, opcional FROM paradas_linea_1 ORDER BY id ASC;';

  try {    
    const queryPreparada = await db.prepare(sqlQuery);

    rows = await queryPreparada.all();

    if (rows.length > 0) {
      logger.info(rows);
    } else {
      logger.info("No rows found for the given name.");
    }
  } catch (err) {
    logger.error(err);
  }

  return rows;
}

/**
 * Devuelve una filas de salidas y llegadas durante un trayecto a un determinado precio.
 * @param {number} idOrigen 
 * @param {number} idDestino 
 * @returns {any}
 */
export async function getHorariosDesdeAhaciaB(idOrigen, idDestino) {
  let rows = [];
  const db = await initializeDatabase();

  const sqlQuery = `SELECT
                          h1.salida AS salida,
                          h2.salida AS llegada
                      FROM
                          horarios_linea_1 h1
                      JOIN
                          precios_linea_1 p 
                          ON p.punto_a = h1.origen
                      LEFT JOIN  -- Use LEFT JOIN to handle cases where there's no matching llegada
                          horarios_linea_1 h2 
                            ON p.punto_b = h2.origen 
                      ORDER BY
                          h1.salida, h2.salida -- Order by departure and arrival;`
                

  try { 
  
    const queryPreparada = await db.prepare(sqlQuery);

    rows = await queryPreparada.all();

    if (rows.length > 0) {
      logger.info(rows);
    } else {
      logger.info("No existen filas con ese origen y destino");
    }
  } catch (err) {
    logger.error(err);
  }

  return rows;
}
