import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class ExplorerController extends GetxController
{
  Stream<QuerySnapshot> get_video() {
    var res = FirebaseFirestore.instance.collection('/video').snapshots();
    return res;
  }
}