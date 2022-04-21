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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('قسم الدردشة'.tr),
        backgroundColor: Color.fromRGBO(250, 193, 192, 1.0),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: Message(),
      ),
      floatingActionButton: NewMessage(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
