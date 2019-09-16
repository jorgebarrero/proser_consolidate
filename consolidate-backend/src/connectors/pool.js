// console.log('No value for FOO yet:', process.env.FOO);

if (process.env.NODE_ENV !== `development`) {
  require(`dotenv`).config();
}

/***************************** */
const util = require(`util`);
const mysql = require(`mysql`);

// DESTINY
/************************************************************* */
// consolidate
const consolidate = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: process.env.REPORTS_DB_HOST,
  user: process.env.REPORTS_DB_USER,
  password: process.env.REPORTS_DB_PASSWORD,
  database: process.env.REPORTS_PROSER_DB,
  multipleStatements: true
});

// ORIGIN
/************************************************************* */
// call_amd
const call_amd = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: "172.20.0.234",
  user: process.env.ORIGIN_DB_USER,
  password: process.env.ORIGIN_DB_PASSWORD,
  database: process.env.ORIGIN_CALLCENTER_DB,
  multipleStatements: true
});

// call_emergencia
const call_emergencia = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: "172.20.0.235",
  user: process.env.ORIGIN_DB_USER,
  password: process.env.ORIGIN_DB_PASSWORD,
  database: process.env.ORIGIN_CALLCENTER_DB,
  multipleStatements: true
});

// call_aps
const call_aps = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: "172.20.0.239",
  user: process.env.ORIGIN_DB_USER,
  password: process.env.ORIGIN_DB_PASSWORD,
  database: process.env.ORIGIN_CALLCENTER_DB,
  multipleStatements: true
});

// reports_amd
const reports_amd = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: "172.20.1.229",
  user: process.env.ORIGIN_DB_USER,
  password: process.env.ORIGIN_DB_PASSWORD,
  database: process.env.ORIGIN_CALLCENTER_DB,
  multipleStatements: true
});

// reports_emergencia
const reports_emergencia = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: "172.20.1.46",
  user: process.env.ORIGIN_DB_USER,
  password: process.env.ORIGIN_DB_PASSWORD,
  database: process.env.ORIGIN_CALLCENTER_DB,
  multipleStatements: true
});

// reports_aps
const reports_aps = mysql.createPool({
  connectionLimit: 1000,
  connectTimeout: 60 * 60 * 1000,
  acquireTimeout: 60 * 60 * 1000,
  timeout: 60 * 60 * 1000,
  host: "172.20.1.239",
  user: process.env.ORIGIN_DB_USER,
  password: process.env.ORIGIN_DB_PASSWORD,
  database: process.env.ORIGIN_CALLCENTER_DB,
  multipleStatements: true
});

// PING DESTINY
// Ping database to check for common exception errors.
/************************************************************* */
// consolidate
consolidate.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// PING ORIGIN
// Ping database to check for common exception errors.
/************************************************************* */
// call_amd
call_amd.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// call_emergencia
call_emergencia.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// call_aps
call_aps.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// reports_amd
reports_amd.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// reports_emergencia
reports_emergencia.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// reports_aps
reports_aps.getConnection((err, connection) => {
  if (err) {
    if (err.code === `PROTOCOL_CONNECTION_LOST`) {
      console.error(`Database connection was closed.`);
      return err.code;
    }
    if (err.code === `ER_CON_COUNT_ERROR`) {
      console.error(`Database has too many connections.`);
      return err.code;
    }
    if (err.code === `ECONNREFUSED`) {
      console.error(`Database connection was refused.`);
      return err.code;
    }
  }

  return;
});

// PROMISIFY DESTINY
// Promisify for Node.js async/await.
/************************************************************* */
consolidate.query = util.promisify(consolidate.query);

// PROMISIFY DESTINY
// Promisify for Node.js async/await.
/************************************************************* */
call_amd.query = util.promisify(call_amd.query);
call_emergencia.query = util.promisify(call_emergencia.query);
call_aps.query = util.promisify(call_aps.query);
reports_amd.query = util.promisify(reports_amd.query);
reports_emergencia.query = util.promisify(reports_emergencia.query);
reports_aps.query = util.promisify(reports_aps.query);

// EXPORT
/************************************************************* */
module.exports = {
  consolidate,
  call_amd,
  call_emergencia,
  call_aps,
  reports_amd,
  reports_emergencia,
  reports_aps
};
