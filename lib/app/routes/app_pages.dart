import 'package:get/get.dart';
import 'package:innvitee_app/app/routes/app_routes.dart';
import 'package:innvitee_app/app/ui/android/details_reserves/details_reserves.dart';
import 'package:innvitee_app/app/ui/android/home/homePage.dart';
import 'package:innvitee_app/app/ui/android/room_details/room_datails.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(name: Routes.ROOM_DETAILS, page: () => RoomDetails()),
    GetPage(name: Routes.DETAILS_RESERVES, page: () => DetailsReserves())
  ];
}
