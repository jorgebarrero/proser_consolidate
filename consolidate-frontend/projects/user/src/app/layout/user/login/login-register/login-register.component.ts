import { Component, OnInit } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";

import { NgbModal, ModalDismissReasons } from "@ng-bootstrap/ng-bootstrap";

// import custom validator to validate that password and confirm password fields match
import { MustMatch } from "shared/functions";

import { AuthService } from "shared/services/helpers/auth.service";
import { AlertService } from "shared/services/helpers/alert.service";

import { UserInterface } from "shared/models/pages/user-interface";

import { Router } from "@angular/router";
import { AlertModel } from "shared/models/helpers/Alert";

@Component({
  selector: "app-login-register",
  templateUrl: "./login-register.component.html",
  styleUrls: ["./login-register.component.scss"]
})
export class LoginRegisterComponent implements OnInit {
  constructor(
    private formBuilder: FormBuilder,
    private authService: AuthService,
    private alertService: AlertService,
    private modalService: NgbModal,
    private router: Router
  ) {}

  registerForm: FormGroup;
  submitted = false;
  alertMessage = new AlertModel();

  user: UserInterface = {
    username: "",
    password: "",
    firstname: "",
    lastname: "",
    profile: "",
    user_legal_id: "",
    user_internal_id: "",
    user_photo_path: ""
  };

  closeResult: string;

  ngOnInit() {
    // console.error("alertMessage", this.alertMessage);

    this.registerForm = this.formBuilder.group(
      {
        firstname: ["", Validators.required],
        lastname: ["", Validators.required],
        user_legal_id: [
          "",
          [Validators.required, Validators.pattern("^[0-9]*$")]
        ],
        user_internal_id: [""],
        username: ["", [Validators.required, Validators.minLength(6)]],
        email: ["", [Validators.required, Validators.email]],
        password: ["", [Validators.required, Validators.minLength(6)]],
        confirmPassword: ["", Validators.required]
      },
      {
        validator: MustMatch("password", "confirmPassword")
      }
    );
  }

  onSubmit() {}

  // convenience getter for easy access to form fields
  get f() {
    return this.registerForm.controls;
  }

  onRegister(content) {
    this.alertMessage = new AlertModel();

    this.submitted = true;

    // stop here if form is invalid
    if (this.registerForm.invalid) {
      return;
    }

    const user = this.registerForm.value;
    console.error("TRAIDO COMO VALORES", this.registerForm.value);

    this.authService
      .registerUser(
        user.firstname,
        user.lastname,
        user.username,
        user.email,
        user.password,
        user.user_legal_id,
        user.user_internal_id,
        user.user_photo_path
      )
      .subscribe(
        registeredUser => {
          console.error("registeredUser", registeredUser);
          this.registerForm.reset();

          this.authService.setUser(registeredUser);
          const token = user.id;
          this.authService.setToken(token);
          this.router.navigate(["/login"]);
        },
        error => {
          console.error("Error", error, error.status);
          this.alertService.error(error.status);
          this.alertMessage.alertTitle = "Error del servidor";
          this.alertMessage.alertText = error.statusText;
          this.alertMessage.alertShow = true;
          this.alertMessage.alertClass =
            "alert alert-danger alert-dismissible fade show";
        }
      );

    // this.authService.setUser(registeredUser);
    // const token = user.id;
    // this.authService.setToken(token);
    // this.router.navigate(['/login']);
    // )

    // alert('SUCCESS!! :-)\n\n' + JSON.stringify(user));
  }

  open(content) {
    this.modalService
      .open(content, { ariaLabelledBy: "modal-basic-title" })
      .result.then(
        result => {
          this.closeResult = `Closed with: ${result}`;
        },
        reason => {
          this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
        }
      );
  }

  private getDismissReason(reason: any): string {
    if (reason === ModalDismissReasons.ESC) {
      return "by pressing ESC";
    } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
      return "by clicking on a backdrop";
    } else {
      return `with: ${reason}`;
    }
  }

  onResetForm() {
    this.alertMessage = new AlertModel();
    this.submitted = false;
    this.registerForm.reset();
  }
}
