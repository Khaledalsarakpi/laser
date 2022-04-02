
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  String _enteredMessage = '';
  _sendMessage() async {
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
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    minLines: 1,
                    maxLines: 5,
                    cursorColor: Colors.blue,
                    controller: _controller,
                    decoration: InputDecoration(
                        labelText: 'ارسال رسالة..',
                        labelStyle: TextStyle(fontSize: 16, color: Colors.blue),
                        fillColor: Colors.white,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        filled: true),
                    onChanged: (val) {
                      setState(() {
                        _enteredMessage = val;
                      });
                    },

                  )
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
                color: _enteredMessage.trim().isEmpty ? Colors.white : Colors.blue,
              ),
              onPressed: _enteredMessage.trim().isEmpty ? null : _sendMessage,
            )
          ],
        ));
  }
}
