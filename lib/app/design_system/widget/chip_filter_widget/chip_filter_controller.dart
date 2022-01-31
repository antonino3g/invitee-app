import 'package:mobx/mobx.dart';

part 'chip_filter_controller.g.dart';

class ChipFilterController = _ChipFilterController with _$ChipFilterController;

abstract class _ChipFilterController with Store {

  @observable
  bool isActive = false;

  @action
  changeFilter(value) {
    isActive = value;
  }
}