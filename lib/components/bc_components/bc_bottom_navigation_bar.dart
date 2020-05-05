import 'package:beauty_clinic/components/android/android_bottom_nav_bar.dart';
import 'package:beauty_clinic/components/bc_components/bc_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class BcBottomNavigationBar extends BCPlatformWidget {
  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoTabBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.message)),
      BottomNavigationBarItem(icon: Icon(Icons.history)),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_today)),
      BottomNavigationBarItem(icon: Icon(Icons.refresh)),
      BottomNavigationBarItem(icon: Icon(Icons.add)),
    ]);
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AndroidBottomNavBar(backGroundColor: Colors.white);
  }
}
