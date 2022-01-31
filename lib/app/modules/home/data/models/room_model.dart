import 'dart:convert';

import 'package:innvitee_app/app/modules/home/data/models/date_model.dart';

class RoomModel {
  final String name;
  final String address;
  final String direction;
  final String image;
  final int maxAmountPeople;
  final List<String> attributes;
  final List<DateModel> dates;

  RoomModel({
    required this.name,
    required this.address,
    required this.direction,
    required this.image,
    required this.maxAmountPeople,
    required this.attributes,
    required this.dates,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
      'direction': direction,
      'image': image,
      'maxAmountPeople': maxAmountPeople,
      'attributes': attributes,
      'dates': dates.map((x) => x.toMap()).toList(),
    };
  }

  factory RoomModel.fromMap(Map<String, dynamic> map) {
    return RoomModel(
      name: map['name'],
      address: map['address'],
      direction: map['direction'],
      image: map['image'],
      maxAmountPeople: map['maxAmountPeople'],
      attributes: List<String>.from(map['attributes']),
      dates:
          List<DateModel>.from(map['dates']?.map((x) => DateModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomModel.fromJson(String source) =>
      RoomModel.fromMap(json.decode(source));
}
