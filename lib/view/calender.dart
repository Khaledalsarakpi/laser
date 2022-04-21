import 'dart:developer';

import 'package:badges/badges.dart';
import 'package:bubble/bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../constant/constant.dart';

class Calender extends StatefulWidget {
  Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  late DateTime result;
  var storage = GetStorage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var resultd = storage.read('date');
    if (resultd != null) result = DateTime.parse(resultd);
    //log(result.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(232, 133, 133, 1),
            title: Text('مواعيد الجلسات'.tr),
            centerTitle: true,
          ),
          body: GridView.count(
            crossAxisCount: 3,
            children: [
              ...List.generate(102, (index) {
                if (index != 0) result = result.add(Duration(days: 7));
                return Card(
                    child: Badge(
                  showBadge: true,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  toAnimate: true,
                  badgeColor: Timestamp.fromDate(result)
                          .toDate()
                          .isBefore(Timestamp.now().toDate())
                      ? Colors.green
                      : Color.fromRGBO(215, 115, 114, 1.0),
                  position: BadgePosition.topStart(),
                  badgeContent: Text(
                    (index + 1).toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Center(
                    child: Text(retdatee(Timestamp.fromDate(result))),
                  ),
                ));
              })
            ],
          )),
    );
  }
}
