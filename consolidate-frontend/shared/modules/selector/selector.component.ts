import {
  Component,
  OnInit,
  Input,
  Output,
  EventEmitter,
  OnDestroy
} from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { UserSelectionModel, AlertModel } from "shared/models";

import { AlertService } from "shared/services/helpers/alert.service";
// import { EnvService } from "shared/services/helpers/env.service";
import { UserSelectionService } from "shared/services/crud/system/user-selection.service";

import {
  selectionToText,
  optionsToText,
  dateToDatePicker,
  objectDateToTextDate,
  selectorOptionSubtitles,
  selectorLegendSubtitles
} from "shared/functions";

import { AuthService } from "shared/services";
import * as moment from "moment";

@Component({
  selector: "app-selector",
  templateUrl: "./selector.component.html",
  styleUrls: ["./selector.component.scss"]
})
export class SelectorComponent implements OnInit, OnDestroy {
  @Output() userSelectionBack: EventEmitter<any> = new EventEmitter();
  @Output() closeSelector: EventEmitter<any> = new EventEmitter();

  @Input() userSelection: UserSelectionModel;
  @Input() selectorVisibleFields: UserSelectionModel;

  action;

  alertMessage: AlertModel;
  // env;
  error_detected = false;
  error_message;

  selectorForm: FormGroup;

  show_submit_button;
  show_data = false;

  selection;

  model: UserSelectionModel; // Used for field labels
  report_title: string;

  incomingUserSelection: UserSelectionModel;

  // list;
  menuOptions: UserSelectionModel;

  constructor(
    private formBuilder: FormBuilder,
    private userSelectionService: UserSelectionService,
    private alertService: AlertService,
    // private envService: EnvService,
    private authService: AuthService
  ) {
    this.selection = new UserSelectionModel("standard");

    this.menuOptions = new UserSelectionModel("menuOptions");

    this.incomingUserSelection = new UserSelectionModel();

    this.alertMessage = new AlertModel();
    this.show_submit_button = false;
    this.show_data = false;

    this.model = new UserSelectionModel();
  }

  ngOnInit() {
    this.getUserSelectionMenus();
    this.onFillForm(this.userSelection);
  }

  ngOnDestroy() {
    this.closeSelector.emit("redraw");
  }

  onFillForm(currentSelection) {
    if (currentSelection) {
      this.selectorForm = this.formBuilder.group({
        title: [currentSelection.title],
        entity_selection: [currentSelection.entity_selection],
        options: [currentSelection.options],
        legend: [currentSelection.legend],
        login: [currentSelection.login],

        mode: [currentSelection.mode],
        type: [currentSelection.type],

        start_date: [currentSelection.start_date],
        end_date: [currentSelection.end_date],
        start_time: [currentSelection.start_time],
        end_time: [currentSelection.end_time],

        auxiliar: [currentSelection.auxiliar],
        assignation: [currentSelection.assignation],

        client: [currentSelection.client],
        queue: [currentSelection.queue],
        service: [currentSelection.service],
        campaign: [currentSelection.campaign],

        supervisor: [currentSelection.supervisor],
        agent: [currentSelection.agent],
        role: [currentSelection.role],
        schedule: [currentSelection.schedule],

        status: [currentSelection.status],

        last_minutes: [currentSelection.last_minutes],
        interval: [currentSelection.interval],

        groupBy: [currentSelection.groupBy],
        orderBy: [currentSelection.orderBy],
        limitBy: [currentSelection.limitBy]
      });
    }

    this.show_data = true;
  }

  // convenience getter for easy access to form fields
  get f() {
    return this.selectorForm.controls;
  }

  onRechargeForm() {
    // this.selectorForm.patchValue = this.incomingUserSelection;
  }

  onSubmit(currentSelection) {
    this.selection = currentSelection;
    this.userSelectionService.writeUserSelection(currentSelection);
    this.userSelectionBack.emit(currentSelection);
  }

  onChange() {
    this.selectorForm.patchValue({
      options: selectorOptionSubtitles(this.selectorForm.value)
    });
    this.selectorForm.patchValue({
      legend: selectorLegendSubtitles(this.selectorForm.value)
    });

    this.getUserSelectionMenus();
    this.userSelectionBack.emit(this.selectorForm.value);
    this.userSelectionService.writeUserSelection(this.selectorForm.value);
  }

