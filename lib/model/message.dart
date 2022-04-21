
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:laser/model/user.dart';

class Message {
  String ?title;
  Users ?idfrom;
  Users? idto;
  String? content;
  String ?username;
  Timestamp? time;
  Message({
    this.title,
    this.idfrom,
    this.idto,
    this.content,
    this.username,
    this.time,
  });
}
