import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Size sizeScreen;
  final Color logoColor;
  final String title;
  final Color titleColor;

  const Logo({
    Key key,
    this.sizeScreen,
    this.logoColor,
    this.title,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: sizeScreen.width * 0.33,
            height: sizeScreen.width * 0.33,
            child: Image.asset(
              'assets/images/logo.png',
              color: logoColor != null
                  ? logoColor
                  : Theme.of(context).primaryColor,
            ),
          ),
          Text(
            'Beauty Clinic',
            style: TextStyle(
                fontSize: sizeScreen.width * 0.05,
                color: titleColor != null ? titleColor : null),
          ),
          Visibility(
            visible: _hasTitle(title),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _hasTitle(title) ? title : '',
                style: TextStyle(color: titleColor, fontSize:  sizeScreen.width * 0.05),
              ),
            ),
          )
        ],
      ),
    );
  }

  _hasTitle(String title) {
    return title != null && title != '';
  }
}
