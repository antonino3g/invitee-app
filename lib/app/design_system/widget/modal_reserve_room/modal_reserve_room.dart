import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:innvitee_app/app/design_system/widget/modal_reserve_room/modal_reserve_controller.dart';
import 'package:innvitee_app/app/modules/home/data/models/date_model.dart';
import 'package:innvitee_app/app/modules/home/data/models/room_model.dart';

class ModalResreveRoom extends StatelessWidget {
  final RoomModel room;
  final DateModel date;

  const ModalResreveRoom({
    Key? key,
    required this.room,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    final controller = ModalReserveController();

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width * 5, vertical: height * 2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            elevation: 2,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Container(
              width: width * 88,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: height * 2, horizontal: width * 2),
                child: Row(
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
                        padding: EdgeInsets.symmetric(horizontal: width * 2),
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
                        padding: EdgeInsets.only(left: width * 5),
                        child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Icon(Icons.apartment_rounded),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: width * 1),
                                        child: Text('${room.address}'),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.alarm),
                                    Padding(
                                      padding: EdgeInsets.only(left: width * 1),
                                      child: Text(
                                        '${date.startTime}',
                                        style: GoogleFonts.nunito(
                                            fontSize: height * 1.2,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Text(
                                      ' - ',
                                      style: GoogleFonts.nunito(
                                          fontSize: height * 1.2,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      '${date.endTime}',
                                      style: GoogleFonts.nunito(
                                          fontSize: height * 1.2,
                                          fontWeight: FontWeight.w700),
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
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 1.5),
              child: Text(
                'Tipo da reserva',
                style: GoogleFonts.nunito(
                    fontSize: width * 4, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 2),
              child: Observer(builder: (_) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => controller.setTypeOfReserve(),
                      child: Container(
                        width: width * 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: controller.isWork
                                    ? Color(0XFF492E8D)
                                    : Colors.transparent)),
                        child: Padding(
                          padding: EdgeInsets.all(width * 2),
                          child: Column(
                            children: [
                              Icon(
                                Icons.badge_outlined,
                                size:
                                    controller.isWork ? width * 14 : width * 12,
                              ),
                              Text(
                                'Estação de trabalho',
                                style: GoogleFonts.nunito(
                                    color: Color(0XFF492E8D),
                                    fontSize: controller.isWork
                                        ? width * 2.5
                                        : width * 2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.setTypeOfReserve(),
                      child: Container(
                        width: width * 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3,
                                color: controller.isMeeting
                                    ? Color(0XFF492E8D)
                                    : Colors.transparent)),
                        child: Padding(
                          padding: EdgeInsets.all(width * 2),
                          child: Column(
                            children: [
                              Icon(
                                Icons.groups_outlined,
                                size: controller.isMeeting
                                    ? width * 14
                                    : width * 12,
                              ),
                              Text(
                                'Reunião',
                                style: GoogleFonts.nunito(
                                    color: Color(0XFF492E8D),
                                    fontSize: controller.isWork
                                        ? width * 2.5
                                        : width * 2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              final reserveRoom = [room, date];
              Modular.to.navigate('/reserved-room', arguments: reserveRoom);
            },
            icon: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 5),
              child: Icon(Icons.alarm),
            ),
            label: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 5),
              child: Text(
                'Reservar',
                style: GoogleFonts.nunito(
                    fontSize: height * 1.5, fontWeight: FontWeight.w700),
              ),
            ),
            style: TextButton.styleFrom(backgroundColor: Color(0XFF593E9D)),
          ),
        ],
      ),
    );
  }
}
