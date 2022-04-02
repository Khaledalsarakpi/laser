import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import '../../model/user.dart';
import 'authhandlerror.dart';
import 'enum.dart';

class AuthController extends GetxController {
  AuthResultStatus? _status;
  final auth = FirebaseAuth.instance;
  final user = GetStorage();
  final start = false.obs;
  RxBool isloading = false.obs;

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("close auth controller");
  }

  @override
  // TODO: implement onDelete
  get onDelete {
    print("delete auth controller");
    return super.onDelete;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onInit() async {
    super.onInit();
    await GetStorage.init();
  }
//region

  //endregion
  Future<AuthResultStatus?> signIn(Users user) async {
    isloading.value = true;
    try {
      Users email = await checkuser(user);
      String? token = await gettoken();
      final authResult = await auth.signInWithEmailAndPassword(
          email: email.email!, password: user.password!);
      if (authResult.user != null) {
        recordeSignin(authResult.user!.uid);
        recordeuserinfo(email);
        _status = AuthResultStatus.successful;
      } else
        _status = AuthResultStatus.undefined;
    } catch (e) {
      print(e);
      _status = AuthExceptionHandler.handleException(e);
    } finally {
      isloading.value = false;
    }
    return _status;
  }

  Future<AuthResultStatus?> signOut() async {
    try {
      final id = auth.currentUser!.uid;
      await auth.signOut();
      if (auth.currentUser == null) {
        String? token = await gettoken();
        _status = AuthResultStatus.successful;
      } else {
        _status = AuthResultStatus.undefined;
      }
    } on SocketException catch (e) {
    } catch (e) {
      _status = AuthExceptionHandler.handleException(e);
    }
    return _status;
  }

  Future<void> recordeSignin(String id) async {
    String? token = await gettoken();
    FirebaseFirestore.instance
        .collection('/users')
        .doc(id)
        .update({'lastseen': Timestamp.now(), 'token': token});
  }

  void recordelastseen() async {
    await FirebaseFirestore.instance
        .collection('/users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({'lastseen': Timestamp.now()});
  }

  Future<Users> checkuser(Users user) async {
    await FirebaseFirestore.instance
        .collection('/users')
        .where('username', isEqualTo: user.username)
        .get()
        .then((value) {
      if (value.docs.length == 0) {
        print("not found yes");
        throw new PlatformException(
          code: "notfound",
          message: "اسم المستخدم غير موجود",
        );
      }
      user = Users(
          username: value.docs[0]['username'],
          email: value.docs[0]['email'],
          password: value.docs[0]['password'],
          id: value.docs[0]['id'],
          token: value.docs[0]['token']);
    });
    return user;
  }

  Future<Users?> getUserinfo() async {
    Users? user;
    await FirebaseFirestore.instance
        .collection('/users')
        .doc(auth.currentUser!.uid)
        .get()
        .then((value) {
      user = Users(
          username: value['username'],
          email: value['email'],
          password: value['password'],
          id: value['id'],
          token: value['token']);
    });
    return user;
  }

  Future<Users?> getUser(String id) async {
    Users? user;
    await FirebaseFirestore.instance.collection('/users').get().then((value) {
      print(value.docs[0]['username']);
      user = Users(
          username: value.docs[0]['username'],
          email: value.docs[0]['email'],
          password: value.docs[0]['password'],
          id: value.docs[0]['id'],
          token: value.docs[0]['token'],
          isonlin: value.docs[0]['isonline'],
          lastseen: value.docs[0]['lastseen'],
          location: value.docs[0]['location']);
    }).onError((error, stackTrace) {
      print(error);
    });
    return user;
  }

  Future<String?> gettoken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  void recordeuserinfo(Users user) {
    this.user.write("username", user.username);
    this.user.write("email", user.email);
    this.user.write("id", user.id);
  }
}
