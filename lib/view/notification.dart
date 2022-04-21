import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant/constant.dart';
import '../controller/auth/authController.dart';
import '../controller/notification.dart';

class Notificationsview extends StatelessWidget {
  final auth = Get.put(AuthController());
  final notifi = Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(232, 133, 133, 1),
          title: Text('الاشعارات'.tr),
        ),
        body: StreamBuilder<QuerySnapshot>(
            stream: notifi.getAllNotification(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Center(child: CircularProgressIndicator());
              if (snapshot.hasData) {
                return ListView.builder(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.all(1.w),
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: Theme(
                                  data: Theme.of(context)
                                      .copyWith(accentColor: Colors.blue),
                                  child: ExpansionTile(
                                    backgroundColor: Colors.white,
                                    title: Text(
                                      snapshot.data?.docs[index]['from'],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      retdate(
                                          snapshot.data?.docs[index]['time']),
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 12.sp),
                                    ),
                                    leading: snapshot.data?.docs[index]
                                                ['isread'] ==
                                            false
                                        ? Icon(
                                            Icons.notifications_active_rounded,
                                            color: Colors.red,
                                          )
                                        : Icon(
                                            Icons.notifications,
                                            color: Color.fromRGBO(
                                                250, 193, 192, 1.0),
                                          ),
                                    collapsedBackgroundColor: Colors.black12,
                                    children: [
                                      Text(
                                        snapshot.data?.docs[index]['content'],
                                        overflow: TextOverflow.fade,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp),
                                      )
                                    ],
                                    onExpansionChanged: (bool val) async {
                                      log(snapshot.data!.docs[index].id
                                          .toString());
                                      notifi
                                          .readNotification(
                                              snapshot.data!.docs[index].id)
                                          .onError((error, stackTrace) =>
                                              {print(error)});
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Container(
                  child: Text('فارغ'),
                );
              }
            }));
  }
}
