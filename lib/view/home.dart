import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laser/constant/constant.dart';
import 'package:laser/controller/auth/authController.dart';
import 'package:laser/view/calender.dart';
import 'package:laser/view/profile.dart';
import 'package:laser/view/question.dart';
import 'package:laser/view/sign.dart';
import 'package:laser/view/table_session.dart';

import 'explorer.dart';
import 'howtouse.dart';
import 'information.dart';
import 'message/chatScreen.dart';
import 'notification.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return state_Home();
  }
}

class state_Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('الصفحة الرئسية'.tr),
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            var auth = Get.put(AuthController()).auth.currentUser;
            if (auth == null) {
              showtoast(
                  text: 'قم بانشاء حساب لتلقي الاشعارات'.tr,
                  bgcolor: Colors.red);
              Get.to(Sign());
            } else {
              Get.dialog(Notificationsview());
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    var auth = Get.put(AuthController()).auth.currentUser;
                    if (auth == null) {
                      Get.to(Sign());
                    } else {
                      Get.to(Profile());
                    }
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/1.png',
                        width: 150.w,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'ملف التعريف'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(Information());
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/2.png',
                        width: 150.w,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'معلومات وتوصيات'.tr,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(Using());
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/3.png',
                        width: 150.w,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'التسجيل وبداية الاستخدام'.tr,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    var storage = GetStorage();
                    var result = storage.read('date');
                    log(result);
                    if (result != null) {
                      Get.to(Calender());
                    } else {
                      showtoast(
                          text: 'قم بالدخول لجدول جلساتي لحساب مواعيدك القادمة',
                          bgcolor: Colors.red);
                    }
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/4.png',
                        width: 150.w,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الجدول'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(TableSession());
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/5.png',
                        width: 150.w,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'جدول جلساتي'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(Video());
                      },
                      child: Image.asset(
                        'images/6.png',
                        width: 150.w,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'الاستكشاف'.tr,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(QuestionView());
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Image.asset(
                        'images/7.png',
                        width: 150.w,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الأسئلة الشائعة'.tr,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'call',
            backgroundColor: Colors.white,
            onPressed: () {
              show_shakawa();
            },
            child: Icon(
              Icons.call,
              size: 40,
              color: Color.fromRGBO(215, 115, 114, 1.0),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          FloatingActionButton(
            heroTag: 'message',
            backgroundColor: Colors.white,
            onPressed: () {
              var auth = Get.put(AuthController()).auth.currentUser;
              if (auth == null) {
                showtoast(
                    text: 'قم بانشاء حساب لتسنطيع ارسال سؤال ',
                    bgcolor: Colors.red);
                Get.to(Sign());
              } else {
                Get.to(Chatscreen());
              }
            },
            child: Icon(
              Icons.message,
              size: 40,
              color: Color.fromRGBO(215, 115, 114, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
