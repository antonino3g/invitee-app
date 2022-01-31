import 'package:flutter_modular/flutter_modular.dart';
import 'package:innvitee_app/app/modules/home/data/repositories/mock_room_repository.dart';
import 'package:innvitee_app/app/modules/home/home_controller.dart';
import 'package:innvitee_app/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [Bind((i) => HomeController(MockRoomRepository()))];

  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => HomePage()),
      ];
}
