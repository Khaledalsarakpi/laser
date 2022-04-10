import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:laser/constant/constant.dart';
import '../../model/user.dart';
import 'authhandlerror.dart';
import 'enum.dart';

class AuthController extends GetxController {
  TextEditingController? txtname = TextEditingController(),
      txtlastname = TextEditingController(),
      txtgender = TextEditingController(),
      txtage = TextEditingController(),
      txtemail = TextEditingController();
  AuthResultStatus? _status;
  final auth = FirebaseAuth.instance;
  final user = GetStorage();
  final start = false.obs;
  RxBool isloading = false.obs;
  var image = "".obs;
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
  var isloaing = false.obs;
  //endregion
  Future<AuthResultStatus?> signIn(Users user) async {
    isloading.value = true;
    try {
      String? token = await gettoken();
      final authResult = await auth.createUserWithEmailAndPassword(
          email: user.email!, password: user.password!);
      user.id = authResult.user!.uid;
      user.token = token;
      if (authResult.user != null) {
        showtoast(text: 'تم تسجيل الحساب بنجاح'.tr, bgcolor: Colors.green);
        createAccount(user);
        Get.back();
        _status = AuthResultStatus.successful;
      } else
        _status = AuthResultStatus.undefined;
    } catch (e) {
      log(e.toString());
      showtoast(text: 'فشل انشاء الحساب'.tr, bgcolor: Colors.red);
      _status = AuthExceptionHandler.handleException(e);
    } finally {
      isloading.value = false;
    }
    return _status;
  }

  Future<AuthResultStatus?> createAccount(Users user) async {
    await FirebaseFirestore.instance
        .collection('/users')
        .doc(user.id)
        .set(user.toJson())
        .then((value) {
      _status = AuthResultStatus.successful;
    }).onError((error, stackTrace) {
      _status = AuthResultStatus.undefined;
    });

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

  getUser() async {
    var user = auth.currentUser;
    isloaing.value = true;
    FirebaseFirestore.instance
        .collection('/users')
        .doc(user!.uid)
        .get()
        .then((value) {
          txtname!.text = value['username'];
          txtage!.text = value['age'];
          txtemail!.text = value['email'];
          txtlastname!.text = value['lastname'];
          txtgender!.text = value['gender'];
          image.value = value['image'];
        })
        .whenComplete(() => isloading.value = false)
        .onError((error, stackTrace) {
          log(error.toString());
        });
  }

  Future<String?> gettoken() async {
    return await FirebaseMessaging.instance.getToken();
  }

  void recordeuserinfo(Users user) {
    this.user.write('user', user);
  }

  Future<String> ConvertImageToBase64(lst) async {
    var com = await testComporessList(lst);
    String base64Image = base64Encode(com);
    return base64Image;
  }

  Image ConvertBase64ToImage(String image) {
    var base64Image = base64Decode(image);
    var imag = Image.memory(base64Image,
        width: 150,
        height: 150,
        fit: BoxFit.fill,
        filterQuality: FilterQuality.high);

    return imag;
  }

  getimage() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    var img = await pickedFile!.readAsBytes();
    image.value = await ConvertImageToBase64(img);
    image.refresh();
  }

  Future<Uint8List> testComporessList(Uint8List list) async {
    var result = await FlutterImageCompress.compressWithList(
      list,
      minHeight: 1920,
      minWidth: 1080,
      quality: 96,
    );
    print(list.length);
    print(result.length);
    return result;
  }
}
