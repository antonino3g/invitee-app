import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:innvitee_app/app/design_system/widget/chip_filter_widget/chip_filter_controller.dart';

class ChipFilterWidget extends StatelessWidget {
  final String title;
  final Function setAtribute;

  const ChipFilterWidget({
    Key? key,
    required this.title,
    required this.setAtribute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ChipFilterController();

    return Observer(
      builder: (_) {
        return FilterChip(
          checkmarkColor: Color(0XFF593E9D),
          label: Text(
            '$title',
            style: GoogleFonts.nunito(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.w600),
          ),
          onSelected: (value) {
            controller.changeFilter(value);
            setAtribute();
          },
          selected: controller.isActive,
        );
      },
    );
  }
}
