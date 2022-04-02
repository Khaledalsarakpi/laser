import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laser/controller/MessageController.dart';
import 'MessageBubble.dart';

class Message extends StatelessWidget {
  final com = Get.put(MessageController());
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: com.getmessage(),
      builder: (ctx, snapShot) {
        if (snapShot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapShot.hasData) {
          log(snapShot.data!.docs.length.toString());
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            reverse: true,
            itemCount: snapShot.data?.docs.length,
            itemBuilder: (ctx, index) {
              return MessageBubble(
                key: ValueKey(snapShot.data?.docs[index].id),
                isme: snapShot.data?.docs[index]['from'] ==
                    FirebaseAuth.instance.currentUser?.uid,
                username: snapShot.data?.docs[index]['username'].toString(),
                message: snapShot.data?.docs[index]['text'].toString(),
                date: snapShot.data?.docs[index]['time'],
              );
            },
          );
        }
        return Container();
      },
    );
  }
}
