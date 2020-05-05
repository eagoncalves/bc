import 'package:beauty_clinic/models/drawer_menu_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'drawer_menu_controller_store.g.dart';

class DrawerMenuControllerStore = _DrawerMenuControllerStore
    with _$DrawerMenuControllerStore;

abstract class _DrawerMenuControllerStore with Store {
  @observable
  int itemSelected;

  @observable
  ObservableList<DrawerMenuStore> optionsDrawerMenu = [
    DrawerMenuStore(
        description: 'Início',
        icon: Icons.home,
        isIcon: true,
        index: 0,
        selected: true),
    DrawerMenuStore(
      description: 'Mensagens',
      icon: Icons.message,
      isIcon: true,
      index: 1,
    ),
    DrawerMenuStore(
        description: 'Produtos',
        icon: Icons.local_offer,
        isIcon: true,
        index: 2),
    DrawerMenuStore(
        description: 'Orçamentos',
        icon: Icons.monetization_on,
        isIcon: true,
        index: 3),
    DrawerMenuStore(
      isDivider: true,
    ),
    DrawerMenuStore(
      description: 'Opções',
      isOption: true,
    ),
    DrawerMenuStore(
      description: 'Sobre',
      icon: Icons.info_outline,
      isIcon: true,
      index: 4,
    ),
    DrawerMenuStore(
      description: 'Sair',
      icon: Icons.highlight_off,
      isIcon: true,
      index: 5,
    ),
  ].asObservable();

  @action
  setSelectedItem(int index) {
    for (DrawerMenuStore options in optionsDrawerMenu) {
      options.selected = options.index == index;
    }
  }

  @action
  setSelectedItemByPageView(int index) {
    switch (index) {
      case 0:
        optionsDrawerMenu[0].selected = false;
        optionsDrawerMenu[1].selected = true;
        optionsDrawerMenu[2].selected = false;
        optionsDrawerMenu[3].selected = false;
        break;
      case 2:
        optionsDrawerMenu[0].selected = true;
        optionsDrawerMenu[1].selected = false;
        optionsDrawerMenu[2].selected = false;
        optionsDrawerMenu[3].selected = false;
        break;
    }
  }
}
