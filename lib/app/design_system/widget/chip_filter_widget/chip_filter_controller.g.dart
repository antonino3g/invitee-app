// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip_filter_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChipFilterController on _ChipFilterController, Store {
  final _$isActiveAtom = Atom(name: '_ChipFilterController.isActive');

  @override
  bool get isActive {
    _$isActiveAtom.reportRead();
    return super.isActive;
  }

  @override
  set isActive(bool value) {
    _$isActiveAtom.reportWrite(value, super.isActive, () {
      super.isActive = value;
    });
  }

  final _$_ChipFilterControllerActionController =
      ActionController(name: '_ChipFilterController');

  @override
  dynamic changeFilter(dynamic value) {
    final _$actionInfo = _$_ChipFilterControllerActionController.startAction(
        name: '_ChipFilterController.changeFilter');
    try {
      return super.changeFilter(value);
    } finally {
      _$_ChipFilterControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isActive: ${isActive}
    ''';
  }
}
