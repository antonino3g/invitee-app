import 'package:innvitee_app/app/modules/home/data/models/room_model.dart';

abstract class IRoomRepository {
  Future<List<RoomModel>> fetch();
}
