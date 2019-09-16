//  Angular

import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { isNullOrUndefined } from "util";

import "rxjs/operators";
import { Observable } from "rxjs";

import { EnvService } from "../../helpers/env.service";

@Injectable({
  providedIn: "root"
})
export class ReportsOperationService {
  constructor(private http: HttpClient, private env: EnvService) {}

  headers: HttpHeaders = new HttpHeaders({
    "Content-Type": "application/json"
  });

  getDetailOperationList(userSelection): Observable<any> {
    // const query = JSON.stringify(userSelection);

    const accessToken = localStorage.getItem("accessToken");

    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvReports/operationDetailOperationReport?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, {
      headers: this.headers
    });
    // console.warn('Detalle de llamadas diarias ......' , url_api, userSelection);
    // console.log(res);
    return res;
  }

  getDetailOperationRecord(userSelection): Observable<any> {
    // const query = JSON.stringify(userSelection);

    const accessToken = localStorage.getItem("accessToken");

    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvReports/operationDetailOperationReport?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, {
      headers: this.headers
    });
    console.warn("Detalle del audit ......", url_api, userSelection);
    console.log(res);
    return res;
  }

  
}
