import 'dart:developer';

import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
//import 'package:workmanager/workmanager.dart';
import 'package:get/get.dart';
import 'package:laser/view/home.dart';
import '../constant/constant.dart';
import '../controller/notification.dart';
import '../model/notification.dart';
import 'howtouse.dart';

class TableSession extends StatefulWidget {
  const TableSession({Key? key}) : super(key: key);

  @override
  State<TableSession> createState() => _TableSessionState();
}

class _TableSessionState extends State<TableSession> {
  Widget? _widget;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widget = zero();
  }

  var currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(234, 204, 203, 1.0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(232, 133, 133, 1),
          centerTitle: true,
          title: Text('جدول جلساتي'.tr),
        ),
        body: Center(child: _widget));
  }

  Widget zero() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/tst.png'),
        Text(
          'هنا يمكنك البدء بجلسات الليزر الخاص بك.. مرشدك الشخصي سوف يبدأ بالخطوات التالية'.tr,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {
              _widget = first();
            });
          },
          child: Icon(
            Icons.play_arrow,
            size: 40,
            color: Color.fromRGBO(215, 115, 114, 1.0),
          ),
        )
      ],
    );
  }

  Widget first() {
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
          title: Text(
            'هل قمت بقراءة دليل المستخدم بشكل جيد ؟'.tr,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _widget = second();
                    });
                  },
                  child: Text(
                    'نعم'.tr,
                    style: TextStyle(color: Colors.green),
                  )),
              TextButton(
                  onPressed: () {
                    Get.to(Using());
                  },
                  child: Text(
                    'لا'.tr,
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          )),
    );
  }

  Widget second() {
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
          title: Text(
            'هل اجريت اختبار التحسس لاختيار الشدة المناسبة?'.tr,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _widget = third();
                    });
                  },
                  child: Text(
                    'نعم'.tr,
                    style: TextStyle(color: Colors.green),
                  )),
              TextButton(
                  onPressed: () {
                    Get.to(Using());
                  },
                  child: Text(
                    'لا'.tr,
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          )),
    );
  }

  Widget third() {
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
          title: Text(
            'اختر اللون الأقرب للون شعر بشرتك'.tr,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...hairecolor.map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              _widget = fourth();
                            });
                          },
                          child: Image.asset(
                            e,
                            fit: BoxFit.fill,
                          ),
                        )),
                  ))
            ],
          )),
    );
  }

  Widget fourth() {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          'اختر اللون الأقرب لبشرتك'.tr,
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ...skinecolor.map((e) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                child: ExpansionTile(
                  iconColor: Color.fromRGBO(232, 133, 133, 1),
                  onExpansionChanged: (b) {},
                  title: Image.asset(
                    e.image!,
                    fit: BoxFit.fill,
                  ),
                  children: [
                    Text(e.desc!.tr),
                    IconButton(
                        onPressed: () {
                          if (!e.desc!.contains(
                              'لون البشرة هذا غير مناسب لاستخدام جهاز الليزر  Prinseska IPL'
                                  .tr))
                            setState(() {
                              _widget = fifth();
                            });
                        },
                        icon: Icon(Icons.arrow_back))
                  ],
                ),
              ),
            ))
      ],
    );
  }

  Widget fifth() {
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
          title: Text(
            'التحضير لجلسة الليزر'.tr,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'انتظري لمدة 24 ساعة مابين الحلاقة والبدء بجلسة الليزر تأكد ان بشرتك خالية تماما من الشعر، يمكنك إزالة الشعر باستخدام شفرة الحلاقة. في حال التحسس من استخدام الشفرة يمكن استخدام الشمع او اية آلة كهربائية لإزالة الشعر مع التأكد من أن بشرتك نظيفة وعدم وجود اي مواد عطرية او كريمات عليها عند تطبيق الليزر'
                    .tr,
                style: TextStyle(color: Colors.black),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _widget = sixth();
                    });
                  },
                  icon: Icon(Icons.keyboard_arrow_right))
            ],
          )),
    );
  }

  Widget sixth() {
    return Card(
        elevation: 12,
        margin:
            EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h, bottom: 15.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ارتدي النظارات المرفقة مع الجهاز وتأكدي إن شاشة الومضات نظيفة وغير مبللة /عدم تعريض الجهاز للماء أبدا/-قومي بتوصيل الجهاز بالقابس الكهربائي- ضعي الجهاز بشكل عمودي على البشرة بزاوية 90 درجة ولا تنسي اي جزء من تطبيق ومضات الليزر في المكان المراد علاجه.-لتحقيق نتائج أكثر فعالية قومي بتطبيق الليزر مرتين على كل مكان تريدين معالجته بالليزر.-في حال الشعور بالألم أو الانزعاج الشديد قومي بالتطبيق بمقدار ومضة واحدة فقط'
                  .tr,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.h,
            ),
            Image.asset(imgif),
            SizedBox(
              height: 10.h,
            ),
            TextButton.icon(
                onPressed: () {
                  Get.to(Using());
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                label: Text(
                  'يمكنك استخدام ميزة الوميض التلقائي لتسهيل جلسة الليزر الخاصة بك. في حال عدم معرفة الطريقة يرجى قراءة التعلميات من هنا'
                      .tr,
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    _widget = seventh();
                  });
                },
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                ))
          ],
        ));
  }

  Widget seventh() {
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
          title: Text(
            'مابعد الجلسة'.tr,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'استخدم منشفة مبللة لتخفيف الألم في حال وجودهيمكن استخدام كريم بانتينول لتخفيف اعراض تهيج البشرة البسيط ينصح باستخدام زبدة الشيا الخام بعد جلسة الليزر بساعتين لترطيب البشرة'
                      .tr),
              SizedBox(
                height: 10.h,
              ),
              Text('ما هو تقييمك لهذه الجلسة؟'.tr),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...List.generate(5, (index) {
                        switch (index) {
                          case 0:
                            return Icon(
                              Icons.sentiment_very_dissatisfied,
                              color: Colors.red,
                            );
                          case 1:
                            return Icon(
                              Icons.sentiment_dissatisfied,
                              color: Colors.redAccent,
                            );
                          case 2:
                            return Icon(
                              Icons.sentiment_neutral,
                              color: Colors.amber,
                            );
                          case 3:
                            return Icon(
                              Icons.sentiment_satisfied,
                              color: Colors.lightGreen,
                            );
                          default:
                            return Icon(
                              Icons.sentiment_very_satisfied,
                              color: Colors.green,
                            );
                        }
                      })
                    ],
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _widget = eighth();
                    });
                  },
                  icon: Icon(
                    Icons.save,
                    color: Colors.green,
                    size: 24,
                  )),
            ],
          )),
    );
  }

  Widget eighth() {
    return Card(
      elevation: 12,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ListTile(
          title: Text(
            'مابعد الجلسة'.tr,
            textAlign: TextAlign.center,
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '''بدءا من الآن سيتم حفظ بيانات وتواريخ جلسات الليزر الخاص بك وسيتم تذكيرك عن طريق التنبيهات بموعد الجلسة التالية
تذكير : مدة كورس الليزر الخاص لجهاز
 Prinseska IPL هي ثلاثة أشهر كل اسبوع جلسة. 
 وننصح لنتيجة أفضل في حال عدم وجود اي آثار تحسسية أن تقومي بالجلسات مرتين اسبوعيا. 
في حال عدم الحصول على نتيجة مرضية ،قومي باعادة الكورس كاملاً مع الالتزام بجميع المواعيد و التعليمات بشكل صحيح'''
                    .tr,
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () async {
                    Get.off(Home());
                    var storage = GetStorage();
                    var logd = DateTime.now().toString();
                    log(logd);
                    await storage.write('date', logd);
                    await AndroidAlarmManager.periodic(
                      const Duration(days: 7),
                      0,
                      () {
                        final notifi = NotificationController();
                        notifi.recivNotificationtoUser(Notifications(
                            title: 'جلسة الليزر'.tr,
                            body: 'حان موعد جلسة الليزر'.tr));
                      },
                      rescheduleOnReboot: true,
                      allowWhileIdle: true,
                      exact: true,
                      wakeup: true,
                    );
                  },
                  child: Text(
                    'إنهاء'.tr,
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ))
            ],
          )),
    );
  }
}