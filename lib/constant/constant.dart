import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:laser/model/skin.dart';
import 'package:url_launcher/url_launcher.dart';

const String logo = 'images/logo.png';
const String we = 'images/we.png';
const String laser = 'images/laser.jpg';
const String imgif = 'images/imgif.gif';
const hairecolor = [
  'images/haire1.png',
  'images/haire2.png',
  'images/haire3.png',
  'images/haire4.png'
];
final skinecolor = [
  Skin(
      image: 'images/skin1.png',
      desc: 'ان شدة الومضات المناسبة لهذه البشرة هي من 3 الى 5'),
  Skin(
      image: 'images/skin2.png',
      desc: 'ان شدة الومضات المناسبة لهذه البشرة هي من3 الى 4'),
  Skin(
      image: 'images/skin3.png',
      desc: 'ان شدة الومضات المناسبة لهذه البشرة هي من3 الى 4'),
  Skin(
      image: 'images/skin4.png',
      desc: 'ان شدة الومضات المناسبة لهذه البشرة هي 3'),
  Skin(
      image: 'images/skin5.png',
      desc: 'لون البشرة هذا غير مناسب لاستخدام جهاز الليزر  Prinseska IPL'),
];
String retdate(Timestamp st) {
  return DateFormat('yyyy/MM/dd  hh:mm  a')
      .format(DateTime.fromMillisecondsSinceEpoch(st.millisecondsSinceEpoch))
      .toString();
}

String retdatee(Timestamp st) {
  return DateFormat('yyyy/MM/dd')
      .format(DateTime.fromMillisecondsSinceEpoch(st.millisecondsSinceEpoch))
      .toString();
}

void showtoast({String? text, Color? bgcolor}) {
  Fluttertoast.showToast(
      msg: text!,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: bgcolor,
      textColor: Colors.white,
      fontSize: 16.0.sp,
      webShowClose: true);
}

void show_shakawa() {
  Get.defaultDialog(
      title: '',
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Prinseska company',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Baden Württemberg',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Germany',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: (){
              String? encodeQueryParameters(Map<String, String> params) {
                return params.entries
                    .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                    .join('&');
              }
              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'info@prinseska.com',
                query: encodeQueryParameters(<String, String>{
                  'subject': ''
                }),
              );

              launch(emailLaunchUri.toString());
            },
            child: Text(
              'info@prinseska.com',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
          InkWell(
            onTap:_launchURL,
            child: Text(
              'www.prinseska.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap:_launchURL_P,
            child: Text(
              'سياسة الخصوصية'.tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ));
}
const String _url = 'https://www.prinseska.com';
const String _privacy_url='https://ipl-prinseska.blogspot.com/p/privacy-policy.html';
void _launchURL() async {
  if (!await launch(_url));
}

void _launchURL_P() async {
  if (!await launch(_privacy_url));
}