// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MobxS on MobxStateManagement, Store {
  final _$totalAtom = Atom(name: 'MobxStateManagement.total');

  @override
  int get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(int value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$imageChangedNameAtom =
      Atom(name: 'MobxStateManagement.imageChangedName');

  @override
  String get imageChangedName {
    _$imageChangedNameAtom.reportRead();
    return super.imageChangedName;
  }

  @override
  set imageChangedName(String value) {
    _$imageChangedNameAtom.reportWrite(value, super.imageChangedName, () {
      super.imageChangedName = value;
    });
  }

  final _$imageonboardAtom = Atom(name: 'MobxStateManagement.imageonboard');

  @override
  String get imageonboard {
    _$imageonboardAtom.reportRead();
    return super.imageonboard;
  }

  @override
  set imageonboard(String value) {
    _$imageonboardAtom.reportWrite(value, super.imageonboard, () {
      super.imageonboard = value;
    });
  }

  final _$imageisloadingAtom = Atom(name: 'MobxStateManagement.imageisloading');

  @override
  bool get imageisloading {
    _$imageisloadingAtom.reportRead();
    return super.imageisloading;
  }

  @override
  set imageisloading(bool value) {
    _$imageisloadingAtom.reportWrite(value, super.imageisloading, () {
      super.imageisloading = value;
    });
  }

  final _$isPressedAsyncAction = AsyncAction('MobxStateManagement.isPressed');

  @override
  Future<void> isPressed() {
    return _$isPressedAsyncAction.run(() => super.isPressed());
  }

  final _$MobxStateManagementActionController =
      ActionController(name: 'MobxStateManagement');

  @override
  void add(Products products) {
    final _$actionInfo = _$MobxStateManagementActionController.startAction(
        name: 'MobxStateManagement.add');
    try {
      return super.add(products);
    } finally {
      _$MobxStateManagementActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$MobxStateManagementActionController.startAction(
        name: 'MobxStateManagement.increment');
    try {
      return super.increment();
    } finally {
      _$MobxStateManagementActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete(Products products) {
    final _$actionInfo = _$MobxStateManagementActionController.startAction(
        name: 'MobxStateManagement.delete');
    try {
      return super.delete(products);
    } finally {
      _$MobxStateManagementActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total},
imageChangedName: ${imageChangedName},
imageonboard: ${imageonboard},
imageisloading: ${imageisloading}
    ''';
  }
}
