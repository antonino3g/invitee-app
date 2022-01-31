import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innvitee_app/app/design_system/widget/card_room_widget/card_room_widget.dart';
import 'package:innvitee_app/app/design_system/widget/modal_filter_widget/modal_filter_widget.dart';
import 'package:innvitee_app/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  // ignore: must_call_super
  void initState() {
    controller.fetchAllRooms();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: Color(0XFFF6F7FC),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0XFF492E8D),
        title: Text(
          'Invitee',
          style: GoogleFonts.nunito(
              fontSize: height * 2.5, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: height * 2),
        child: Column(
          children: [
            Material(
              elevation: 2,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Container(
                width: width * 88,
                child: InkWell(
                  onTap: () => showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(height * 2))),
                      builder: (context) => ModalFilter(
                            homeController: controller,
                          )),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Encontre sua sala de reunião',
                          style: GoogleFonts.nunito(
                              fontSize: height * 1.6,
                              fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 2,
            ),
            Observer(
              builder: (_) {
                return Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: controller.dataRooms.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: height * 3),
                    itemBuilder: (context, index) {
                      return controller.dataRooms.length == 0
                          ? Text(
                              'Nenhuma sala encontrada',
                            )
                          : Container(
                              padding: EdgeInsets.only(
                                  left: width * 6,
                                  right: width * 6,
                                  top: index == 0 ? height * 2 : 0,
                                  bottom:
                                      index == controller.dataRooms.length - 1
                                          ? height * 2
                                          : 0),
                              child: InkWell(
                                  onTap: () => Modular.to.pushNamed(
                                      '/room-detail/',
                                      arguments: controller.dataRooms[index]),
                                  child: CardRoom(
                                    dataRoom: controller.dataRooms[index],
                                  )));
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.fetchAllRooms(),
        backgroundColor: Color(0XFF492E8D),
        child: Icon(Icons.home),
      ),
    );
  }
}
