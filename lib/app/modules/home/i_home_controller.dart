import 'data/models/room_model.dart';

abstract class IHomeController {
  List<RoomModel> dataRooms = [];

  Future<void> fetchAllRooms();

  fetchFilterRooms(bool wifi, bool projetor, int maxAmountPeople);
}