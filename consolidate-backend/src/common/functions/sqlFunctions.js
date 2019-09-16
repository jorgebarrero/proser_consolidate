import { objectDateToTextDate, valueFromObject } from "./dateFunctions";

import moment from "moment";

export function dateAndTimeSqlQuery(
  userSelection,
  datetime_init_field_name,
  datetime_end_field_name
) {
  /*
   * returns sql where conditions related to date, time and last minutes
   */

  if (!datetime_end_field_name) {
    datetime_end_field_name = datetime_init_field_name;
  }

  let result = "";
  // convert dates to string
  let start_date = objectDateToTextDate(userSelection.start_date);
  let end_date = objectDateToTextDate(userSelection.end_date);
  // convert times to string
  let start_time = valueFromObject(userSelection.start_time, "00:00:00");
  let end_time = valueFromObject(userSelection.end_time, "24:00:00");

  if (userSelection.last_minutes) {
    let hms = userSelection.last_minutes.value;
    let a = hms.split(":");
    let minutes = +a[0] * 60 + +a[1];

    let start_time_last_minutes = moment()
      .subtract(minutes, "minutes")
      .format("HH:mm:ss");
    let end_time_last_minutes = moment().format("HH:mm:ss");
    start_time = start_time_last_minutes;
    end_time = end_time_last_minutes;

  }
  // create sql queries
  let date = `
  AND (
    DATE(${datetime_init_field_name}) BETWEEN '${start_date}' AND '${end_date}'
    OR
    DATE(${datetime_end_field_name}) BETWEEN '${start_date}' AND '${end_date}'
  ) `;
  let time = `AND TIME_TO_SEC(TIME(${datetime_init_field_name})) >= TIME_TO_SEC('${start_time}')
  AND  TIME_TO_SEC(TIME(${datetime_init_field_name})) < TIME_TO_SEC('${end_time}')`;

  result = date + "\n" + time + "\n";

  return result;
}

/******************************************************************** */

export function arrayToSqlQuery(data, field) {
  /*
   * extracts infro from json fields, returns if record is true or false
   * applies to only one type od data in json field
   */
  let result = data;
  let resultTemp;
  if (data && Array.isArray(data)) {
    resultTemp = data
      .map(x => {
        return field != undefined ? `${field} = ` + x.id : 1;
      })
      .join(" OR ");
    data.length > 0 ? (data = "AND (" + resultTemp + ")") : "";
    result = data;
  } else {
    result = "";
  }

  return result;
}

/******************************************************************** */

export function arrayToSqlQueryOr(data, field) {
  /*
   * extracts infro from json fields, returns if record is true or false
   * applies to only one type od data in json field
   */
  let result = data;
  let resultTemp;
  if (data && Array.isArray(data)) {
    resultTemp = data
      .map(x => {
        return field != undefined ? `${field} = ` + x.id : 1;
      })
      .join(" OR ");
    data.length > 0 ? (data = "OR (" + resultTemp + ")") : "";
    result = data;
  } else {
    result = "";
  }

  return result;
}

/******************************************************************** */

export function arrayToJsonSqlQuery(data, field, property) {
  /*
   * extracts infro from json fields, returns if record is true or false
   * can handle several properties in the same json field
   * - property is optional
   */
  let result = data;

  let resultTemp;
  if (data && Array.isArray(data)) {
    resultTemp = data
      .map(x => {
        return field != undefined
          ? `JSON_CONTAINS(JSON_EXTRACT(${field}, '$.${property}[*].id'), ` +
              x.id +
              `)`
          : " ";
      })
      .join(" OR ");
    data.length > 0 ? (data = "AND (" + resultTemp + ")") : "";
    result = data;
  }

  return result;
}

/************************************************************** */

export function sqlIntervalSqlQuery(userSelection, datetime_field_name) {
  /*
   * Inserts interval fields in the select statment when interval applies
   */
  let result = "1";

  let interval =
    userSelection.interval !== null ? userSelection.interval.minute : "";

  if (userSelection && datetime_field_name && interval) {
    return `
    (ROUND(ROUND(TIME_TO_SEC(TIME(${datetime_field_name})) /60, 0)/${interval}, 0) - 1) AS interval_init
    ,(ROUND(ROUND(TIME_TO_SEC(TIME(${datetime_field_name})) /60, 0)/${interval}, 0)) AS interval_finish

    ,SEC_TO_TIME((ROUND(ROUND(TIME_TO_SEC(TIME(${datetime_field_name})) /60, 0)/${interval}, 0) - 1) *${interval} *60) AS interval_start
    ,SEC_TO_TIME((ROUND(ROUND(TIME_TO_SEC(TIME(${datetime_field_name})) /60, 0)/${interval}, 0)) *${interval} *60) AS interval_end
    `;
  }

  return result;
}

/**************************************************** */

export function sqlIntervalGroupSqlQuery(userSelection) {
  /*
   * Send the group string if interval applies
   */
  let result = "";

  let interval_text =
    userSelection.interval !== null ? "GROUP BY interval_init" : "";

  result = interval_text;

  return result;
}
