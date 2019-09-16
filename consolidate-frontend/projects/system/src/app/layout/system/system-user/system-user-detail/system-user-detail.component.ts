import { Component, OnInit, Input, Output, EventEmitter } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import {
  UserbaseModel,
  ActionConfig,
  AlertModel,
  PeopleJsonModel,
  OperationJsonModel,
  TimeJsonModel
} from "shared/models";

import { AlertService, EnvService } from "shared/services/";
import { UserbaseService } from "shared/services/";
import {
  onJsonParseToObject,
  onJsonParseToArray,
  onJsonDoubleParse
} from "shared/functions";

@Component({
  selector: "app-system-system-user-detail",
  templateUrl: "./system-user-detail.component.html",
  styleUrls: ["./system-user-detail.component.scss"]
})
export class SystemUserDetailComponent implements OnInit {
  @Output() editAnswer: EventEmitter<any> = new EventEmitter();
  @Output() sendAnswer: EventEmitter<any> = new EventEmitter();

  @Input() action: ActionConfig;

  alertMessage: AlertModel;
  env;
  error_detected = false;
  error_message;

  registerForm: FormGroup;

  show_submit_button;
  show_data;

  selection;

  model: UserbaseModel;
  report_title: string;

  typeList;

  supervisorList;
  roleList;
  scheduleList;

  clientList;
  queueList;
  serviceList;
  camapaignList;

  constructor(
    private formBuilder: FormBuilder,
    private userbaseService: UserbaseService,
    private alertService: AlertService,
    private envService: EnvService
  ) {
    this.alertMessage = new AlertModel();
    this.show_submit_button = false;
    this.show_data = true;
    this.model = new UserbaseModel();

    this.typeList = [
      { id: 1, name: "admin", value: 10 },
      { id: 2, name: "system", value: 7 },
      { id: 3, name: "config", value: 5 },
      { id: 3, name: "user", value: 0 }
    ];
  }

  ngOnInit() {
    this.onFillForm();
    console.error("this.selection", this.selection);
  }

  onFillForm() {
    this.selection = this.action.temp;

    /******** EDIT RECORD ********* */
    if (
      this.action.action === "editRecord" ||
      this.action.action === "showRecord"
    ) {
      let edit_mode = true;
    }

    /******** REGISTER FORM ********* */

    this.registerForm = this.formBuilder.group({
      id: [this.selection.id, Validators.required],
      firstname: [this.selection.firstname, Validators.required],
      lastname: [this.selection.lastname, Validators.required],
      profile: [this.selection.profile, Validators.required],
      realm: [this.selection.realm, Validators.required],
      username: [this.selection.username, Validators.required],
      password: [this.selection.password, Validators.required],
      email: [this.selection.email, Validators.required],
      emailVerified: [this.selection.emailVerified, Validators.required],
      verificationToken: [
        this.selection.verificationToken,
        Validators.required
      ],
      memberId: [this.selection.memberId, Validators.required],
      user_legal_id: [this.selection.user_legal_id, Validators.required],
      user_internal_id: [this.selection.user_internal_id, Validators.required],
      user_photo_path: [this.selection.user_photo_path, Validators.required]
    });

    console.error("registerForm", this.registerForm.value);
  }

  // convenience getter for easy access to form fields
  get f() {
    return this.registerForm.controls;
  }

  onAnswer(event) {
    this.action = event;
    this.selection = this.action.temp;
    this.action.action === "showRecord" ? this.onShowDetail() : "";
    this.action.action === "editRecord" ? this.onEditRecord() : "";
  }

  // CREATE RECORD
  createRecord(query: UserbaseModel) {
    this.userbaseService.postRecord(query).subscribe(
      data => {
        alert(
          `Registro agregado satisfactoriamente, ${data.id}, ${data.username}`
        );
        this.action.temp = [data];
        this.action.action = "afterCreatedRecord";
        this.editAnswer.emit(this.action);
      },
      error => {
        console.error("Error", error);
        this.show_data = false;
        this.onError(error);
      }
    );
  }

  // CREATE RECORD
  editRecord(query: UserbaseModel) {
    this.userbaseService.putRecord(query).subscribe(
      data => {
        this.selection = data;
        this.action.temp = this.selection;
        alert(
          `Registro modificado satisfactoriamente, ${this.action.temp.id}, ${this.action.temp.inv_client_name}`
        );
        this.action.action = "selectedRecord";
        this.show_data = true;
        this.editAnswer.emit(this.action);
      },
      error => {
        console.error("Error", error);
        this.show_data = false;
        this.onError(error);
      }
    );
  }

  // DELETE RECORD
  deleteRecord(query: UserbaseModel) {
    let id = this.action.temp.id;

    this.userbaseService.deleteRecord(id).subscribe(
      data => {
        this.selection = data;
        this.action.temp = this.selection;
        this.selection = new UserbaseModel();
        this.onFillForm();
        alert(`Registro eliminado satisfactoriamente`);
        this.show_data = true;
        this.editAnswer.emit(this.action);
      },
      error => {
        console.error("Error", error);
        this.show_data = false;
        this.onError(error);
      }
    );
  }

  onDelete() {
    this.action.action = "delete";
    this.deleteRecord(this.action.temp);
  }

  onDeactivate() {
    this.selection = this.action.temp;
    this.selection.inv_agent_status = "I";
    this.registerForm.value.inv_agent_status = "I";
    this.show_submit_button = true;
  }

  onReactivate() {
    this.selection = this.action.temp;
    this.selection.inv_agent_status = "A";
    this.registerForm.value.inv_agent_status = "A";
    console.error("onReactivate", this.registerForm.value);
    this.show_submit_button = true;
  }

  onReset() {
    this.selection = new UserbaseModel();
    this.action.temp = this.selection;
    this.onFillForm();
  }

  afterCreatedRecord(register) {}

  onShowDetail() {
    this.action.action = "showRecord";
  }

  onEditRecord() {
    this.action.action = "editRecord";
    this.selection = this.action.temp;
    this.onFillForm();
  }

  afterEditedRecord(register) {
    this.action.action = "afterEditedRecord";
    this.action.temp = [register];
    this.editAnswer.emit(this.action);
  }

  onCancel() {
    this.action = { action: "cancel", temp: "" };
    this.editAnswer.emit(this.action);
  }

  onAction() {
    this.action = { action: "edit_box", temp: "" };
    this.editAnswer.emit(this.action);
  }

  // ERROR
  onError(error?) {
    this.alertService.error(error.status);
    this.alertMessage.alertTitle = "Error del servidor";
    this.alertMessage.alertText = error.statusText;
    this.alertMessage.alertShow = true;
    this.alertMessage.alertClass =
      "alert alert-danger alert-dismissible fade show";
  }

  sendTest() {
    this.action.action = "test";
    this.action.temp = [
      {
        inv_agent_id: 2,
        inv_agent_name: "Supervisor 008",
        inv_agent_status: "A"
      }
    ];

    this.editAnswer.emit(this.action);
  }

  onSubmit(register) {
    if (this.action.action === "newRecord") {
      this.createRecord(register);
    }

    if (this.action.action === "editRecord") {
      this.selection = register;
      this.editRecord(register);
      this.afterEditedRecord(register);
    }

    if (this.action.action === "deleteRecord") {
      this.selection = register;
      this.deleteRecord(register);
      // this.action.temp = register;
      this.editAnswer.emit(this.action);
    }

    if (this.action.action === "showRecord") {
      this.selection = register;
      this.action.temp = register;
      this.editAnswer.emit(this.action);
    }
  }
}
