import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  final String message;
  final double padding;
  const Empty({Key key, this.message, this.padding = 50 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: new EdgeInsets.all(padding),
        child: Text(
          this.message,
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
