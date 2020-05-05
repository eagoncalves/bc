import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract class BCPlatformWidget<C extends Widget, M extends Widget>
    extends StatelessWidget {
  BCPlatformWidget({Key key}) : super(key: key);

  C buildCupertinoWidget(BuildContext context);

  M buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCupertinoWidget(context);
    } else {
      return buildMaterialWidget(context);
    }
  }
}
