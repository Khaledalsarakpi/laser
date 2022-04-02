import 'dart:developer';
import 'package:get/get.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:laser/view/product_view.dart';
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
        appBar: AppBar(
          title: Text('تسجيل الدخول'),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                  borderColor: Colors.red,
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
                    !puse_camera!
                        ? Text(
                            'ضع الباركود في منتصف الكاميرا',
                            style: TextStyle(color: Colors.white),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              controller?.resumeCamera().then((value) {
                                setState(() {
                                  puse_camera = false;
                                });
                              });
                            },
                            child: Text('إعادة الالتقاط')),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(Products());
                        },
                        child: Text('التالي'))
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
        result = scanData;
        puse_camera = true;
      });
      controller.pauseCamera();
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
