import 'package:app_sipadas_um/src/model/parking_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ParkingController extends GetxController {
  static ParkingController get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<ParkingModel>> getParking() async {
    final snapshot = await _db.collection("system-parking").get();
    final parkingData =
        snapshot.docs.map((e) => ParkingModel.fromSnapshot(e)).toList();
    return parkingData;
  }
}
