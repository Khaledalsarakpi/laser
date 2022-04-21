import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laser/view/intro_view.dart';
import 'package:get/get.dart';
import 'package:workmanager/workmanager.dart';
import 'controller/notification.dart';
import 'localization_services.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  final notifi = NotificationController();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  notifi.storeNotification(message);
}

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    if (task == "IPL") {
      FlutterLocalNotificationsPlugin flip =
          new FlutterLocalNotificationsPlugin();
      var android = new AndroidInitializationSettings('@mipmap/launcher_icon');
      var IOS = new IOSInitializationSettings();
      var settings = new InitializationSettings(android: android, iOS: IOS);
      flip.initialize(settings);
      _showNotificationWithDefaultSound(flip);
    }

    return Future.value(true);
  });
}

Future _showNotificationWithDefaultSound(flip) async {
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      '0', // id
      'Prinseska ', // title
      'Prinseska',
      importance: Importance.max, priority: Priority.high);
  var iOSPlatformChannelSpecifics = IOSNotificationDetails();

  // initialise channel platform for both Android and iOS device.
  var platformChannelSpecifics =   NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);
  await flip.show(
      0, 'جلسة الليزر'.tr, 'حان موعد جلسة الليزر'.tr, platformChannelSpecifics,
      payload: 'Default_Sound');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp();
  await GetStorage.init();
  Workmanager().initialize(
      callbackDispatcher, // The top level function, aka callbackDispatcher
      isInDebugMode:
          false // If enabled it will post a notification whenever the task is running. Handy for debugging tasks
      );
  var token = await FirebaseMessaging.instance.getToken();
  log(token!);
  final notifi = NotificationController();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((event) {
    notifi.storeNotification(event);
  });

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
