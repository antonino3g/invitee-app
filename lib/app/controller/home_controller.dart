import 'package:get/get.dart';
import 'package:innvitee_app/app/data/model/room_model_card.dart';
import 'package:innvitee_app/app/data/provider/mock_data_room.dart';

class HomeController extends GetxController {
  final listRoom = <RoomCardModel>[].obs;
  final MockProvider mockProvider = MockProvider();

  void getLisRoom() async {
    final response = await mockProvider.fetchDataRoom();
    listRoom.assignAll(response);
  }
}
