import 'package:beauty_clinic/models/drawer_menu_store.dart';
import 'package:beauty_clinic/stores/drawer_menu_controller_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final sizeScreen = media.size;

    return Container(
      child: Column(
        children: <Widget>[
          _TopDrawerMenu(sizeScreen: sizeScreen),
          Expanded(
            child: _Options(sizeScreen: sizeScreen),
          ),
        ],
      ),
    );
  }
}

class _TopDrawerMenu extends StatelessWidget {
  final Size sizeScreen;

  const _TopDrawerMenu({Key key, this.sizeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.only(
          top: sizeScreen.width * 0.15, left: sizeScreen.width * 0.03),
      width: sizeScreen.width,
      height: sizeScreen.width * 0.50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.account_circle,
            color: Colors.white,
            size: sizeScreen.width * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              'ELOI',
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: sizeScreen.width * 0.04,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              'eloi.andre@hotmail.com',
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: sizeScreen.width * 0.04),
            ),
          )
        ],
      ),
    );
  }
}

class _Options extends StatelessWidget {
  final Size sizeScreen;

  const _Options({Key key, this.sizeScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerMenuControllerStore =
        Provider.of<DrawerMenuControllerStore>(context);

    return ListView.builder(
      padding: new EdgeInsets.symmetric(
        vertical: sizeScreen.width * 0.05,
      ),
      itemCount: drawerMenuControllerStore.optionsDrawerMenu.length,
      itemBuilder: (_, index) => _OptionCard(
        option: drawerMenuControllerStore.optionsDrawerMenu[index],
        sizeScreen: sizeScreen,
      ),
    );
  }
}

class _OptionCard extends StatelessWidget {
  final DrawerMenuStore option;
  final Size sizeScreen;
  final BuildContext context;

  const _OptionCard({
    Key key,
    this.option,
    this.sizeScreen,
    this.context,
  }) : super(key: key);

  Widget build(BuildContext context) {

    final drawerMenuControllerStore = Provider.of<DrawerMenuControllerStore>(context);

    if (this.option.isIcon) {
      return Observer(
        builder: (_) => InkWell(
          child: Container(
            color: (option.selected == true)
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            padding: new EdgeInsets.all(sizeScreen.width * 0.03),
            child: Row(
              children: <Widget>[
                Icon(
                  option.icon,
                  size: sizeScreen.width * 0.08,
                  color: (option.selected == false)
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                ),
                Padding(
                  padding: new EdgeInsets.only(left: sizeScreen.width * 0.03),
                  child: Text(
                    option.description,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: (option.selected == false)
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () => drawerMenuControllerStore.setSelectedItem(option.index),
        ),
      );
    } else if (option.isDivider) {
      return Container(
        padding: new EdgeInsets.only(top: 8.0),
        child: Divider(),
      );
    } else if (option.isOption) {
      return Container(
        padding: new EdgeInsets.all(8.0),
        child: Text(
          option.description,
          style: TextStyle(fontSize: sizeScreen.width * 0.04),
        ),
      );
    }
  }
}

Widget _showCard(DrawerMenuStore option, Size size, BuildContext context) {
  final drawerMenuControllerStore =
      Provider.of<DrawerMenuControllerStore>(context);

  if (option.isIcon) {
    if (option.selected == drawerMenuControllerStore.itemSelected) {
      print('Selected index is ${option.selected}');
    }
    return Observer(
      builder: (_) => InkWell(
        child: Container(
//      color: (option.selected == true || option.selected == null)
//          ? Theme.of(context).primaryColor
//          : Colors.transparent,
          padding: new EdgeInsets.all(size.width * 0.03),
          child: Row(
            children: <Widget>[
              Icon(
                option.icon,
                size: size.width * 0.08,
              ),
              Padding(
                padding: new EdgeInsets.only(left: size.width * 0.03),
                child: Text(
                  option.description,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        onTap: () => drawerMenuControllerStore.setSelectedItem(option.index),
      ),
    );
  } else if (option.isDivider) {
    return Container(
      padding: new EdgeInsets.only(top: 8.0),
      child: Divider(),
    );
  } else if (option.isOption) {
    return Container(
      padding: new EdgeInsets.all(8.0),
      child: Text(
        option.description,
        style: TextStyle(fontSize: size.width * 0.04),
      ),
    );
  }
}
