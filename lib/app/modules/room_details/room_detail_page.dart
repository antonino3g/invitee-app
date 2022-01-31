import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innvitee_app/app/design_system/widget/card_details_date/card_details_date.dart';
import 'package:innvitee_app/app/design_system/widget/icon_atributes_widget/icon_atributes_widget.dart';
import 'package:innvitee_app/app/modules/home/data/models/room_model.dart';

class RoomDetailPage extends StatefulWidget {
  final RoomModel room;

  const RoomDetailPage({Key? key, required this.room}) : super(key: key);

  @override
  _RoomDetailPageState createState() => _RoomDetailPageState(room);
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  final RoomModel room;

  _RoomDetailPageState(this.room);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Scaffold(
        backgroundColor: Color(0XFFF6F7FC),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('${room.image}'), fit: BoxFit.fill),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(height * 4))),
                height: height * 30,
                child: Padding(
                  padding: EdgeInsets.only(top: height * 2, left: width * 4),
                  child: InkWell(
                    onTap: () => Modular.to.pop(),
                    child: Icon(Icons.arrow_back,
                        color: Colors.black, size: height * 3),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 5),
                child: Column(
                  children: [
                    Container(
                      width: width * 100,
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 2),
                        child: Text(
                          'Sala de reunião ${room.name}',
                          style: GoogleFonts.nunito(
                              fontSize: height * 2.5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${room.address}',
                              style: GoogleFonts.nunito(
                                  fontSize: height * 1.3,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Text(
                              '${room.direction}',
                              style: GoogleFonts.nunito(
                                  fontSize: height * 1.3,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: height * 1.5),
                        child: Text(
                          'Até ${room.maxAmountPeople} pessoas',
                          style: GoogleFonts.nunito(
                              fontSize: height * 1.3,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 100,
                      child: Text(
                        'Atributos',
                        style: GoogleFonts.nunito(
                            fontSize: height * 2.5,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                        height: height * 5,
                        child: ListView.separated(
                          separatorBuilder: (_, index) =>
                              SizedBox(width: width * 2),
                          scrollDirection: Axis.horizontal,
                          itemCount: room.attributes.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: width * 1),
                              child: Row(
                                children: [
                                  IconAtributesWidget(
                                      atribute: room.attributes[index]),
                                  SizedBox(
                                    width: width * 2,
                                  ),
                                  Text(
                                    room.attributes[index],
                                    style: GoogleFonts.nunito(
                                        color: Color(0XFF492E8D),
                                        fontSize: width * 3,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 5),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: room.dates.length,
                    separatorBuilder: (_, i) => SizedBox(
                      height: height * 2,
                    ),
                    itemBuilder: (_, i) {
                      return CardDetailsDate(
                        date: room.dates[i],
                        room: room,
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
