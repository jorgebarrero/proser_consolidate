export function logout(authService, routeOk: string, routeFail: string) {
  authService.logoutUser().subscribe(
    data => {
      // console.log("LOGOUT", data);
      this.router.navigate([routeOk]);
    },
    error => {
      // console.log("Error", error);
      // this.show_data = false;
      this.onError(error);
      // console.log("Error procesado");
      this.router.navigate([routeFail]);
    }
  );
}
