import 'package:flutter/material.dart';

class IconAtributesWidget extends StatelessWidget {
  final String atribute;
  const IconAtributesWidget({
    Key? key,
    required this.atribute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (atribute) {
      case 'Wi-Fi':
        return Icon(Icons.wifi);
      case 'Ar-condicionado':
        return Icon(Icons.ac_unit_rounded);
      case 'TV':
        return Icon(Icons.tv);
      case 'Quadro':
        return Icon(Icons.article_outlined);
      case 'Projetor':
        return Icon(Icons.center_focus_weak_rounded);
      default:
        return Icon(Icons.add);
    }
  }
}