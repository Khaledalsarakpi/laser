import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:laser/view/message/chatScreen.dart';

import '../controller/auth/authController.dart';
import '../controller/notification.dart';
import 'package:get/get.dart';

import 'notification.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final auth = Get.put(AuthController());
  final notifi = Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الرئيسية'),
        centerTitle: true,
        actions: [
       /*   Obx(() => InkWell(
                onTap: () {
                  Get.dialog(Notificationsview());
                },
                child: Badge(
                  showBadge: (notifi.notificationcount.value != 0),
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Text(notifi.notificationcount.value.toString()),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.red,
                  ),
                ),
              ))*/
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {},
                  child: Text('ملف التعريف؟')),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {},
                  child: Text('معلومات وتوصيات ')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {},
                  child: Text('جدول جلساتي')),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {},
                  child: Text('الجدول')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {},
                  child: Text('الاسئلة الشعائعة؟')),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {},
                  child: Text('المستكشف')),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.black12)),
                    onPressed: () {
                      Get.to(Chatscreen());
                    },
                    child: Text('اسأل سؤال؟')),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.black12)),
                    onPressed: () {},
                    child: Text('اتصل بنا')),
              ]),
        ],
      )),
    );
  }
}
