//  Angular

import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { isNullOrUndefined } from "util";

import "rxjs/operators";
import { Observable, of } from "rxjs";

import { EnvService } from "../helpers/env.service";

import { UserSelectionModel } from "shared/models/";

@Injectable({
  providedIn: "root"
})
export class DisplayInboundService {
  constructor(private http: HttpClient, private env: EnvService) {}

  headers: HttpHeaders = new HttpHeaders({
    "Content-Type": "application/json"
  });

  // getIboundIndicators
  displayInboundIndicators(userSelection): Observable<any> {
    const query = JSON.stringify(userSelection);
    const accessToken = localStorage.getItem("accessToken");
    const url_api = `${this.env.loopbackApiUrl}/api/InvDisplays/displayInboundIndicators?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }
}
