import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'auth/authController.dart';
import 'auth/enum.dart';

class MessageController extends GetxController {
  AuthResultStatus? _status;
  final auth = Get.put(AuthController());

  var isloading = false.obs;
  RxInt countcomplaint = 0.obs;

  Future<AuthResultStatus?> sendComplaint(String text) async {
    await FirebaseFirestore.instance
        .collection('/question')
        .doc('test')//auth.auth.currentUser!.uid
        .collection('/message')
        .add({
      'from':' auth.auth.currentUser!.uid',
      'text': text,
      'time': Timestamp.now(),
      'username': 'sarakpi'//auth.user.read('username')
    }).then((value) {
      _status = AuthResultStatus.successful;
    }).onError((error, stackTrace) {
      _status = AuthResultStatus.undefined;
    });

    return _status;
  }

  void changeisloading(bool val) {
    isloading.value = val;
  }


  Stream<QuerySnapshot> getmessage() {

    return FirebaseFirestore.instance
        .collection('/question')
        .doc('test')//auth.auth.currentUser?.uid
        .collection('/message')
        .orderBy('time', descending: true)
        .snapshots();
  }
}
