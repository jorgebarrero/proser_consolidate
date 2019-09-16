import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable } from "rxjs";
import { map, catchError } from "rxjs/operators";

import { isNullOrUndefined } from "util";

import { UserInterface } from "../../models/pages/user-interface";

// import { UserSelectionModel } from '../../models/filter/UserSelectionModel';

import { EnvService } from "../helpers/env.service";

import { Router } from "@angular/router";
import { UserSelectionModel } from "shared/models";

@Injectable({
  providedIn: "root"
})
export class AuthService {
  constructor(
    private http: HttpClient,
    private env: EnvService,
    private router: Router
  ) {}

  headers: HttpHeaders = new HttpHeaders({
    "Content-Type": "application/json"
  });

  registerUser(
    firstname: string,
    lastname: string,
    username: string,
    email: string,
    password: string,
    user_legal_id: string,
    user_internal_id: string,
    user_photo_path: string
  ) {
    const url_api = `${this.env.loopbackApiUrl}/api/userbases`;

    return this.http
      .post<UserInterface>(
        url_api,
        {
          firstname,
          lastname,
          username,
          email,
          password,
          user_legal_id,
          user_internal_id,
          user_photo_path
        },

        { headers: this.headers }
      )
      .pipe(map(data => data));
  }

  loginUser(username: string, password: string) {
    const url_api = `${this.env.loopbackApiUrl}/api/userbases/login?include=user`;
    return this.http
      .post<UserInterface>(
        url_api,
        { username, password },
        { headers: this.headers }
      )
      .pipe(map(data => data));
  }

  getAllUsers() {
    const accessToken = localStorage.getItem("accessToken");
    const url_api = `${this.env.loopbackApiUrl}/api/userbases?access_token=${accessToken}`;
    console.log("getAllUsers", url_api);

    return this.http
      .get<UserInterface>(url_api, { headers: this.headers })
      .pipe(map(data => data));
  }

  setUser(user: UserInterface) {
    const userString = JSON.stringify(user);
    localStorage.setItem("currentUser", userString);
  }

  setToken(token) {
    localStorage.setItem("accessToken", token);
    this.setProserStore();
  }

  setProserStore() {
    const proser_store = {
      userSelection: new UserSelectionModel("standard")
    };
    localStorage.setItem("proser_store", JSON.stringify(proser_store));
  }

  getToken() {
    return localStorage.getItem("accessToken");
  }

  getCurrentUser(): UserInterface {
    const userString = localStorage.getItem("currentUser");
    if (!isNullOrUndefined(userString)) {
      const user: UserInterface = JSON.parse(userString);
      return user;
    } else {
      return null;
    }
  }

  getCurrentUserValue() {
    let result = 0
    const userString = localStorage.getItem("currentUser");
    if (!isNullOrUndefined(userString)) {
      const user: UserInterface = JSON.parse(userString);
      user.profile === 'admin'? result = 10: '';
      user.profile === 'system'? result = 7: '';
      user.profile === 'config'? result = 5: '';
      user.profile === 'user'? result = 0: '';
      return result;
    } else {
      return 0;
    }
  }

  logoutUser() {
    const accessToken = localStorage.getItem("accessToken");
    const url_api = `${this.env.loopbackApiUrl}/api/userbases/logout?access_token=${accessToken}`;
    this.router.navigate(["/login"]);
    localStorage.clear();
    return this.http.post<UserInterface>(url_api, { headers: this.headers });
  }

  isAuthenticated(): boolean {
    let result = false;
    const accessToken = localStorage.getItem("accessToken");
    if (accessToken) {
      result = true;
    }

    return result;
  }
}
