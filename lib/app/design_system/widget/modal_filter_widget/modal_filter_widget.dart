import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:innvitee_app/app/design_system/widget/chip_choice_widget/chip_choice_widget.dart';
import 'package:innvitee_app/app/design_system/widget/chip_filter_widget/chip_filter_widget.dart';
import 'package:innvitee_app/app/modules/home/home_controller.dart';

class ModalFilter extends StatelessWidget {
  final HomeController homeController;
  const ModalFilter({Key? key, required this.homeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    int maxAmountPeople = 0;
    bool withWiFI = false;
    bool withProjector = false;

    void setAmountPeople(value) {
      switch (value) {
        case 1:
          maxAmountPeople = 4;
          break;
        case 2:
          maxAmountPeople = 8;
          break;
        case 3:
          maxAmountPeople = 12;
          break;
        case 4:
          maxAmountPeople = 16;
          break;
        default:
          maxAmountPeople = 0;
      }
      print(maxAmountPeople);
    }

    void setWiFI() {
      withWiFI = !withWiFI;
    }

    void setProjector() {
      withProjector = !withProjector;
    }

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: width * 5, vertical: height * 3),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'Atributos da sala',
              style: GoogleFonts.nunito(
                  fontSize: height * 1.6, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 2),
            child: Wrap(
              spacing: width * 5,
              children: [
                ChipFilterWidget(
                  title: 'Projetor',
                  setAtribute: () {
                    setProjector();
                  },
                ),
                ChipFilterWidget(
                  title: 'Wi-Fi',
                  setAtribute: () {
                    setWiFI();
                  },
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              'Quantidade de pessoas',
              style: GoogleFonts.nunito(
                  fontSize: height * 1.6, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 2),
            child: ChipChoiceWidget(
              dataChips: ['2 - 4', '5 - 8', '9 - 12', '13 - 16'],
              setPeople: setAmountPeople,
            ),
          ),
          SizedBox(
            child: ElevatedButton.icon(
              onPressed: () {
                homeController.fetchFilterRooms(
                    withWiFI, withProjector, maxAmountPeople);
                Navigator.pop(context);
              },
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 5),
                child: Icon(Icons.filter_list),
              ),
              label: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 5),
                child: Text(
                  'Aplicar',
                  style: GoogleFonts.nunito(
                      fontSize: height * 1.5, fontWeight: FontWeight.w700),
                ),
              ),
              style: TextButton.styleFrom(backgroundColor: Color(0XFF593E9D)),
            ),
          )
        ],
      ),
    );
  }
}
