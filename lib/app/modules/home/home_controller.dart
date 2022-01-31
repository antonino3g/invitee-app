import 'package:innvitee_app/app/modules/home/data/repositories/i_room_repository.dart';
import 'package:mobx/mobx.dart';

import 'data/models/room_model.dart';
import 'i_home_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store implements IHomeController {
  final IRoomRepository repository;
  _HomeController(this.repository);

  @observable
  List<RoomModel> dataRooms = [];

  @action
  Future<void> fetchAllRooms() async {
    dataRooms = await repository.fetch();
  }

  @action
  fetchFilterRooms(bool wifi, bool projetor, int maxAmountPeople) async {
    await fetchAllRooms();

    List<RoomModel> filterRoom = dataRooms;
    dataRooms = [];

    for (var i = 0; i < filterRoom.length; i++) {
      if (maxAmountPeople != 0) {
        if (filterRoom[i].maxAmountPeople == maxAmountPeople) {
          if (projetor && wifi) {
            bool hasWiFi = false;
            bool hasProjector = false;

            filterRoom[i].attributes.forEach((atribute) {
              if (atribute == 'Wi-Fi') {
                hasWiFi = true;
              }
              if (atribute == 'Projetor') {
                hasProjector = true;
              }
            });
            if (hasWiFi && hasProjector) {
              dataRooms.add(filterRoom[i]);
            }
          } else if (wifi) {
            filterRoom[i].attributes.forEach((atribute) {
              if (atribute == 'Wi-Fi') {
                dataRooms.add(filterRoom[i]);
              }
            });
          } else if (projetor) {
            filterRoom[i].attributes.forEach((atribute) {
              if (atribute == 'Projetor') {
                dataRooms.add(filterRoom[i]);
              }
            });
          } else {
            dataRooms.add(filterRoom[i]);
          }
        }
      } else {
        if (projetor && wifi) {
          bool hasWiFi = false;
          bool hasProjector = false;

          filterRoom[i].attributes.forEach((atribute) {
            if (atribute == 'Wi-Fi') {
              hasWiFi = true;
            }
            if (atribute == 'Projetor') {
              hasProjector = true;
            }
          });
          if (hasWiFi && hasProjector) {
            dataRooms.add(filterRoom[i]);
          }
        } else if (wifi) {
          filterRoom[i].attributes.forEach((atribute) {
            if (atribute == 'Wi-Fi') {
              dataRooms.add(filterRoom[i]);
            }
          });
        } else if (projetor) {
          filterRoom[i].attributes.forEach((atribute) {
            if (atribute == 'Projetor') {
              dataRooms.add(filterRoom[i]);
            }
          });
        } else {
          await fetchAllRooms();
        }
      }
    }
  }
}
