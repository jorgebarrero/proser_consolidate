import { Component, OnInit } from "@angular/core";

import { AlertModel } from "shared/models";
import { AlertService } from "shared/services/helpers/alert.service";
import { SystemService } from "shared/services/crud/system/system.service";
import { EnvService } from "shared/services/helpers/env.service";


@Component({
  selector: "app-system-pm2",
  templateUrl: "./system-pm2.component.html",
  styleUrls: ["./system-pm2.component.scss"]
})
export class SystemPm2Component implements OnInit {
  alertMessage: AlertModel;
  message;
  env;

  constructor(
    private systemService: SystemService,
    private alertService: AlertService,
    private envService: EnvService
  ) {
    this.env = this.envService;
    this.alertMessage = new AlertModel();
    this.message = {
      response: "Espacio para los mensajes del sistema"
    };
  }

  ngOnInit() {}

  onKill() {
    let item = {
      command: "kill",
      id: 0
    };
    this.systemService.executePm2(item).subscribe(
      data => {
        this.message = data.response;
      },

      error => {
        this.onError(error);
      }
    );
  }

  onResurrect() {
    let item = {
      command: "resurrect",
      id: 0
    };
    this.systemService.executePm2(item).subscribe(
      data => {
        this.message = data.response;
      },

      error => {
        this.onError(error);
      }
    );
  }

  onRestart() {
    this.onKill();
    this.onResurrect();
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
}
