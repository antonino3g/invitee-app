import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:innvitee_app/app/design_system/widget/chip_choice_widget/chip_choice_controller.dart';

class ChipChoiceWidget extends StatelessWidget {
  final List<String> dataChips;
  final Function setPeople;

  const ChipChoiceWidget({
    Key? key,
    required this.dataChips,
    required this.setPeople,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ChipChoiceController();

    return Observer(
      builder: (_) {
        return Wrap(
          spacing: MediaQuery.of(context).size.width * 0.05,
          children: List<Widget>.generate(
            dataChips.length,
            (int index) {
              return ChoiceChip(
                avatar: CircleAvatar(
                  child: Icon(
                    Icons.people,
                    color: Color(0XFF593E9D),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                label: Text(
                  '${dataChips[index]}',
                  style: GoogleFonts.nunito(
                      fontSize: MediaQuery.of(context).size.height * 0.013,
                      fontWeight: FontWeight.w700),
                ),
                selected: controller.value == index + 1,
                onSelected: (bool selected) {
                  controller.changeSelected(selected, index);
                  setPeople(controller.value);
                },
              );
            },
          ).toList(),
        );
      },
    );
  }
}
