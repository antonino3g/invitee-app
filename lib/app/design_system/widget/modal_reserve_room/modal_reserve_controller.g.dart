// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_reserve_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ModalReserveController on _ModalReserveController, Store {
  final _$isWorkAtom = Atom(name: '_ModalReserveController.isWork');

  @override
  bool get isWork {
    _$isWorkAtom.reportRead();
    return super.isWork;
  }

  @override
  set isWork(bool value) {
    _$isWorkAtom.reportWrite(value, super.isWork, () {
      super.isWork = value;
    });
  }

  final _$isMeetingAtom = Atom(name: '_ModalReserveController.isMeeting');

  @override
  bool get isMeeting {
    _$isMeetingAtom.reportRead();
    return super.isMeeting;
  }

  @override
  set isMeeting(bool value) {
    _$isMeetingAtom.reportWrite(value, super.isMeeting, () {
      super.isMeeting = value;
    });
  }

  final _$_ModalReserveControllerActionController =
      ActionController(name: '_ModalReserveController');

  @override
  dynamic setTypeOfReserve() {
    final _$actionInfo = _$_ModalReserveControllerActionController.startAction(
        name: '_ModalReserveController.setTypeOfReserve');
    try {
      return super.setTypeOfReserve();
    } finally {
      _$_ModalReserveControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isWork: ${isWork},
isMeeting: ${isMeeting}
    ''';
  }
}
