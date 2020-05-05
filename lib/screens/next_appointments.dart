import 'package:beauty_clinic/components/dashboard_buttons.dart';
import 'package:flutter/material.dart';

class NextAppointments extends StatefulWidget {
  @override
  _NextAppointmentsState createState() => _NextAppointmentsState();
}

class _NextAppointmentsState extends State<NextAppointments> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final double deviceRation = data.devicePixelRatio;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: deviceRation * 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.calendar_today, size: 18),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Próximos agendamentos:'),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: NextAppointments(),
          ),
          DashboardButtons(),
        ],
      ),
    );
  }
}
