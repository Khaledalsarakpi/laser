import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'auth/enum.dart';

class QuestionControllre extends GetxController {
  var storage=GetStorage();
  Stream<QuerySnapshot> get_question() {
    var local=storage.read('code');
    log(local);
    var res = FirebaseFirestore.instance.collection('/question').doc(local).collection('/qu').orderBy('time',descending: false).snapshots();
    return res;
  }

}
