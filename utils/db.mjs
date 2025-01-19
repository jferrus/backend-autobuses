import promisedSqlite3 from 'promised-sqlite3';
import fs from 'fs';

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
      console.log('Database initialized successfully.');
    }

    return db;

  } catch (err) {
    console.error('Error initializing database:', err);
    return null;
  }
}

/**
 * Busca por un nombre
 * @param {String} nombre 
 * @returns {String[]}
 */
export async function findByName(nombre) {
  let rows = null;

  const db = await initializeDatabase();

  const sqlQuery = `SELECT name FROM users WHERE name = '${nombre}'`;

  try {    
    rows = await db.all(sqlQuery);

    if (rows.length > 0) {
      console.log(rows);
    } else {
      console.log("No rows found for the given name.");
    }
  } catch (err) {
    console.error(err);
  }

  return rows;
}

/**
 * Eliminar un usuario de la base de datos
 * @param {Integer} id 
 * @returns {boolean}
 */
export async function removeUser(id) {
  
  let row = null;
  let isBorrado = false;

  const db = await initializeDatabase();

  const sqlQuery = 'DELETE FROM users WHERE id = ?';

  try {
    // De esta forma no hay SQL Injection
    const queryPreparada = await db.prepare(sqlQuery, id);

    row = await queryPreparada.run();

    console.log(row);
    
    if (row.changes > 0) {
      isBorrado = true;
    } else {
      console.log("No lastId found for the given id.");
    }

  } catch (err) {
    console.error(err);
    isBorrado = false;
  }

  return isBorrado;

}


/**
 * Lista el nobmre de todos los usuarios de la base de datos
 * @param {Integer} id 
 * @returns {any[]}
*/
export async function getAllNombresUsuarios(id) {
  
  let rows = null;
  let isBorrado = false;
  
  const db = await initializeDatabase();
  const sqlQuery = 'SELECT id, name FROM users';
  
  try {
    rows = await db.all(sqlQuery);
    
    if (rows.length > 0) {
      console.log(rows);
    } else {
      console.log("No rows about users.");
    }
    
  } catch (err) {
    console.error(err);
  }
  
  return rows;
  
}

/**
 * Comprueba las credenciales del usuario .
 * @param {String} email 
 * @param {String} password 
 * @returns {Integer}
 */
export async function checkLogin(email, password) {
  
  let row = null;
  let id = 0;

  const db = await initializeDatabase();

  const sqlQuery = 'SELECT id FROM users WHERE email = ?';

  try {
    // De esta forma no hay SQL Injection
    const queryPreparada = await db.prepare(sqlQuery, email);

    row = await queryPreparada.all();

    
    if (row) {
      id = row[0].id;
    } else {
      console.log("User not found");
    }

  } catch (err) {
    console.error(err);
    id = 0;
  }

  return id;

}

/**
 * Recupera el nombre  del usuario por el id.
 * @param {Integer} id 
 * @returns {String}
 */
export async function getNameByUserId(id) {
  
  let row = null;
  let name = "";

  const db = await initializeDatabase();

  const sqlQuery = 'SELECT name FROM users WHERE id = ?';

  try {
    // De esta forma no hay SQL Injection
    const queryPreparada = await db.prepare(sqlQuery, id);

    row = await queryPreparada.all();

    
    if (row) {
      name = row[0].name;
    } else {
      console.log("Id not found");
    }

  } catch (err) {
    console.error(err);
    name = ""
  }

  return name;

}