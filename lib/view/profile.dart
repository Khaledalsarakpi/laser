import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:laser/controller/auth/authController.dart';
import 'package:laser/model/user.dart';
import 'textfield.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Sign_state();
  }
}

class Sign_state extends State<Profile> {
  var _fk = GlobalKey<FormState>();
  var auth = Get.put(AuthController());
  var user = Users();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth.getUser();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('حسابي'.tr),
      ),
      body: Material(
        child: Obx(() {
          if (auth.isloading.value)
            return Center(child: CircularProgressIndicator());
          return SingleChildScrollView(
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
                            ? Text('اضغط لاختيار صورة'.tr,style: TextStyle(color: Colors.black),)
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
                      CustomTextField(
                        // icon: Icons.person,
                        enable: false,
                        textEditingController: auth.txtname,
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
                        enable: false,
                        textEditingController: auth.txtlastname,
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
                        enable: false,
                        textEditingController: auth.txtgender,
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
                        textEditingController: auth.txtage, enable: false,
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
                        textEditingController: auth.txtemail, enable: false,
                        keyboardType: TextInputType.emailAddress,
                        onsave: (txt) {
                          user.email = txt;
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
