import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";

import { AuthGuard } from "shared/guards";

import { AppComponent } from "./app.component";
import { HomeComponent } from "./home/home.component";

import { RedirectModule } from "shared/modules/redirect/redirect.module";
import { AuditSharedModule } from "projects/audit/src/app/app.module";
import { ReportSharedModule } from "projects/reports/src/app/app.module";
import { SystemSharedModule } from "projects/system/src/app/app.module";
import { UserSharedModule } from "projects/user/src/app/app.module";

const routes: Routes = [
  { path: "", redirectTo: "init/home", pathMatch: "full" },
  { path: "init/home", component: HomeComponent },

  {
    path: "redirect",
    loadChildren: () =>
      import("shared/modules/redirect/redirect.module").then(
        m => m.RedirectModule
      )
  },

  {
    path: "login",
    loadChildren: () =>
      import("../../../user/src/app/layout/user/login/login.module").then(
        m => m.LoginModule
      )
  },

  { path: "init/home/layout", redirectTo: "main/layout" },

  {
    path: "init/layout",
    loadChildren: () =>
      import("./layout/layout.module").then(m => m.LayoutModule),
    canActivate: [AuthGuard]
  },


  {
    path: "audit",
    loadChildren: () =>
      import("projects/audit/src/app/app.module").then(m => m.AuditSharedModule)
  },

  {
    path: "reports",
    loadChildren: () =>
      import("projects/reports/src/app/app.module").then(
        m => m.ReportSharedModule
      )
  },

  {
    path: "system",
    loadChildren: () =>
      import("projects/system/src/app/app.module").then(
        m => m.SystemSharedModule
      )
  },


  {
    path: "user",
    loadChildren: () =>
      import("projects/user/src/app/app.module").then(m => m.UserSharedModule)
  },

  { path: "**", redirectTo: "not-found" }
];

@NgModule({
  // declarations: [AccessdeniedComponent, NotfoundComponent, ErrorComponent],
  imports: [
    RouterModule.forRoot(routes),
    RedirectModule,

    AuditSharedModule.forRoot(),
    ReportSharedModule.forRoot(),
    SystemSharedModule.forRoot(),
    UserSharedModule.forRoot(),

  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
