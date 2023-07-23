import 'package:cloud_firestore/cloud_firestore.dart';

class ParkingModel {
  final String number;
  final bool client;
  final bool portal;

  const ParkingModel(
      {required this.client, required this.portal, required this.number});

  toJson() {
    return {"number": number, "client": client, "portal": portal};
  }

  factory ParkingModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return ParkingModel(
        number: data['number'], client: data['client'], portal: data['portal']);
  }
}
