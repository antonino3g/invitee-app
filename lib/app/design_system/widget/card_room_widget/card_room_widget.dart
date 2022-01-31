import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innvitee_app/app/modules/home/data/models/room_model.dart';

class CardRoom extends StatelessWidget {
  const CardRoom({
    Key? key,
    required this.dataRoom,
  }) : super(key: key);

  final RoomModel dataRoom;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(5, 1),
            )
          ]),
      child: Column(
        children: [
          Container(
            height: height * 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('${dataRoom.image}'), fit: BoxFit.fill)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: height * 1, horizontal: width * 1),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sala de Reunião ${dataRoom.name}',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              fontSize: height * 1.8),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0XFF492E8D),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: height * 0.3, horizontal: width * 8),
                            child: Text(
                              '${dataRoom.direction}',
                              style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: height * 1),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0XFF492E8D),
                          ),
                          Text(
                            '${dataRoom.address}',
                            style: GoogleFonts.nunito(fontSize: height * 1.3),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height * 2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: dataRoom.attributes.length,
                      itemBuilder: (_, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                              color: Colors.black,
                              width: 1,
                            )),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 1),
                            child: Text(
                              '${dataRoom.attributes[index]}',
                              style: GoogleFonts.nunito(
                                  color: Color(0XFF492E8D),
                                  fontWeight: FontWeight.w700,
                                  fontSize: width * 3),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
