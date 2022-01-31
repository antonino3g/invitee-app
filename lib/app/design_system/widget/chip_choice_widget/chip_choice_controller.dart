import 'package:mobx/mobx.dart';

part 'chip_choice_controller.g.dart';

class ChipChoiceController = _ChipChoiceController with _$ChipChoiceController;

abstract class _ChipChoiceController with Store {

  @observable
  late int value = 0;

  @action
  changeSelected(bool selected, index) {
    value = selected ? index + 1 : value;
  }
}