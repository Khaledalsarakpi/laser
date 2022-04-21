import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laser/view/home.dart';
import 'package:laser/view/product_view.dart';
import 'package:laser/view/register_barcode.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset(we, filterQuality: FilterQuality.high),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
              child: Text(
                'اهلا وسهلا ومرحبا بك، قمنا بإنشاء هذا التطبيق ليكون دليلك الخاص في استخدام جهاز برنسيسكا IPL.'
                    .tr,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
              child: Text(
                'ازالة الشعر والحد من نموه اصبح أمر اسهل بكثير عن قبل  بعد استخدامك جهاز ليزر برنسيسكا المنزل.نتمنى لك الحصول على افضل النتائج عن طريق هذا التطبيق الذي سيكون دليلك الأمثل ومرافقك في كل خطوات الاستخدام.'
                    .tr,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Get.to(Home());
          },
          child: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(232, 133, 133, 1),
            size: 40,
          )),
    );
  }
}
