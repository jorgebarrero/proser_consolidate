import * as pool from "../../../connectors/pool";
import { removeRowDataPacket } from "../../helpers/mysql-helper.js";
import moment from "moment";

// Read actual records
async function ereaseTestData() {
  let result = null;

  let querySQL = `
  DELETE FROM ConsolidateCallEntry;
  `;

  // return new Promise((resolve, reject) => {
  //   resolve(pool.destiny.query(querySQL));
  //   reject(`Error`);
  // });

  try {
    result = await pool.consolidate.query(querySQL);
  } catch (error) {
    result = { error: error };
  }

  return result;
}

async function erease() {
  console.clear();
  console.log("***********  BORRANDO TABLAS DE DESTINO ***********");
  await ereaseTestData();
  console.log("Todo borrado");
  process.exit(0);
}

erease();
