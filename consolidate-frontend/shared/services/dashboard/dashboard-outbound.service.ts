//  Angular

import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { isNullOrUndefined } from 'util';

import 'rxjs/operators';
import { Observable, of } from 'rxjs';




import { EnvService } from '../helpers/env.service';

import { UserSelectionModel } from 'shared/models';

@Injectable({
  providedIn: 'root'
})
export class DashboardOutboundService {

  

  constructor(private http: HttpClient, private env: EnvService) {}

  headers: HttpHeaders = new HttpHeaders({
    'Content-Type': 'application/json'
  });

    // getMainDashboardItems
    outboundIndicators(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/outboundIndicators?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }

    // getMainDashboardItems
    inboundIndicatorsInterval(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundIndicatorsInterval?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }
  
    inboundReceivedList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundReceivedList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }
  
    inboundAttendedList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundAttendedList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }
  

    inboundAbandonedList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundAbandonedList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }


    inboundShortList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundShortList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }

    inboundBeforeTimeList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundBeforeTimeList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }


    inboundHungAgentList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundHungAgentList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }

    inboundLostCallsList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundLostCallsList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('Dashboard......' , url_api, query);
      // console.log(res);
      return res;
    }

 
    inboundQueueResume(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundQueueResume?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('inboundQueueResume......' , url_api, query);
      // console.log(res);
      return res;
    }


    inboundQueueList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundQueueList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('inboundQueueList......' , url_api, query);
      // console.log(res);
      return res;
    }


    inboundActiveList(item): Observable<any> {
      const query = JSON.stringify(item);
      const accessToken = localStorage.getItem('accessToken');
      const url_api = `${
        this.env.loopbackApiUrl
      }/api/InvDashboards/inboundActiveList?access_token=${accessToken}`;
      const res = this.http.post(url_api, query, { headers: this.headers });
      // console.warn('inboundQueueList......' , url_api, query);
      // console.log(res);
      return res;
    }



/************************************************************************************ */


  // getMainDashboardItems
  mainDashboard(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/mainDashboard?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }

  inboundListAgentConnected(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundListAgentConnected?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }

  inboundAgentBusy(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/POST /InvDashboards/inboundAgentBusy?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }

  inboundAgentBreak(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/POST /InvDashboards/inboundAgentBreak?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }

  inboundAgentAvailable(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundAgentAvailable?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  inboundListAgentPlanned(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api//InvDashboards/inboundListAgentPlanned?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  inboundListAgentAttending(item): Observable<any> {
    const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    const url_api = `${
      this.env.loopbackApiUrl
    }/api//InvDashboards/inboundListAgentAttending?access_token=${accessToken}`;
    const res = this.http.post(url_api, query, { headers: this.headers });
    console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }



  inboundListKeyIndicators(userSelection: UserSelectionModel): Observable<any> {
    // const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    // console.log('service userSelection', userSelection);
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundListKeyIndicators?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  inboundCallsAtQueue(userSelection: UserSelectionModel): Observable<any> {
    // const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    // console.log('service userSelection', userSelection);
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundCallsAtQueue?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  inboundDeleteCurrentAgents(userSelection: UserSelectionModel): Observable<any> {
    // const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    // console.log('service userSelection', userSelection);
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundDeleteCurrentAgents?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  inboundCallsAbandoned(userSelection: UserSelectionModel): Observable<any> {
    // const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    // console.log('service userSelection', userSelection);
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundCallsAbandoned?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }

  inboundCallsListAtQueue(userSelection: UserSelectionModel): Observable<any> {
    // const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    // console.log('service userSelection', userSelection);
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundCallsListAtQueue?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  outboundCallsListActive(userSelection: UserSelectionModel): Observable<any> {
    // const query = JSON.stringify(item);
    const accessToken = localStorage.getItem('accessToken');
    // console.log('service userSelection', userSelection);
    const url_api = `${
      this.env.loopbackApiUrl
    }/api/InvDashboards/inboundCallsListActive?access_token=${accessToken}`;
    const res = this.http.post(url_api, userSelection, { headers: this.headers });
    // console.warn('Dashboard......' , url_api, query);
    // console.log(res);
    return res;
  }


  

} 
