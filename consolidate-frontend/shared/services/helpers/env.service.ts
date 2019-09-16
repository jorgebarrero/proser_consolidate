import { Injectable } from '@angular/core';

@Injectable()
export class EnvService {
  // The values that are defined here are the default values that can
  // be overridden by env.js

  // API url
  public loopbackApiUrl = 'http://127.0.0.1:3151'
  public systemApiUrl = 'http://127.0.0.1:3152'

  // Version
  public version = 'Development version'

  // Callcenter Name
  public callcenterName = 'Test CallCenter'

  // Callcenter slogan
  public callcenterSlogan = 'Proser is the best'

  // Callcenter slogan
  public callcenterLogo = '/assets/img/logos_proser/proser-icon-sm.png'

  // Callcenter slogan
  public callcenterSite = 'Test'

  // Whether or not to enable debug mode
  public enableDebug = true

  public waitTime = 20

  public external = 'Extenal file'

  constructor() {}
}
