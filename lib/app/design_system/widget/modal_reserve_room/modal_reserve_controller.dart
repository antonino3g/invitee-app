import 'package:mobx/mobx.dart';

part 'modal_reserve_controller.g.dart';

class ModalReserveController = _ModalReserveController with _$ModalReserveController;

abstract class _ModalReserveController with Store {

  @observable
  bool isWork = true;

  @observable
  bool isMeeting = false;

  @action
  setTypeOfReserve() {
    isWork = !isWork;
    isMeeting = !isMeeting;
  }
}