import 'package:flutter_modular/flutter_modular.dart';
import 'package:innvitee_app/app/modules/reserved_rooms/reserved_rooms_controller.dart';
import 'package:innvitee_app/app/modules/reserved_rooms/reserved_rooms_page.dart';

class ReservedRoomsModule extends Module {
  @override
  final List<Bind> binds = [Bind((i) => ReservedRoomsController())];

  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (_, args) => ReservedRoomsPage(
                  data: args.data,
                )),
      ];
}
