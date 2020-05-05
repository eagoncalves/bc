
class Appointment {
  final int codAgenda;
  final int codProcedimento;
  final int codAngariador;
  final String descProcedimento;
  final String data;
  final String horario;
  final String repetido;
  final String status;
  final int pago;

  Appointment(
    this.codAgenda,
    this.codProcedimento,
    this.codAngariador,
    this.descProcedimento,
    this.data,
    this.horario,
    this.repetido,
    this.status,
    this.pago,
  );
}
