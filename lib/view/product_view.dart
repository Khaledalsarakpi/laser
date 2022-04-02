import 'package:flutter/material.dart';
import 'package:laser/view/welcom_view.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المنتجات'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Prinseska IPL'),
                visualDensity: VisualDensity(vertical: 0, horizontal: 0),
                dense: false,
                leading: Image.asset(
                  laser,
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.high,
                ),
                trailing: IconButton(
                    onPressed: () {
                      Get.to(WelcomeView());
                    }, icon: Icon(Icons.navigate_next_outlined)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
