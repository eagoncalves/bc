// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_menu_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DrawerMenuStore on _DrawerMenuStore, Store {
  final _$descriptionAtom = Atom(name: '_DrawerMenuStore.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$iconAtom = Atom(name: '_DrawerMenuStore.icon');

  @override
  IconData get icon {
    _$iconAtom.context.enforceReadPolicy(_$iconAtom);
    _$iconAtom.reportObserved();
    return super.icon;
  }

  @override
  set icon(IconData value) {
    _$iconAtom.context.conditionallyRunInAction(() {
      super.icon = value;
      _$iconAtom.reportChanged();
    }, _$iconAtom, name: '${_$iconAtom.name}_set');
  }

  final _$isIconAtom = Atom(name: '_DrawerMenuStore.isIcon');

  @override
  bool get isIcon {
    _$isIconAtom.context.enforceReadPolicy(_$isIconAtom);
    _$isIconAtom.reportObserved();
    return super.isIcon;
  }

  @override
  set isIcon(bool value) {
    _$isIconAtom.context.conditionallyRunInAction(() {
      super.isIcon = value;
      _$isIconAtom.reportChanged();
    }, _$isIconAtom, name: '${_$isIconAtom.name}_set');
  }

  final _$isDividerAtom = Atom(name: '_DrawerMenuStore.isDivider');

  @override
  bool get isDivider {
    _$isDividerAtom.context.enforceReadPolicy(_$isDividerAtom);
    _$isDividerAtom.reportObserved();
    return super.isDivider;
  }

  @override
  set isDivider(bool value) {
    _$isDividerAtom.context.conditionallyRunInAction(() {
      super.isDivider = value;
      _$isDividerAtom.reportChanged();
    }, _$isDividerAtom, name: '${_$isDividerAtom.name}_set');
  }

  final _$isOptionAtom = Atom(name: '_DrawerMenuStore.isOption');

  @override
  bool get isOption {
    _$isOptionAtom.context.enforceReadPolicy(_$isOptionAtom);
    _$isOptionAtom.reportObserved();
    return super.isOption;
  }

  @override
  set isOption(bool value) {
    _$isOptionAtom.context.conditionallyRunInAction(() {
      super.isOption = value;
      _$isOptionAtom.reportChanged();
    }, _$isOptionAtom, name: '${_$isOptionAtom.name}_set');
  }

  final _$indexAtom = Atom(name: '_DrawerMenuStore.index');

  @override
  int get index {
    _$indexAtom.context.enforceReadPolicy(_$indexAtom);
    _$indexAtom.reportObserved();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.context.conditionallyRunInAction(() {
      super.index = value;
      _$indexAtom.reportChanged();
    }, _$indexAtom, name: '${_$indexAtom.name}_set');
  }

  final _$selectedAtom = Atom(name: '_DrawerMenuStore.selected');

  @override
  bool get selected {
    _$selectedAtom.context.enforceReadPolicy(_$selectedAtom);
    _$selectedAtom.reportObserved();
    return super.selected;
  }

  @override
  set selected(bool value) {
    _$selectedAtom.context.conditionallyRunInAction(() {
      super.selected = value;
      _$selectedAtom.reportChanged();
    }, _$selectedAtom, name: '${_$selectedAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'description: ${description.toString()},icon: ${icon.toString()},isIcon: ${isIcon.toString()},isDivider: ${isDivider.toString()},isOption: ${isOption.toString()},index: ${index.toString()},selected: ${selected.toString()}';
    return '{$string}';
  }
}
