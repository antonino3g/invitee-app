import 'package:flutter_modular/flutter_modular.dart';
import 'package:innvitee_app/app/modules/room_details/room_detail_page.dart';

class RoomDetailModule extends Module {
  @override
  final List<Bind> binds = [];

  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (_, args) => RoomDetailPage(
                  room: args.data,
                )),
      ];
}
