// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip_choice_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChipChoiceController on _ChipChoiceController, Store {
  final _$valueAtom = Atom(name: '_ChipChoiceController.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_ChipChoiceControllerActionController =
      ActionController(name: '_ChipChoiceController');

  @override
  dynamic changeSelected(bool selected, dynamic index) {
    final _$actionInfo = _$_ChipChoiceControllerActionController.startAction(
        name: '_ChipChoiceController.changeSelected');
    try {
      return super.changeSelected(selected, index);
    } finally {
      _$_ChipChoiceControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
