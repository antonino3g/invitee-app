import 'package:mobx/mobx.dart';

part 'reserved_rooms_controller.g.dart';

class ReservedRoomsController = _ReservedRoomsController with _$ReservedRoomsController;

abstract class _ReservedRoomsController with Store {

  @observable
  bool isChecked = false;

  @action
  setCheckIN() {
    isChecked = true;
  }
}