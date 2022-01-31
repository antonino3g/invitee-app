import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innvitee_app/app/design_system/widget/modal_reserve_room/modal_reserve_room.dart';
import 'package:innvitee_app/app/modules/home/data/models/date_model.dart';
import 'package:innvitee_app/app/modules/home/data/models/room_model.dart';

class CardDetailsDate extends StatelessWidget {
  final DateModel date;
  final RoomModel room;

  const CardDetailsDate({
    Key? key,
    required this.date,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Material(
      elevation: 2,
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: Container(
        width: width * 88,
        child: InkWell(
          onTap: () => showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(height * 2))),
              builder: (context) => ModalResreveRoom(
                    room: room,
                    date: date,
                  )),
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
                              fontSize: height * 3,
                              color: Color(0XFF492E8D),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${date.month}',
                          style: GoogleFonts.nunito(
                              fontSize: height * 1.8,
                              color: Color(0XFF492E8D),
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${date.startTime}',
                            style: GoogleFonts.nunito(
                                fontSize: height * 1.8,
                                color: Color(0XFF492E8D),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            ' - ',
                            style: GoogleFonts.nunito(
                                fontSize: height * 1.8,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '${date.endTime}',
                            style: GoogleFonts.nunito(
                                fontSize: height * 1.8,
                                color: Color(0XFF492E8D),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
