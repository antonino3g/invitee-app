import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innvitee_app/app/design_system/widget/card_room_widget/card_room_widget.dart';
import 'package:innvitee_app/app/modules/reserved_rooms/reserved_rooms_controller.dart';

class ReservedRoomsPage extends StatefulWidget {
  final List data;

  const ReservedRoomsPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  _RoomDetailPageState createState() => _RoomDetailPageState(data);
}

class _RoomDetailPageState
    extends ModularState<ReservedRoomsPage, ReservedRoomsController> {
  final List data;

  _RoomDetailPageState(this.data);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    final room = data[0];
    final date = data[1];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 6, vertical: height * 2),
              child: Container(
                child: Column(
                  children: [
                    CardRoom(dataRoom: room),
                    SizedBox(
                      height: height * 1,
                    ),
                    Observer(builder: (_) {
                      return Material(
                        elevation: 5,
                        shadowColor:
                            controller.isChecked ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          width: width * 88,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 2, horizontal: width * 2),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                          color: Color(0XFF492E8D),
                                          width: 2,
                                        )),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: width * 2),
                                        child: Column(
                                          children: [
                                            Text(
                                              '${date.day}',
                                              style: GoogleFonts.nunito(
                                                  fontSize: height * 2,
                                                  color: Color(0XFF492E8D),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '${date.month}',
                                              style: GoogleFonts.nunito(
                                                  fontSize: height * 1.5,
                                                  color: Color(0XFF492E8D),
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 5),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Container(
                                            child: Column(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons
                                                          .apartment_rounded),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left:
                                                                    width * 1),
                                                        child: Text(
                                                            '${room.address}'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.alarm),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 1),
                                                      child: Text(
                                                        '${date.startTime}',
                                                        style:
                                                            GoogleFonts.nunito(
                                                                fontSize:
                                                                    height *
                                                                        1.2,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                      ),
                                                    ),
                                                    Text(
                                                      ' - ',
                                                      style: GoogleFonts.nunito(
                                                          fontSize:
                                                              height * 1.2,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    Text(
                                                      '${date.endTime}',
                                                      style: GoogleFonts.nunito(
                                                          fontSize:
                                                              height * 1.2,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: height * 2),
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        if (!controller.isChecked) {
                                          controller.setCheckIN();
                                        } else {
                                          Modular.to.navigate('/');
                                        }
                                      },
                                      icon: Icon(Icons.check),
                                      label: controller.isChecked
                                          ? Text('Finalizar reserva')
                                          : Text('Checkin'),
                                      style: TextButton.styleFrom(
                                          backgroundColor: controller.isChecked
                                              ? Colors.green
                                              : Colors.red),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
