import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../view/message/chatScreen.dart';
import 'auth/authController.dart';
import 'auth/authhandlerror.dart';
import 'auth/enum.dart';

class MessageController extends GetxController {
  AuthResultStatus? _status;
  final auth = Get.put(AuthController());

  var isloading = false.obs;
  RxInt countcomplaint = 0.obs;

  Future<AuthResultStatus?> sendComplaint(String text) async {
    await FirebaseFirestore.instance
        .collection('/chat')
        .doc(auth.auth.currentUser!.uid) //auth.auth.currentUser!.uid
        .collection('/message')
        .add({
      'from': auth.auth.currentUser!.uid,
      'text': text,
      'time': Timestamp.now(),
      'username': auth.auth.currentUser!.email
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
        .collection('/chat')
        .doc(auth.auth.currentUser?.uid) //auth.auth.currentUser?.uid
        .collection('/message')
        .orderBy('time', descending: true)
        .snapshots();
  }

  Future<AuthResultStatus?> startComplaint() async {
    try {
      isloading.value = true;
      {
        await FirebaseFirestore.instance
            .collection('/chat')
            .doc(auth.auth.currentUser?.uid)
            .set({
          'from': auth.auth.currentUser!.uid,
          'username': auth.auth.currentUser!.email,
          'time': Timestamp.now(),
          'show': false
        }).then((value) {
          Get.to(Chatscreen(),
              transition: Transition.leftToRight,
              duration: Duration(seconds: 1));
          _status = AuthResultStatus.successful;
        }).onError((error, stackTrace) {
          _status = AuthResultStatus.undefined;
        });
      }
    } catch (e) {
      print(e);
      _status = AuthExceptionHandler.handleException(e);
    } finally {
      isloading.value = false;
    }
    return _status;
  }
}
