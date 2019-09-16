export class UserbaseModel {
  id: number;
  firstname: string;
  lastname: string;
  profile: string;
  realm: string;
  username: string;
  password: string;
  email: string;
  emailVerified: string;
  verificationToken: string;
  memberId: string;
  user_legal_id: string;
  user_internal_id: string;
  user_photo_path: string;

  constructor() {
    this.id = 0;
    this.firstname = "";
    this.lastname = "";
    this.profile = "";
    this.realm = "";
    this.username = "";
    this.password = "";
    this.email = "";
    this.emailVerified = "";
    this.verificationToken = "";
    this.memberId = "";
    this.user_legal_id = "";
    this.user_internal_id = "";
    this.user_photo_path = "";
  }

  public fieldList() {
    return [
      { field_name: "id", name: "id", text: "Id" },
      { field_name: "firstname", name: "nombre", text: "Nombre" },
      { field_name: "lastname", name: "apellido", text: "Apellido" },
      { field_name: "profile", name: "perfil", text: "Perfil" },
      { field_name: "realm", name: "reino", text: "Reino" },
      { field_name: "username", name: "nombre_usuario", text: "Usuario" },
      { field_name: "password", name: "clave_usuario", text: "Clave" },
      { field_name: "email", name: "email", text: "Email" },
      {
        field_name: "emailVerified",
        name: "email-verificado",
        text: "Email ver"
      },
      { field_name: "verificationToken", name: "token", text: "Token ver" },
      { field_name: "memberId", name: "miembro_id", text: "Id miembro" },
      {
        field_name: "user_legal_id",
        name: "identificacion_legal",
        text: "Id legal"
      },
      {
        field_name: "user_internal_id",
        name: "identificacion_interna",
        text: "Id interno"
      },
      { field_name: "user_photo_path", name: "ruta_foto", text: "Foto" }
    ];
  }

  public fieldInfo(field_name) {
    const register = this.fieldList();

    return register.filter(x => {
      return x.field_name === field_name;
    })[0];
  }
}
