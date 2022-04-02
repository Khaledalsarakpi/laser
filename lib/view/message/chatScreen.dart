import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'Message.dart';
import '../../controller/auth/authController.dart';
import 'NewMessage.dart';

class Chatscreen extends StatelessWidget {
  final auth = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("قسم الدردشة"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        bottom: AppBar(
          title: Text('إرسال سؤال'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(bottom: 100),
        child: Message(),
      ),
      floatingActionButton: NewMessage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
