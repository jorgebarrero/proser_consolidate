export class InvCalendarDayModel {
  inv_calendarday_id: number
  inv_calendarday_calendar_id: number
  inv_calendarday_status: string
  inv_calendarday_date: string
  inv_calendarday_name: string
  inv_calendarday_type: string
  inv_calendarday_date_bootstrap?: any

  constructor() {
    this.inv_calendarday_id = 0;
    this.inv_calendarday_calendar_id = 1;
    this.inv_calendarday_status = 'A';
    this.inv_calendarday_date = null;
    this.inv_calendarday_name = null;
    this.inv_calendarday_type = null;
    this.inv_calendarday_date_bootstrap = null;
  }

  public fieldList() {
    return [
      { field_name: 'inv_calendarday_id', name: 'id', text: 'Id' },
      {
        field_name: 'inv_calendarday_calendar_id',
        name: 'calendar_id',
        text: 'Calendario',
      },
      { field_name: 'inv_calendarday_status', name: 'estado', text: 'Estado' },
      {
        field_name: 'inv_calendarday_date',
        name: 'fecha_calendario',
        text: 'Fecha',
      },
      {
        field_name: 'inv_calendarday_date_bootstrap',
        name: 'fecha_calendario',
        text: 'Fecha',
      },
      {
        field_name: 'inv_calendarday_type',
        name: 'tipo_calendario',
        text: 'Tipo',
      },
      {
        field_name: 'inv_calendarday_name',
        name: 'nombre_calendario',
        text: 'Nombre',
      },
    ];
  }

  public fieldInfo(field_name) {
    const register = this.fieldList();

    return register.filter(x => {
      return x.field_name === field_name;
    })[0];
  }
}
