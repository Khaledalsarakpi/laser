import 'package:flutter/material.dart';
import 'package:laser/view/register_barcode.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, filterQuality: FilterQuality.high),
            Text(' Because you need Time to your self'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
              splashColor: Colors.green,
              color: Colors.white,
              iconSize: 40,
              alignment: Alignment.center,
              onPressed: () {
                Get.to(RegisterBarcode());
              },
              icon: Icon(
                Icons.navigate_next_sharp,
                size: 40,
              ))),
    );
  }
}
