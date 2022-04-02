import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:laser/view/home.dart';
import 'package:laser/view/register_barcode.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            Image.asset(laser, filterQuality: FilterQuality.high),
            Text(
              ' اهلا وسهلا ومرحبا بك، قمنا بإنشاء هذا التطبيق ليكون دليلك الخاص في استخدام جهاز برنسيسكا IPL  .',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: TextStyle(),
            ),
            Text(
              '''ازالة الشعر والحد من نموه اصبح أمر اسهل بكثير عن قبل  بعد استخدامك جهاز ليزر برنسيسكا المنزلي  .
نتمنى لك الحصول على افضل النتائج عن طريق هذا التطبيق الذي سيكون دليلك الأمثل ومرافقك في كل خطوات الاستخدام.''',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: TextStyle(),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {

           log('message');
          },
          child: IconButton(
              splashColor: Colors.green,
              color: Colors.white,
              splashRadius: 1,
              iconSize: 40,
              alignment: Alignment.center,
              onPressed: () {
                Get.to(Home());
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                size: 40,
              ))),
    );
  }
}
