import 'dart:developer';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laser/model/notification.dart';
import 'package:laser/view/intro_view.dart';
import 'package:get/get.dart';
import 'dart:io';
//import 'package:workmanager/workmanager.dart';

import 'controller/notification.dart';
import 'localization_services.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  final notifi = NotificationController();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  notifi.storeNotification(message);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp();
  await GetStorage.init();
  var token = await FirebaseMessaging.instance.getToken();
  log(token!);
  final notifi = NotificationController();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((event) {
    notifi.storeNotification(event);
  });
  await AndroidAlarmManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              defaultTransition: Transition.fadeIn,
              transitionDuration: Duration(milliseconds: 500),
              theme: ThemeData(
                backgroundColor: Color.fromRGBO(232, 133, 133, 1),
                textTheme: GoogleFonts.cairoTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              home: Introview(),
              locale: LocalizationService.locale,
              fallbackLocale: LocalizationService.fallbackLocale,
              translations: LocalizationService(),
          debugShowCheckedModeBanner: false,
            ));
  }
}
