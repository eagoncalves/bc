import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'page_view_store.g.dart';

class PageViewStore = _PageViewStore with _$PageViewStore;

abstract class _PageViewStore with Store {
  @observable
  String appBarTitle = 'BeautyClinic';
  @observable
  PageController pageController = PageController();
  @observable
  GlobalKey bottomNavigationKey = GlobalKey();

  @action
  setAppBarTitle(int index) {
    switch (index) {
      case 0:
        appBarTitle = 'Mensagens';
        break;
      case 1:
        appBarTitle = 'Históricos';
        break;
      case 2:
        appBarTitle = 'Próximos agendamentos';
        break;
      case 3:
        appBarTitle = 'Marcar agendamento';
        break;
      case 4:
        appBarTitle = 'Novo agendamento';
        break;
    }
  }

  @action
  jumpToPage(int index) {
    pageController.jumpToPage(index);
  }
}
