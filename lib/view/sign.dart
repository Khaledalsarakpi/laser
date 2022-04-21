import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:laser/controller/auth/authController.dart';
import 'package:laser/model/user.dart';
import 'textfield.dart';

class Sign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Sign_state();
  }
}

class Sign_state extends State<Sign> {
  var _fk = GlobalKey<FormState>();
  var auth = Get.put(AuthController());
  var user = Users();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                child: InkWell(
                  onTap: () {
                    auth.getimage();
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Obx(() => auth.image.value == ""
                          ? Text('اضغط لاختيار صورة'.tr,textAlign: TextAlign.center,style: TextStyle(fontSize: 12.sp),)
                          : auth.ConvertBase64ToImage(auth.image.value))),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Form(
                key: _fk,
                child: Column(
                  children: [
                    Text(
                      'إنشاء حساب'.tr,
                      style: TextStyle(
                          color: Color.fromRGBO(215, 115, 114, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp),
                    ),
                    CustomTextField(
                      // icon: Icons.person,
                      hint: 'الاسم'.tr,
                      onsave: (txt) {
                        user.username = txt;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField(
                      // icon: Icons.email,
                      hint: 'الكنية'.tr,
                      onsave: (txt) {
                        user.lastname = txt;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField(
                      // icon: Icons.person,
                      hint: 'الجنس'.tr,
                      onsave: (txt) {
                        user.gender = txt;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField(
                      // icon: Icons.email,
                      hint: 'العمر'.tr,
                      keyboardType: TextInputType.number,
                      onsave: (txt) {
                        user.age = txt;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField(
                      // icon: Icons.email,
                      hint: 'الإيميل'.tr,
                      keyboardType: TextInputType.emailAddress,
                      onsave: (txt) {
                        user.email = txt;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomTextField(
                      // icon: Icons.password,
                      hint: 'كلمة المرور'.tr,
                      obscureText: true,
                      onsave: (txt) {
                        user.password = txt;
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    ElevatedButton.icon(
                      onPressed: () async{
                        if (_fk.currentState!.validate()) {
                          _fk.currentState!.save();
                          user.image = auth.image.value;
                          await auth.signIn(user);
                        }
                      },
                      icon: Icon(Icons.add_circle),
                      label: Text(
                        'إنشاء حساب'.tr,
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 12,
                          padding: EdgeInsets.only(
                              top: 8.h, bottom: 8.h, left: 30.w, right: 30.w),
                          primary: Color.fromRGBO(215, 115, 114, 1.0)),
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
