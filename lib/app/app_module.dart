import 'package:flutter_modular/flutter_modular.dart';
import 'package:innvitee_app/app/modules/home/home_module.dart';
import 'package:innvitee_app/app/modules/reserved_rooms/reserved_rooms_module.dart';
import 'package:innvitee_app/app/modules/room_details/room_detail_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/room-detail', module: RoomDetailModule()),
        ModuleRoute('/reserved-room', module: ReservedRoomsModule()),
      ];
}
