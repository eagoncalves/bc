import 'package:beauty_clinic/screens/dashboard.dart';
import 'package:beauty_clinic/screens/recovery_password.dart';
import 'package:beauty_clinic/screens/register.dart';
import 'package:beauty_clinic/screens/sign_out.dart';
import 'package:beauty_clinic/stores/drawer_menu_controller_store.dart';
import 'package:beauty_clinic/stores/page_view_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';

void main() => runApp(BeautyClinicApp());

class BeautyClinicApp extends StatelessWidget {
  Brightness brightness = Brightness.light;

  @override
  Widget build(BuildContext context) {
    final materialTheme = new ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.white,
    );
    final materialDarkTheme = new ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.teal,
    );

    final cupertinoTheme = new CupertinoThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.red,
      textTheme: CupertinoTextThemeData(primaryColor: Colors.white, textStyle: TextStyle(fontSize: 15)),

//      primaryColor: CupertinoDynamicColor.withBrightness(
//        color: Color.fromRGBO(182, 20, 98, 1),
//        darkColor: Colors.cyan,
////        scaffoldBackgroundColor: Colors.white,
////        primaryColor: Color.fromRGBO(182, 20, 98, 1),
////          accentColor: Colors.white,
//      ),
    );

    return MultiProvider(
      providers: [
        Provider<PageViewStore>(create: (_) => PageViewStore(),),
        Provider<DrawerMenuControllerStore>(create: (_) => DrawerMenuControllerStore(),),
      ],
      child: Theme(
        data: brightness == Brightness.light ? materialTheme : materialDarkTheme,
        child: PlatformProvider(
          builder: (context) => PlatformApp(
            localizationsDelegates: <LocalizationsDelegate<dynamic>>[
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
            ],
            title: 'Beauty Clinic',
            debugShowCheckedModeBanner: false,
            android: (_) {
              return new MaterialAppData(
                theme: materialTheme,
                darkTheme: materialDarkTheme,
                themeMode: brightness == Brightness.light
                    ? ThemeMode.light
                    : ThemeMode.dark,
              );
            },
            ios: (_) => new CupertinoAppData(
              theme: cupertinoTheme,
            ),
            home: Dashboard(),
          ),
        ),
      ),
    );

//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Beauty Clinic',
//      theme: ThemeData(
//          scaffoldBackgroundColor: Colors.white,
//          primaryColor: Color.fromRGBO(182, 20, 98, 1),
//          accentColor: Colors.white,
//          textTheme: TextTheme(
//              body1: TextStyle(
//                color: Colors.pink[800],
//              ),
//              body2: TextStyle(
//                color: Colors.white,
//                fontWeight: FontWeight.bold,
//                fontSize: 15,
//              )),
//          iconTheme: IconThemeData(
//            color: Colors.pink[800],
//          )),
//      home: Signout(),
//    );
  }
}
