import 'package:beauty_clinic/data/appointments_data.dart';
import 'package:beauty_clinic/models/appointment.dart';
import 'package:flutter/material.dart';

import 'empty.dart';

class NextAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return appointments.length > 1
        ? ListView.builder(
            itemCount: appointments.length,
            itemBuilder: (_, index) =>
                AppointmentCard(appointment: appointments[index]),
          )
        : Empty(
            message: 'Você ainda não possui nenhum agendamento...',
          );
  }
}

class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({Key key, this.appointment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final sizeScreen = data.size;
    final heightCard = data.devicePixelRatio * 60;
    final sizeStatus = sizeScreen.width * 0.05;
    final widthEllipsis = sizeScreen.width * 0.61;
    final textSize = sizeScreen.width * 0.04;
    final textSizeInfo = sizeScreen.width * 0.03;
    final TextStyle textStyleTitle = TextStyle(
        color: Colors.black, fontSize: textSize, fontWeight: FontWeight.w500);
    final TextStyle _textStyleInfos =
        TextStyle(color: Colors.grey[500], fontSize: textSizeInfo);

    final TextStyle _textStyleStatus = TextStyle(
        color: Theme.of(context).primaryColor, fontSize: textSizeInfo);

    return InkWell(
      child: Container(
        height: heightCard,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300], width: 0.4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: sizeStatus,
                      width: sizeStatus,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _getColorStatus(appointment.status),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text('Procedimento: ', style: textStyleTitle),
                        Container(
                          width: widthEllipsis,
                          child: new Tooltip(
                            message: appointment.descProcedimento,
                            child: Text(appointment.descProcedimento,
                                style: textStyleTitle,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text('Data: ', style: _textStyleInfos),
                                    Text(appointment.data,
                                        style: _textStyleInfos),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text('Horário: ', style: _textStyleInfos),
                                    Text(appointment.data,
                                        style: _textStyleInfos),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(_getDescriptionStatus(appointment.status),
                              style: _textStyleStatus),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () => print(appointment.descProcedimento),
    );
  }

  Color _getColorStatus(String status) {
    switch (status) {
      case 'M':
        return Colors.green;
      case 'N':
        return Colors.blue;
      case 'P':
        return Colors.orange;
      case 'A':
        return Colors.red;
      case 'L':
        return Colors.amber;
      default:
        return Colors.white;
    }
  }

  String _getDescriptionStatus(String status) {
    switch (status) {
      case 'M':
        return 'MARCADO';
      case 'N':
        return 'RESERVADO';
      case 'P':
        return 'CANCELADO';
      case 'A':
        return 'ATENDIDO';
      case 'L':
        return 'LIVRE';
      default:
        return 'NOT INFORMED';
    }
  }
}
