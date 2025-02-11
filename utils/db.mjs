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
 * Devuelve una filas de salidas y llegadas durante un trayecto de la linea 1 de TOGSA a un determinado precio.
 * @param {number} idOrigen 
 * @param {number} idDestino 
 * @returns {any}
 */
export async function getHorariosLinea1DesdeAhaciaB(idOrigen, idDestino) {
  let rows = [];
  let direccion = 10;
  let punto_a = 3;
  let punto_b = 10;
  let sqlQuery = "";
  const db = await initializeDatabase();
  const sqlQueryDireccion10 = 
                      `SELECT
                          h1.origen,
                          STRFTIME('%HH:%MM', h1.salida) AS salida,
                          STRFTIME('%HH:%MM', h2.salida) AS llegada,
                          h1.direccion,
                          h1.trayecto
                      FROM
                          horarios_linea_1 h1
                      JOIN
                          precios_linea_1 p 
                          ON p.punto_a = h1.origen
                      LEFT JOIN  -- Use LEFT JOIN to handle cases where there's no matching llegada
                          horarios_linea_1 h2 
                            ON p.punto_b = h2.origen
                      WHERE
                          p.punto_a = ?  -- Your desired punto_a value
                          AND p.punto_b = ?
                          AND h1.direccion = h2.direccion
                          AND h1.trayecto = h2.trayecto
                          AND h1.direccion = ?
                      ORDER BY
                          STRFTIME('%HH:%MM', h1.salida) ASC-- Order by departure and arrival`;

    const sqlQueryDirecion1 = 
                      `SELECT
                          h1.origen,
                          STRFTIME('%HH:%MM', h2.salida) AS salida,
                          STRFTIME('%HH:%MM', h1.salida) AS llegada,
                          h1.direccion,
                          h1.trayecto,
                          p.precio
                      FROM
                          horarios_linea_1 h1
                      JOIN
                          precios_linea_1 p 
                          ON p.punto_a = h1.origen
                      LEFT JOIN  -- Use LEFT JOIN to handle cases where there's no matching llegada
                          horarios_linea_1 h2 
                            ON p.punto_b = h2.origen
                      WHERE
                          p.punto_a = ?  -- Your desired punto_a value
                          AND p.punto_b = ?
                          AND h1.direccion = h2.direccion
                          AND h1.trayecto = h2.trayecto
                          AND h1.direccion = ?
                      ORDER BY
                          STRFTIME('%HH:%MM', h1.salida) ASC-- Order by departure and arrival`;
           
  //Si son equivalentes e incluso si uno es string y otro un númer retorna vacío
  if(idDestino == idOrigen){
    return [];
  }

  if(idDestino < idOrigen){
    direccion = 1;
    punto_a = idDestino;
    punto_b = idOrigen;
    sqlQuery = sqlQueryDirecion1;
  } else {
    punto_a = idOrigen;
    punto_b = idDestino;
    sqlQuery = sqlQueryDireccion10;
  }

  try { 
  
    const queryPreparada = await db.prepare(sqlQuery, punto_a, punto_b, direccion);

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

/**
 * Devuelve todos el id, nombre y si es una parada opcional de la linea 2 de TOGSA
 * @returns {any}
 */
export async function getAllNombreParadasLinea2() {
  
  let rows = [];
  const db = await initializeDatabase();
  const sqlQuery = 'SELECT id, nombre, opcional FROM paradas_linea_2 ORDER BY id ASC;';

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
 * Devuelve una filas de salidas y llegadas durante un trayecto de la linea 2 de TOGSA a un determinado precio.
 * @param {number} idOrigen 
 * @param {number} idDestino 
 * @returns {any}
 */
export async function getHorariosLinea2DesdeAhaciaB(idOrigen, idDestino) {
  let rows = [];
  let direccion = 11;
  let punto_a = 1;
  let punto_b = direccion;
  let sqlQuery = "";
  const db = await initializeDatabase();
  const sqlQueryDireccion11 = 
                      `SELECT
                          h1.origen,
                          STRFTIME('%HH:%MM', h1.salida) AS salida,
                          STRFTIME('%HH:%MM', h2.salida) AS llegada,
                          h1.direccion,
                          h1.trayecto
                      FROM
                          horarios_linea_2 h1
                      JOIN
                          precios_linea_2 p 
                          ON p.punto_a = h1.origen
                      LEFT JOIN  -- Use LEFT JOIN to handle cases where there's no matching llegada
                          horarios_linea_2 h2 
                            ON p.punto_b = h2.origen
                      WHERE
                          p.punto_a = ?  -- Your desired punto_a value
                          AND p.punto_b = ?
                          AND h1.direccion = h2.direccion
                          AND h1.trayecto = h2.trayecto
                          AND h1.direccion = ?
                      ORDER BY
                          STRFTIME('%HH:%MM', h1.salida) ASC-- Order by departure and arrival`;

    const sqlQueryDirecion1 = 
                      `SELECT
                          h1.origen,
                          STRFTIME('%HH:%MM', h2.salida) AS salida,
                          STRFTIME('%HH:%MM', h1.salida) AS llegada,
                          h1.direccion,
                          h1.trayecto
                      FROM
                          horarios_linea_2 h1
                      JOIN
                          precios_linea_2 p 
                          ON p.punto_a = h1.origen
                      LEFT JOIN  -- Use LEFT JOIN to handle cases where there's no matching llegada
                          horarios_linea_2 h2 
                            ON p.punto_b = h2.origen
                      WHERE
                          p.punto_a = ?  -- Your desired punto_a value
                          AND p.punto_b = ?
                          AND h1.direccion = h2.direccion
                          AND h1.trayecto = h2.trayecto
                          AND h1.direccion = ?
                      ORDER BY
                          STRFTIME('%HH:%MM', h1.salida) ASC-- Order by departure and arrival`;
           
  //Si son equivalentes e incluso si uno es string y otro un númer retorna vacío
  if(idDestino == idOrigen){
    return [];
  }

  if(idDestino < idOrigen){
    direccion = 1;
    punto_a = idDestino;
    punto_b = idOrigen;
    sqlQuery = sqlQueryDirecion1;
  } else {
    punto_a = idOrigen;
    punto_b = idDestino;
    sqlQuery = sqlQueryDireccion11;
  }

  try { 
  
    const queryPreparada = await db.prepare(sqlQuery, punto_a, punto_b, direccion);

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

/**
 * Recupera el precio y si son opcionales o no alguna de las dos paradas de la linea 1 de TOGSA
 * @param {number} idOrigen 
 * @param {number} idDestino 
 * @returns {any}
 */
export async function getComunTrayectosLinea1DesdeAhaciaB(idOrigen, idDestino){
  let rows = [];
  let direccion = 11;
  let punto_a = 1;
  let punto_b = direccion;
  const db = await initializeDatabase();

  const sqlQuery = 
                  `SELECT
                      p.precio,
                      pa.opcional AS opcional_punto_a,
                      pa2.opcional AS opcional_punto_b
                    FROM
                      precios_linea_1 p 
                    JOIN
                      paradas_linea_1 pa
                      ON p.punto_a = pa.id
                    JOIN
                      paradas_linea_1 pa2
                      ON p.punto_b = pa2.id
                    WHERE p.punto_a = ?
                      AND punto_b = ?`;

if(idDestino == idOrigen){
  return [];
}

if(idDestino < idOrigen){
  direccion = 1;
  punto_a = idDestino;
  punto_b = idOrigen;
} else {
  punto_a = idOrigen;
  punto_b = idDestino;
}

try { 

  const queryPreparada = await db.prepare(sqlQuery, punto_a, punto_b);

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

/**
 * Recupera el precio y si son opcionales o no alguna de las dos paradas de la linea 2 de TOGSA
 * @param {number} idOrigen 
 * @param {number} idDestino 
 * @returns {any}
 */
export async function getComunTrayectosLinea2DesdeAhaciaB(idOrigen, idDestino){
  let rows = [];
  let direccion = 11;
  let punto_a = 1;
  let punto_b = direccion;
  const db = await initializeDatabase();

  const sqlQuery = 
                  `SELECT
                      p.precio,
                      pa.opcional AS opcional_punto_a,
                      pa2.opcional AS opcional_punto_b
                    FROM
                      precios_linea_2 p 
                    JOIN
                      paradas_linea_2 pa
                      ON p.punto_a = pa.id
                    JOIN
                      paradas_linea_2 pa2
                      ON p.punto_b = pa2.id
                    WHERE p.punto_a = ?
                      AND punto_b = ?`;

if(idDestino == idOrigen){
  return [];
}

if(idDestino < idOrigen){
  direccion = 1;
  punto_a = idDestino;
  punto_b = idOrigen;
} else {
  punto_a = idOrigen;
  punto_b = idDestino;
}

try { 

  const queryPreparada = await db.prepare(sqlQuery, punto_a, punto_b);

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