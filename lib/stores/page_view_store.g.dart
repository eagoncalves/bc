// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_view_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageViewStore on _PageViewStore, Store {
  final _$appBarTitleAtom = Atom(name: '_PageViewStore.appBarTitle');

  @override
  String get appBarTitle {
    _$appBarTitleAtom.context.enforceReadPolicy(_$appBarTitleAtom);
    _$appBarTitleAtom.reportObserved();
    return super.appBarTitle;
  }

  @override
  set appBarTitle(String value) {
    _$appBarTitleAtom.context.conditionallyRunInAction(() {
      super.appBarTitle = value;
      _$appBarTitleAtom.reportChanged();
    }, _$appBarTitleAtom, name: '${_$appBarTitleAtom.name}_set');
  }

  final _$pageControllerAtom = Atom(name: '_PageViewStore.pageController');

  @override
  PageController get pageController {
    _$pageControllerAtom.context.enforceReadPolicy(_$pageControllerAtom);
    _$pageControllerAtom.reportObserved();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.context.conditionallyRunInAction(() {
      super.pageController = value;
      _$pageControllerAtom.reportChanged();
    }, _$pageControllerAtom, name: '${_$pageControllerAtom.name}_set');
  }

  final _$bottomNavigationKeyAtom =
      Atom(name: '_PageViewStore.bottomNavigationKey');

  @override
  GlobalKey<State<StatefulWidget>> get bottomNavigationKey {
    _$bottomNavigationKeyAtom.context
        .enforceReadPolicy(_$bottomNavigationKeyAtom);
    _$bottomNavigationKeyAtom.reportObserved();
    return super.bottomNavigationKey;
  }

  @override
  set bottomNavigationKey(GlobalKey<State<StatefulWidget>> value) {
    _$bottomNavigationKeyAtom.context.conditionallyRunInAction(() {
      super.bottomNavigationKey = value;
      _$bottomNavigationKeyAtom.reportChanged();
    }, _$bottomNavigationKeyAtom,
        name: '${_$bottomNavigationKeyAtom.name}_set');
  }

  final _$_PageViewStoreActionController =
      ActionController(name: '_PageViewStore');

  @override
  dynamic setAppBarTitle(int index) {
    final _$actionInfo = _$_PageViewStoreActionController.startAction();
    try {
      return super.setAppBarTitle(index);
    } finally {
      _$_PageViewStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic jumpToPage(int index) {
    final _$actionInfo = _$_PageViewStoreActionController.startAction();
    try {
      return super.jumpToPage(index);
    } finally {
      _$_PageViewStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'appBarTitle: ${appBarTitle.toString()},pageController: ${pageController.toString()},bottomNavigationKey: ${bottomNavigationKey.toString()}';
    return '{$string}';
  }
}
