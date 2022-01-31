import 'dart:convert';

class DateModel {
  final String month;
  final String day;
  final String startTime;
  final String endTime;

  DateModel({required this.month, required this.day, required this.startTime, required this.endTime});

  Map<String, dynamic> toMap() {
    return {
      'month': month,
      'day': day,
      'startTime': startTime,
      'endTime': endTime,
    };
  }

  factory DateModel.fromMap(Map<String, dynamic> map) {
    return DateModel(
      month: map['month'],
      day: map['day'],
      startTime: map['startTime'],
      endTime: map['endTime'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DateModel.fromJson(String source) => DateModel.fromMap(json.decode(source));
}
