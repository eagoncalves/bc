import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'drawer_menu_store.g.dart';

class DrawerMenuStore = _DrawerMenuStore with _$DrawerMenuStore;

abstract class _DrawerMenuStore with Store {
  @observable
  String description;
  @observable
  IconData icon;
  @observable
  bool isIcon;
  @observable
  bool isDivider;
  @observable
  bool isOption;
  @observable
  int index;
  @observable
  bool selected;

  _DrawerMenuStore({
    this.description,
    this.icon,
    this.isIcon = false,
    this.isDivider = false,
    this.isOption = false,
    this.selected = false,
    this.index,
  });
}