  onNewStartDate() {
    this.selectorForm.patchValue({
      end_date: this.selectorForm.value.start_date
    });

    if (
      objectDateToTextDate(this.selectorForm.value.end_date) ===
      moment().format("YYYY-MM-DD")
    ) {
      this.selectorForm.patchValue({
        mode: { id: 0, name: "Actual" }
      });
    } else {
      this.selectorForm.patchValue({
        mode: { id: 0, name: "Historic" }
      });
    }

    this.userSelection.start_date = this.selectorForm.value.start_date;
    this.userSelection.end_date = this.selectorForm.value.end_date;
    this.userSelectionService.writeUserSelection(this.selectorForm.value);
    this.onChange();
  }

  // Updates selection when new end date is selected
  onNewEndDate() {
    this.userSelection.start_date = this.selectorForm.value.start_date;
    this.userSelection.end_date = this.selectorForm.value.end_date;

    if (
      objectDateToTextDate(this.selectorForm.value.end_date) ===
      moment().format("YYYY-MM-DD")
    ) {
      this.selectorForm.patchValue({
        mode: { id: 0, name: "Actual" }
      });
    } else {
      this.selectorForm.patchValue({
        mode: { id: 0, name: "Historic" }
      });
    }

    this.userSelectionBack.emit(this.selectorForm.value);
    this.userSelectionService.writeUserSelection(this.selectorForm.value);
    this.onChange();
  }

  onInterval() {
    let start_date = dateToDatePicker(moment().format("YYYY-MM-DD"));
    let end_date = dateToDatePicker(moment().format("YYYY-MM-DD"));
    let start_time = { id: 0, name: "00 AM", value: "00:00:00" };
    let end_time = { id: 0, name: "24 PM", value: "24:00:00" };

    this.selectorForm.patchValue({
      start_date: start_date
    });

    this.selectorForm.patchValue({
      end_date: end_date
    });

    this.selectorForm.patchValue({
      start_time: start_time
    });

    this.selectorForm.patchValue({
      end_time: end_time
    });

    this.userSelection.start_date = start_date;
    this.userSelection.end_date = end_date;
    this.userSelection.start_time = start_time;
    this.userSelection.end_time = end_time;

    this.onChange();
  }

  onLastMinutes() {
    this.userSelectionService.writeUserSelection(this.selectorForm.value);

    let mode = [{ id: 0, name: "Actual" }];
    let start_date = dateToDatePicker(moment().format("YYYY-MM-DD"));
    let end_date = dateToDatePicker(moment().format("YYYY-MM-DD"));
    let start_time = { id: 0, name: "00 AM", value: "00:00:00" };
    let end_time = { id: 0, name: "24 PM", value: "24:00:00" };
    let interval = null;

    this.selectorForm.patchValue({
      mode: mode
    });

    this.selectorForm.patchValue({
      interval: interval
    });

    this.selectorForm.patchValue({
      start_date: start_date
    });

    this.selectorForm.patchValue({
      end_date: end_date
    });

    this.selectorForm.patchValue({
      start_time: start_time
    });

    this.selectorForm.patchValue({
      end_time: end_time
    });

    this.userSelection.mode = mode;
    this.userSelection.interval = interval;
    this.userSelection.start_date = start_date;
    this.userSelection.end_date = end_date;
    this.userSelection.start_time = start_time;
    this.userSelection.end_time = end_time;

    if (this.userSelection.last_minutes === null) {
      this.selectorVisibleFields.start_time = false;
      this.selectorVisibleFields.end_time = false;
      this.selectorVisibleFields.interval = false;
    } else {
      this.selectorVisibleFields.start_time = true;
      this.selectorVisibleFields.end_time = true;
      this.selectorVisibleFields.interval = true;
    }
    this.userSelectionService.writeUserSelection(this.selectorForm.value);
  }

  onStatusChange() {
    this.userSelectionService.writeUserSelection(this.selectorForm.value);
    this.onChange();
  }

  // Gets the menu lists from the server this.menuOptions
  getUserSelectionMenus() {
    this.selection = this.userSelectionService.readUserSelection();
    this.userSelectionService
      .getUserSelectionMenus(this.selection)
      .subscribe(data => {
        this.menuOptions = data;
        error => {
          this.onError(error);
        };
      });
  }

  // ERROR: Handles error on queries
  onError(error?) {
    this.alertService.error(error.status);
    this.alertMessage.alertTitle = "Error del servidor";
    this.alertMessage.alertText = error.statusText;
    this.alertMessage.alertShow = true;
    this.alertMessage.alertClass =
      "alert alert-danger alert-dismissible fade show";
  }
}
