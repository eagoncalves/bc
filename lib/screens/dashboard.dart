import 'package:beauty_clinic/components/bc_components/bc_bottom_navigation_bar.dart';
import 'package:beauty_clinic/components/booking_appointment.dart';
import 'package:beauty_clinic/components/next_appointments.dart';
import 'package:beauty_clinic/components/perform_appointment.dart';
import 'package:beauty_clinic/components/stories.dart';
import 'package:beauty_clinic/screens/drawer_menu.dart';
import 'package:beauty_clinic/screens/messages.dart';
import 'package:beauty_clinic/stores/drawer_menu_controller_store.dart';
import 'package:beauty_clinic/stores/page_view_store.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

Color whiteColor = Colors.white;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    final Size sizeScreen = data.size;
    final Color primaryColor = Theme.of(context).primaryColor;
    final TextStyle textStyle = TextStyle(color: primaryColor);
    final pageViewStore = Provider.of<PageViewStore>(context);
    final drawerMenuControllerStore =
        Provider.of<DrawerMenuControllerStore>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Observer(
            builder: (_) => Text(pageViewStore.appBarTitle, style: textStyle)),
        iconTheme: new IconThemeData(color: primaryColor),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart, color: primaryColor),
          ),
        ],
      ),
      bottomNavigationBar: BcBottomNavigationBar(),
      drawer: Drawer(
        child: DrawerMenu(),
      ),
      body: PageView(
        controller: pageViewStore.pageController,
        children: <Widget>[
          Messages(),
          Stories(),
          NextAppointments(),
          PerformAppointment(),
          BookingAppointment(),
        ],
        onPageChanged: (index) {
          pageViewStore.jumpToPage(index);

          final CurvedNavigationBarState navBottomBar =
              pageViewStore.bottomNavigationKey.currentState;
          navBottomBar.setPage(index);
          pageViewStore.setAppBarTitle(index);
          drawerMenuControllerStore.setSelectedItemByPageView(index);
        },
      ),
    );
  }
}
