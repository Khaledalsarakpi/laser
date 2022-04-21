import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:laser/constant/constant.dart';
import 'package:laser/view/product_view.dart';
import 'package:laser/view/welcom_view.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class RegisterBarcode extends StatefulWidget {
  const RegisterBarcode({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewState();
}

class _QRViewState extends State<RegisterBarcode> {
  bool? flash_on = false;
  bool? puse_camera = false;
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(232, 133, 133, 1),
          title: Text('حسابي'.tr),
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                  borderColor: Color.fromRGBO(215, 115, 114, 1.0),
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 300),
              onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
            ),
            Positioned(
                bottom: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ضع الباركودالموجود على العلبة  في منتصف الكاميرا'.tr,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        controller?.flipCamera();
                      },
                      icon: Icon(
                        Icons.flip_camera_android_sharp,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {
                        controller?.toggleFlash().then((value) {
                          setState(() {
                            flash_on = !flash_on!;
                          });
                        });
                      },
                      icon: flash_on!
                          ? Icon(Icons.flash_on, color: Colors.yellow)
                          : Icon(Icons.flash_off, color: Colors.white)),
                ],
              ),
            )
          ],
        ));
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        var resultt = scanData.code;
        if (resultt == '1cf68a75-3091-5edc-8e13-f80d1400b028') {
          controller.pauseCamera();
          Fluttertoast.cancel();
          showtoast(text: 'تم تسجيل الدخول بنجاح'.tr, bgcolor: Colors.green);
          var storage = GetStorage();
          storage.write('barcode', '1');
          Get.offAll(WelcomeView());
        } else {
          Fluttertoast.cancel();
          showtoast(
              text: 'الباركود خاطئ اقرأ الباركود الموجود على العلبة',
              bgcolor: Colors.red);
        }
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
