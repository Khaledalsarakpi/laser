import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laser/view/register_barcode.dart';
import 'package:get/get.dart';
import 'package:laser/view/welcom_view.dart';

const colorizeColors = [
  Color.fromRGBO(215, 115, 114, 1.0),
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
  Color.fromRGBO(215, 115, 114, 1.0)
];

class Introview extends StatelessWidget {
  var lang = [
    Language(name: 'Arabic', code: 'ar'),
    Language(name: 'Germany', code: 'de')
  ];
  var txtcontroller = TextEditingController();
  String? code = 'ar';
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('images/int.gif'),
          SizedBox(
            height: 20.h,
          ),
          AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Because you need time for yourself',
                speed: Duration(seconds: 1),
                textStyle:
                    TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold),
                colors: colorizeColors,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          DropdownButtonFormField<Language>(
              dropdownColor: Color.fromRGBO(234, 204, 203, 1.0),
              value: lang.first,
              decoration: InputDecoration(
                focusColor: Color.fromRGBO(215, 115, 114, 1.0),
                enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                    )),
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(215, 115, 114, 1.0),
                    )),
                labelText: 'اختر اللغة:'.tr,
                labelStyle: TextStyle(
                  fontSize: 18.sp,
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                ),
              ),
              isExpanded: true,
              items: lang
                  .map((e) => DropdownMenuItem<Language>(
                      value: e, child: Center(child: Text(e.name.toString()))))
                  .toList(),
              onChanged: (txt) {
                code = txt!.code;
              })
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(232, 133, 133, 1),
          onPressed: () {
            //
          },
          child: IconButton(
              splashColor: Colors.green,
              color: Colors.white,
              splashRadius: 1,
              iconSize: 40,
              alignment: Alignment.center,
              onPressed: () {
                Get.updateLocale(Locale(code!));
                var storage = GetStorage();
                storage.write('code', code);
                var result = storage.read('barcode');
                if (result != null) {
                  Get.to(WelcomeView());
                } else {
                  Get.to(RegisterBarcode());
                }
              },
              icon: Icon(
                Icons.arrow_back,
                size: 40,
              ))),
    );
  }
}

class Language {
  String? name, code;

  Language({this.name, this.code});
}
