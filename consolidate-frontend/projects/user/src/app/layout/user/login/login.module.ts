import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { FormsModule } from "@angular/forms";
import { ReactiveFormsModule } from "@angular/forms";

import { AlertModule } from "shared/modules/alert/alert.module";
import { NowModule } from "shared/modules/now/now.module";
import { ConnectionModule } from "shared/modules/connection/connection.module";

import { LoginRoutingModule } from "./login-routing.module";
import { LoginComponent } from "./login.component";
import { LoginHeaderComponent } from "./login-header/login-header.component";
import { LoginIntroComponent } from "./login-intro/login-intro.component";
import { LoginLoginComponent } from "./login-login/login-login.component";
import { LoginRegisterComponent } from "./login-register/login-register.component";
import { ProfileComponent } from "./profile/profile.component";



import { HeaderMenuModule } from "shared/modules/header-menu/header-menu.module";
import { HeaderMenuUserModule } from "shared/modules/header-menu-user/header-menu-user.module";
import { HeaderMenuBrandModule } from "shared/modules/header-menu-brand/header-menu-brand.module";
import { IntroPageModule } from "shared/modules/intro-page/intro-page.module";

@NgModule({
  declarations: [
    LoginComponent,
    LoginHeaderComponent,
    LoginIntroComponent,
    LoginLoginComponent,
    LoginRegisterComponent,
    ProfileComponent
  ],
  imports: [
    CommonModule,
    NowModule,
    ConnectionModule,
    FormsModule,
    ReactiveFormsModule,
    AlertModule,

    HeaderMenuModule,
    HeaderMenuUserModule,
    HeaderMenuBrandModule,
    IntroPageModule,

    LoginRoutingModule
  ]
})
export class LoginModule {}
