import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../model/notification.dart';
import 'auth/authController.dart';

class NotificationController extends GetxController {
  static final fstore = FirebaseFirestore.instance;
  static final auth = Get.put(AuthController());

  FlutterLocalNotificationsPlugin fln = new FlutterLocalNotificationsPlugin();
  AndroidNotificationChannel channel = AndroidNotificationChannel(
    '0', // id
    'وزارة التنمية والشؤون الإنسانية', // title
    'استقبال الاشعارات من وزارة التنمية.', // description
    importance: Importance.high,
  );
  RxInt notificationcount = 0.obs;
  var isblocked = false.obs;
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    // TODO: implement onReady
    await fln
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    super.onReady();
    onmessage();
    onmessageOpenApp();
    listner();
  }

  void listner() {
    getNotification().listen((event) {
      notificationcount.value = event.docs.length;
    });
  }

  void recivNotificationtoUser(Notifications notification) {
    var androidi = new AndroidInitializationSettings('@mipmap/logo');
    var iosi = new IOSInitializationSettings();
    var initsetting = new InitializationSettings(android: androidi, iOS: iosi);
    fln.initialize(initsetting, onSelectNotification: (txt) {
      return Future.value(true);
    });
    var android = AndroidNotificationDetails(notification.chanelid!,
        notification.chanelname!, notification.chanelDescription!,
        priority: Priority.high,
        importance: Importance.max,
        visibility: NotificationVisibility.public,
        playSound: true,
        fullScreenIntent: true,
        color: Colors.green,
        subText: notification.subtext,
        groupKey: auth.auth.currentUser?.uid,
        setAsGroupSummary: true,
        category: auth.auth.currentUser?.uid,
        channelShowBadge: true);
    var ios = IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: ios);
    fln.show(0, notification.title, notification.body, platform,
        payload: notification.payload);
  }

  Stream<QuerySnapshot> getNotification() {
    return FirebaseFirestore.instance
        .collection('/Notification')
        .doc(auth.auth.currentUser?.uid)
        .collection('/notification')
        .where('isread', isEqualTo: false)
        .snapshots();
  }

  Function(String? s)? onselect;
  Stream<QuerySnapshot> getAllNotification() {
    return FirebaseFirestore.instance
        .collection('/Notification')
        .doc(auth.auth.currentUser?.uid)
        .collection('/notification')
        .orderBy('time', descending: true)
        .snapshots();
  }

  void storeNotification(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    await FirebaseFirestore.instance
        .collection('/Notification')
        .doc(auth.auth.currentUser?.uid)
        .collection('/notification')
        .add({
      'content': notification?.body,
      'from': notification?.title,
      'time': DateTime.now(),
      'isread': false
    });
  }

  Future<void> readNotification(String id) async {
    await FirebaseFirestore.instance
        .collection('/Notification')
        .doc(auth.auth.currentUser?.uid)
        .collection('/notification')
        .doc(id)
        .update({'isread': true});
  }

  Future<dynamic>? onselectNotification(String? Pylood) {
    dynamic? st;
    return st;
  }

  void onmessage() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        fln.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,
                // TODO add a proper drawable resource to android, for now using
                //      one that already exists in example app.
                icon: '@mipmap/logo',
              ),
            ));
      }
      storeNotification(message);
    });
  }

  void onmessageOpenApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  }
}
