import * as pool from "../../../../connectors/pool";
import { removeRowDataPacket } from "../../../helpers/mysql-helper.js";
import { writeDestiny } from "../extract_functions";
import moment from "moment";

const destinyTable = "ConsolidateCallEntry";
const destinyDateField = "callentry_datetime_entry_queue";
const destinyNumberField = "callentry_id";

const originTable = "call_center.call_entry";
const originDateField = "datetime_entry_queue";
const originNumberField = "id";

const colors = require("colors");
const chalk = require("chalk");

let first_pass = true;
let incoming_date = process.argv[2];

/******************* Runing actual program -- exec*/
async function extractCallEntry(call) {
  console.log(
    `/*************/ Extracting ${destinyTable} ${call}/*************/ `
  );

  let server_alias;
  let server_ip;
  let server_database;
  let server_prefix;
  let server_service;

  if (call === "call_amd") {
    server_alias = "call_amd";
    server_ip = "172.20.0.234";
    server_database = "proser_hmo_amd";
    server_prefix = 100000000;
    server_service = "amd";
  }

  if (call === "call_emergencia") {
    server_alias = "call_emergencia";
    server_ip = "172.20.0.235";
    server_database = "proser_hmo_emergencia";
    server_prefix = 200000000;
    server_service = "emergencia";
  }

  if (call === "call_aps") {
    server_alias = "call_aps";
    server_ip = "172.20.0.239";
    server_database = "proser_hmo_aps";
    server_prefix = 300000000;
    server_service = "aps";
  }

  let result = await readOrigin(call).catch(err =>
    console.log(`${destinyTable} caught it - readOrigin`, err)
  );

  if (result) {
    let extendedResult = result
      .map(x => {
        x.callentry_consolidate_id = x.id + server_prefix;
        x.callentry_server_ip = server_ip;
        x.callentry_database = server_database;
        x.callentry_alias = server_alias;
        x.callentry_prefix_num = server_prefix;

        x.callentry_id = x.id;
        x.callentry_agent_id = x.id_agent;
        x.callentry_queue_id = x.id_queue_call_entry;
        x.callentry_contact_id = x.id_contact;
        x.callentry_callerid = x.callerid;
        x.callentry_datetime_init = x.datetime_init;
        x.callentry_datetime_end = x.datetime_end;
        x.callentry_duration_sec = x.duration;
        x.callentry_status = x.status;
        x.callentry_transfer = x.transfer;
        x.callentry_datetime_entry_queue = x.datetime_entry_queue;
        x.callentry_duration_sec_wait = x.duration_wait;
        x.callentry_uniqueid = x.uniqueid;
        x.callentry_campaign_id = x.id_campaign;
        x.callentry_trunk = x.trunk;

        x.callentry_agent_name = x.name;
        x.callentry_queue_number = x.queue_number;

        x.callentry_service_name =
          x.callentry_queue_number === "4001" ? "farmacia" : server_service;
        x.callentry_type === 
        x.callentry_queue_number.substring(0, 1) === "9" ? "automatic' : 'inbound";

        return x;
      })
      .map(y => {
        delete y.id;
        delete y.id_agent;
        delete y.id_queue_call_entry;
        delete y.id_contact;
        delete y.callerid;
        delete y.datetime_init;
        delete y.datetime_end;
        delete y.duration;
        delete y.status;
        delete y.transfer;
        delete y.datetime_entry_queue;
        delete y.duration_wait;
        delete y.uniqueid;
        delete y.id_campaign;
        delete y.trunk;

        delete y.id;
        delete y.type;
        delete y.number;
        delete y.name;
        delete y.password;
        delete y.estatus;
        delete y.eccp_password;

        delete y.queue_number;

        return y;
      });

    let validation = extendedResult[0] ? true : false;

    if (validation) {
      try {
        let written = await writeDestiny(extendedResult, destinyTable).catch(
          err => console.log("extractCallEntry caught it - writeDestiny", err)
        );
        return `extractCallEntry end ${call}`;
      } catch (e) {
        console.log("e", e);
        return e;
      }
    } else {
      console.log(`********************************************`);
      console.log(`El resultado está vacio en ${originTable}`);
    }
  } else {
    console.log(`********************************************`);
    console.log(`No hay registros nuevos por actualizar en ${destinyTable}`);
  }

  return `extractCallEntry end ${call}`;
}

/************************************************************************ */

async function load() {
  console.log(
    chalk.hex("#E5E510")(`/*************/ BEGIN Extracting /*************/`)
  );

  console.log(await extractCallEntry("call_amd"));
  console.log(await extractCallEntry("call_aps"));
  console.log(await extractCallEntry("call_emergencia"));

  console.log(
    chalk.hex("#E5E510")(`/*************/ END Extracting /*************/`)
  );
}

load();

/************************************************************************ */
// Read actual records
async function readOrigin(call) {
  let result;
  let querySQL = `
  SELECT
  CALL_ENTRY.id as id
, id_agent
, id_queue_call_entry
, id_contact, callerid
, datetime_init
, datetime_end
, duration
, status
, transfer
, datetime_entry_queue
, duration_wait
, uniqueid
, id_campaign
, trunk

, AGENT.name as name
  , QUEUE.queue as queue_number
FROM
call_center.call_entry as CALL_ENTRY

LEFT OUTER JOIN call_center.agent as AGENT
ON CALL_ENTRY.id_agent = AGENT.id


LEFT OUTER JOIN call_center.queue_call_entry as QUEUE
ON  CALL_ENTRY.id_queue_call_entry = QUEUE.id

WHERE

YEAR(datetime_entry_queue) = '2019'

-- datetime_entry_queue BETWEEN '2018-12-01' AND '2019-01-31'

  `;

  try {
    call === "call_amd" ? (result = await pool.call_amd.query(querySQL)) : "";
    call === "call_emergencia"
      ? (result = await pool.call_emergencia.query(querySQL))
      : "";
    call === "call_aps" ? (result = await pool.call_aps.query(querySQL)) : "";
  } catch (error) {
    result = { error: error };
  }

  return result;
}
/************************************************************************ */

module.exports = {
  extractCallEntry
};
