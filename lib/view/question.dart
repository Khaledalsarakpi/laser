import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laser/controller/MessageController.dart';
import 'package:laser/controller/question_controller.dart';

class QuestionView extends StatelessWidget {
  final com = Get.put(QuestionControllre());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('الاسئلة الشائعة؟'.tr),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: com.get_question(),
        builder: (ctx, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              color: Color.fromRGBO(232, 133, 133, 1),
            ));
          }
          if (snapShot.hasData) {
            log(snapShot.data!.docs.length.toString());
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: snapShot.data?.docs.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: ExpansionTile(
                    iconColor: Color.fromRGBO(232, 133, 133, 1),
                    title: Text(
                      snapShot.data?.docs[index]['question'],
                      style: TextStyle(
                          color: Color.fromRGBO(215, 115, 114, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    children: [
                      Text(
                        snapShot.data?.docs[index]['answer'],
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
