import 'package:cloud_firestore/cloud_firestore.dart';

class Proposal {
  String? title;
  String? idfrom;
  String? idto;
  String? content;
  String? username;
  Timestamp? time;
  Proposal({
    this.title,
    this.idfrom,
    this.idto,
    this.content,
    this.username,
    this.time,
  });
}