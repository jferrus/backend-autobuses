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

export async function getAllNombreParadasLinea1(nombre) {
  
  let rows = null;
  const db = await initializeDatabase();
  const sqlQuery = `SELECT nombre FROM paradas_linea_1`;

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