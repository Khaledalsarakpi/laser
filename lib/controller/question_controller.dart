import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'auth/enum.dart';

class QuestionControllre extends GetxController {
  Stream<QuerySnapshot> get_question() {
    var res = FirebaseFirestore.instance.collection('/question').orderBy('time',descending: false).snapshots();
    return res;
  }

}
