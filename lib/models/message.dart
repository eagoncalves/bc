class Message {
  final int id;
  final String titulo;
  final String autor;
  final String mensagem;
  final String tipoMensagem;
  final DateTime dataEnvio;
  final bool visualizada;
  final int idMsgCliente;

  Message(
    this.id,
    this.titulo,
    this.autor,
    this.mensagem,
    this.tipoMensagem,
    this.dataEnvio,
    this.visualizada,
    this.idMsgCliente,
  );
}
