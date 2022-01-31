// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_rooms_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ReservedRoomsController on _ReservedRoomsController, Store {
  final _$isCheckedAtom = Atom(name: '_ReservedRoomsController.isChecked');

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  final _$_ReservedRoomsControllerActionController =
      ActionController(name: '_ReservedRoomsController');

  @override
  dynamic setCheckIN() {
    final _$actionInfo = _$_ReservedRoomsControllerActionController.startAction(
        name: '_ReservedRoomsController.setCheckIN');
    try {
      return super.setCheckIN();
    } finally {
      _$_ReservedRoomsControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isChecked: ${isChecked}
    ''';
  }
}
