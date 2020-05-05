import 'package:beauty_clinic/models/drawer_menu_store.dart';
import 'package:flutter/material.dart';

final List<DrawerMenuStore> optionsDrawerMenu = [
  new DrawerMenuStore(description: 'Início', icon: Icons.home, isIcon: true, index: 0),
  new DrawerMenuStore(description: 'Mensagens', icon: Icons.message, isIcon: true, index: 1),
  new DrawerMenuStore(description: 'Produtos', icon: Icons.local_offer, isIcon: true, index: 2),
  new DrawerMenuStore(description: 'Orçamentos', icon: Icons.monetization_on, isIcon: true, index: 3),
  new DrawerMenuStore(isDivider: true),
  new DrawerMenuStore(description: 'Opções', isOption: true),
  new DrawerMenuStore(description: 'Sobre', icon: Icons.info_outline, isIcon: true, index: 4),
  new DrawerMenuStore(description: 'Sair', icon: Icons.highlight_off, isIcon: true, index: 5),
];
