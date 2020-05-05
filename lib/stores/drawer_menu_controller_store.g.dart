// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_menu_controller_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DrawerMenuControllerStore on _DrawerMenuControllerStore, Store {
  final _$itemSelectedAtom =
      Atom(name: '_DrawerMenuControllerStore.itemSelected');

  @override
  int get itemSelected {
    _$itemSelectedAtom.context.enforceReadPolicy(_$itemSelectedAtom);
    _$itemSelectedAtom.reportObserved();
    return super.itemSelected;
  }

  @override
  set itemSelected(int value) {
    _$itemSelectedAtom.context.conditionallyRunInAction(() {
      super.itemSelected = value;
      _$itemSelectedAtom.reportChanged();
    }, _$itemSelectedAtom, name: '${_$itemSelectedAtom.name}_set');
  }

  final _$optionsDrawerMenuAtom =
      Atom(name: '_DrawerMenuControllerStore.optionsDrawerMenu');

  @override
  ObservableList<DrawerMenuStore> get optionsDrawerMenu {
    _$optionsDrawerMenuAtom.context.enforceReadPolicy(_$optionsDrawerMenuAtom);
    _$optionsDrawerMenuAtom.reportObserved();
    return super.optionsDrawerMenu;
  }

  @override
  set optionsDrawerMenu(ObservableList<DrawerMenuStore> value) {
    _$optionsDrawerMenuAtom.context.conditionallyRunInAction(() {
      super.optionsDrawerMenu = value;
      _$optionsDrawerMenuAtom.reportChanged();
    }, _$optionsDrawerMenuAtom, name: '${_$optionsDrawerMenuAtom.name}_set');
  }

  final _$_DrawerMenuControllerStoreActionController =
      ActionController(name: '_DrawerMenuControllerStore');

  @override
  dynamic setSelectedItem(int index) {
    final _$actionInfo =
        _$_DrawerMenuControllerStoreActionController.startAction();
    try {
      return super.setSelectedItem(index);
    } finally {
      _$_DrawerMenuControllerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSelectedItemByPageView(int index) {
    final _$actionInfo =
        _$_DrawerMenuControllerStoreActionController.startAction();
    try {
      return super.setSelectedItemByPageView(index);
    } finally {
      _$_DrawerMenuControllerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'itemSelected: ${itemSelected.toString()},optionsDrawerMenu: ${optionsDrawerMenu.toString()}';
    return '{$string}';
  }
}
