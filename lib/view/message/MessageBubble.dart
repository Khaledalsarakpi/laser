import 'package:bubble/bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as dt;

import '../../constant/constant.dart';

class MessageBubble extends StatelessWidget {

  final Key? key;
  final String? message;
  final String? username;
  final bool? isme;
  final Timestamp? date;
  MessageBubble({this.key, this.message, this.username, this.isme, this.date});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Bubble(
        margin: BubbleEdges.only(top: 10),
        alignment: isme! ? Alignment.topRight : Alignment.topLeft,
        nip: isme! ? BubbleNip.rightBottom : BubbleNip.leftBottom,
        color: isme!? Color.fromRGBO(252, 216, 221, 1.0):Color.fromRGBO(
            248, 184, 193, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message!,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 14),
            ),
            Text(
              retdate(date!),
              textDirection: TextDirection.rtl,
              style: TextStyle(color: Color.fromRGBO(215, 115, 114, 1.0), fontSize: 8),
            )
          ],
        ),
      ),
    );
  }
}
