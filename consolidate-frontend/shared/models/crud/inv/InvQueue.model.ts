import { PeopleJsonModel } from "../general/People.model";
import { OperationJsonModel } from "../general/Operation.model";
import { TimeJsonModel } from "../general/Time.model";
import { SystemJsonModel } from "../general/System.model";

export class InvQueueModel {
  inv_queue_id: number;
  inv_queue_status: string;
  inv_queue_chk: number;
  inv_queue_name: string;
  inv_queue_shortname: string;
  inv_queue_number: string;

  inv_queue_scale_json: string;
  inv_queue_client_json: string;
  inv_queue_service_json: string;

  __JSON__: any;
  inv_queue_people_json: PeopleJsonModel;
  inv_queue_operation_json: OperationJsonModel;
  inv_queue_time_json: TimeJsonModel;

  constructor() {
    this.inv_queue_id = 0;
    this.inv_queue_status = "A";
    this.inv_queue_chk = 1;
    this.inv_queue_name = null;
    this.inv_queue_shortname = null;
    this.inv_queue_number = null;
    this.inv_queue_scale_json = null;
    this.inv_queue_client_json = null;
    this.inv_queue_service_json = "[]";

    this.__JSON__ = "[]";
    this.inv_queue_people_json = new PeopleJsonModel();
    this.inv_queue_operation_json = new OperationJsonModel();
    this.inv_queue_time_json = new TimeJsonModel();
  }

  public fieldList?() {
    return [
      { field_name: "inv_queue_id", name: "id", text: "Id" },
      { field_name: "inv_queue_status", name: "estado", text: "Estado" },
      { field_name: "inv_queue_chk", name: "chk", text: "Chk" },
      {
        field_name: "inv_queue_name",
        name: "nombre_cola",
        text: "Nombre cola"
      },
      {
        field_name: "inv_queue_shortname",
        name: "nombre_cort_cola",
        text: "Nombre corto cola"
      },

      { field_name: "inv_queue_number", name: "numero", text: "Numero" },

      {
        field_name: "inv_queue_scale_json",
        name: "escala",
        text: "Escala"
      },

      {
        field_name: "inv_queue_client_json",
        name: "cliente",
        text: "Cliente"
      },

      {
        field_name: "inv_queue_service_json",
        name: "servicio",
        text: "Servicio"
      },
      {
        field_name: "__JSON__",
        name: "separador_json",
        text: "JSON"
      },
      {
        field_name: "inv_queue_operation_json",
        name: "operacion_json",
        text: "Operación"
      },
      {
        field_name: "inv_queue_people_json",
        name: "gente_json",
        text: "Gente"
      },
      {
        field_name: "inv_queue_time_json",
        name: "tiempo_json",
        text: "Tiempo"
      }
    ];
  }

  public fieldInfo?(field_name) {
    const register = this.fieldList();

    return register.filter(x => {
      return x.field_name === field_name;
    })[0];
  }
}
