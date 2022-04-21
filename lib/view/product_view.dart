import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laser/view/home.dart';
import 'package:laser/view/welcom_view.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(232, 133, 133, 1),
        title: Text('المنتجات'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 70.h,
              child: Card(
                child: ListTile(
                  onTap: () {
                    Get.to(Home());
                  },
                  contentPadding: EdgeInsets.zero,
                  title: Center(
                      child: Text(
                    'Prinseska IPL',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  dense: false,
                  trailing: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      laser,
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
