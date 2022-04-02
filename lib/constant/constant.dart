import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

const String logo='images/logo.png';
const String laser='images/laser.jpg';
String retdate(Timestamp st)
{
  return DateFormat('yyyy/MM/dd  hh:mm  a')
      .format(DateTime.fromMillisecondsSinceEpoch(st.millisecondsSinceEpoch)).toString();
}