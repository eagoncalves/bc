import 'package:beauty_clinic/screens/messages.dart';
import 'package:flutter/material.dart';

class DashboardButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final TextStyle style = Theme.of(context).textTheme.body2;
    final String titleMessageButton = 'Mensagens';
    final String titleHistoricoButton = 'Histórico';
    final String titleMarcarAgendamento = 'Marcar \nAgendamento';
    final String titleNovoAgendamento = 'Novo \nAgendamento';
    final double iconSize = data.devicePixelRatio * 15;
    final Color iconColor = Colors.white;

    return Container(
      child: Table(
        border: TableBorder.all(color: Colors.white),
        children: [
          TableRow(children: [
            InkWell(
              child: Container(
                height: data.size.height * 0.14,
                color: Colors.blue[700],
                child: Stack(
                  children: <Widget>[
                    ButtonMessage(message: titleMessageButton, style: style),
                    ButtonIcon(icon: Icons.message, size: iconSize, color: iconColor),
                  ],
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Messages())),
            ),
            Container(
              height: data.size.height * 0.14,
              color: Colors.red[600],
              child: Stack(
                children: <Widget>[
                  ButtonMessage(message: titleHistoricoButton, style: style),
                  ButtonIcon(icon: Icons.history, size: iconSize, color: iconColor),
                ],
              ),
            ),
          ]),
          TableRow(children: [
            Container(
              height: data.size.height * 0.14,
              color: Colors.green[900],
              child: Stack(
                children: <Widget>[
                  ButtonMessage(message: titleMarcarAgendamento, style: style),
                  ButtonIcon(icon: Icons.check_box, color: Colors.white),
                ],
              ),
            ),
            Container(
              height: data.size.height * 0.14,
              color: Colors.orange,
              child: Stack(
                children: <Widget>[
                  ButtonMessage(message: titleNovoAgendamento, style: style),
                  ButtonIcon(icon: Icons.add, size: iconSize, color: iconColor),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

class ButtonMessage extends StatelessWidget {
  final String message;
  final TextStyle style;

  const ButtonMessage({Key key, this.message, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8.0,
      left: 8.0,
      child: Text(message, style: style),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icon;

  const ButtonIcon({Key key, this.size, this.color, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8.0,
      bottom: 8.0,
      child: Icon(icon, size: size, color: color),
    );
  }
}
