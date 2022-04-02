import 'package:cloud_firestore/cloud_firestore.dart';

class Notifications {
  String ?title,
      body,
      payload,
      toid,
      fromid,
      chanelid,
      chanelname,
      chanelDescription,
      subtext;
  Timestamp? createdat;
  bool? isread;
  Notifications(
      {this.title,
      this.body,
      this.fromid,
      this.toid,
      this.payload,
      this.createdat,
      this.isread,
      this.subtext,
      this.chanelid,
      this.chanelname,
      this.chanelDescription});
}
