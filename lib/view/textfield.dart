import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final IconData? icon;
  final bool? enable;
  final bool? validate;
  final String? name;
  final Function(String txt)? onchange;
  void   Function(String? txt)? onsave;
  CustomTextField(
      {this.hint,
        this.textEditingController,
        this.keyboardType,
        this.icon,
        this.obscureText = false,
        this.enable = true,
        this.validate = true,
        this.name,
        this.onchange,this.onsave});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 0.w, right: 20.w),
      child: TextFormField(
          textAlign: TextAlign.center,
          onSaved: onsave,

          enabled: enable,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: textEditingController,
          keyboardType: keyboardType,
          obscureText: obscureText!,
          validator: (txt){
            if(txt!.isEmpty)
              return 'هذا الحقل مطلوب'.tr;
          },
          textInputAction: TextInputAction.next,
          cursorColor: Color.fromRGBO(215, 115, 114, 1.0),
          decoration: InputDecoration(
            focusColor: Color.fromRGBO(215, 115, 114, 1.0),
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                )),
            focusedBorder:UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Color.fromRGBO(215, 115, 114, 1.0),
                )),
            // prefixIcon: Icon(
            //   icon,
            //   color: Color.fromRGBO(215, 115, 114, 1.0),
            // ),
            labelText: hint,
            labelStyle: TextStyle(
              fontSize: 18.sp,
              color:Color.fromRGBO(215, 115, 114, 1.0),
            ),
          )),
    );
  }
}