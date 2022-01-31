// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  final _$dataRoomsAtom = Atom(name: '_HomeController.dataRooms');

  @override
  List<RoomModel> get dataRooms {
    _$dataRoomsAtom.reportRead();
    return super.dataRooms;
  }

  @override
  set dataRooms(List<RoomModel> value) {
    _$dataRoomsAtom.reportWrite(value, super.dataRooms, () {
      super.dataRooms = value;
    });
  }

  final _$fetchAllRoomsAsyncAction =
      AsyncAction('_HomeController.fetchAllRooms');

  @override
  Future<void> fetchAllRooms() {
    return _$fetchAllRoomsAsyncAction.run(() => super.fetchAllRooms());
  }

  final _$fetchFilterRoomsAsyncAction =
      AsyncAction('_HomeController.fetchFilterRooms');

  @override
  Future fetchFilterRooms(bool wifi, bool projetor, int maxAmountPeople) {
    return _$fetchFilterRoomsAsyncAction
        .run(() => super.fetchFilterRooms(wifi, projetor, maxAmountPeople));
  }

  @override
  String toString() {
    return '''
dataRooms: ${dataRooms}
    ''';
  }
}
