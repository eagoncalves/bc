import 'package:beauty_clinic/stores/drawer_menu_controller_store.dart';
import 'package:beauty_clinic/stores/page_view_store.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AndroidBottomNavBar extends StatelessWidget {
  final Color backGroundColor;
  final Color iconColor;

  const AndroidBottomNavBar({
    Key key,
    this.backGroundColor = Colors.white,
    this.iconColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerMenuControllerStore = Provider.of<DrawerMenuControllerStore>(context);
    final pageViewStore = Provider.of<PageViewStore>(context);

    return CurvedNavigationBar(
      key: pageViewStore.bottomNavigationKey,
      index: 2,
      color: Colors.pink,
      buttonBackgroundColor: Colors.pink,
      backgroundColor: backGroundColor,
      animationCurve: Curves.easeInOutCirc,
      animationDuration: Duration(milliseconds: 600),
      items: <Widget>[
        Icon(Icons.message, color: iconColor),
        Icon(Icons.history, color: iconColor),
        Icon(Icons.calendar_today, color: iconColor),
        Icon(Icons.check_box, color: iconColor),
        Icon(Icons.add, color: iconColor),
      ],
      onTap: (index) {
        pageViewStore.jumpToPage(index);
        drawerMenuControllerStore.setSelectedItemByPageView(index);
      },
    );
  }
}
