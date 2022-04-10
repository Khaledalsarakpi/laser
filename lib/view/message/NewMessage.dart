import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:laser/controller/MessageController.dart';

class NewMessage extends StatefulWidget {
  NewMessage();

  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _controller = TextEditingController();
  final com = Get.put(MessageController());
  var send = false;
  String _enteredMessage = '';

  _sendMessage() async {
    if (!send) {
      com.startComplaint();
      send = true;
    }
    com.sendComplaint(_enteredMessage);
    setState(() {
      _enteredMessage = '';
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.all(8),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: TextField(
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  minLines: 1,
                  maxLines: 5,
                  cursorColor: Colors.blue,
                  controller: _controller,
                  decoration: InputDecoration(
                      labelText: 'إرسال رسالة'.tr,
                      focusColor: Color.fromRGBO(215, 115, 114, 1.0),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(215, 115, 114, 1.0),
                          )),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(215, 115, 114, 1.0),
                          )),
                      labelStyle: TextStyle(
                          fontSize: 18.sp,
                          color: Color.fromRGBO(215, 115, 114, 1.0)),
                      fillColor: Colors.white,
                      filled: true),
                  onChanged: (val) {
                    setState(() {
                      _enteredMessage = val;
                    });
                  },
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: _enteredMessage.trim().isEmpty
                    ? Colors.black12
                    : Color.fromRGBO(215, 115, 114, 1.0),
              ),
              onPressed: _enteredMessage.trim().isEmpty ? null : _sendMessage,
            )
          ],
        ));
  }
}
